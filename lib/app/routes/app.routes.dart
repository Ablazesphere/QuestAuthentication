import 'package:quest_server/meta/views/authentication/login.view.dart';
import 'package:quest_server/meta/views/authentication/signup.view.dart';

class AppRoutes {
  static const String LoginRoute = "/login";
  static const String SignupRoute = "/signup";

  static final routes = {
    LoginRoute: (context) => LoginView(),
    SignupRoute: (context) => SignupView()
  };
}
