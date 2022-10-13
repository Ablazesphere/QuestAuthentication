import 'package:quest_server/app/credentials/supabase.credentials.dart';
import 'package:supabase/supabase.dart';

class AuthenticationService {
  Future<String?> signup(
      {required String email, required String password}) async {
    GotrueSessionResponse response =
        await SupabaseCredentials.supabaseClient.auth.signUp(email, password);
    if (response.error == null) {
      String? userEmail = response.data!.user!.email;
      print("Sign up Sucessfull : ${userEmail}");
    } else {
      print("Sign up error : ${response.error!.message}");
    }
  }

  Future<String?> login(
      {required String email, required String password}) async {
    GotrueSessionResponse response =
        await SupabaseCredentials.supabaseClient.auth.signIn(
            email: email,
            password: password,
            options: AuthOptions(redirectTo: SupabaseCredentials.APIURL));
    if (response.error == null) {
      String? userEmail = response.data!.user!.email;
      print("Login Sucessfull : ${userEmail}");
    } else {
      print("Login error : ${response.error!.message}");
    }
  }
}
