import 'package:flutter/cupertino.dart';
import 'package:supabase_auth_ui/supabase_auth_ui.dart';

class DatabaseService {
  final user = Supabase.instance.client.auth.currentUser;

  Future<String?> fetchId() async {
    var response = await Supabase.instance.client
        .from("Users")
        .select("id")
        .eq("email", user!.email)
        .execute();
    return response.data![0]["id"];
  }

  Future<PostgrestResponse?> addInfo(
      {required String id,
      required String email,
      required String password,
      required String name,
      required String phone}) async {
    PostgrestResponse? response =
        await Supabase.instance.client.from("Users").insert(
      {
        "id": user!.id,
        "email": email,
        "password": password,
        "name": name,
        "phone": phone
      },
    );
  }
}
