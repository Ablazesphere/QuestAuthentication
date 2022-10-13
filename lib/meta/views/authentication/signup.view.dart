import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:quest_server/app/routes/app.routes.dart';
import 'package:quest_server/core/notifier/authentication.notifier.dart';

class SignupView extends StatefulWidget {
  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  Widget build(BuildContext context) {
    final AuthenticationNotifier authenticationNotifier =
        Provider.of<AuthenticationNotifier>(context, listen: false);

    return Scaffold(
      appBar: AppBar(title: Text("Sign Up")),
      body: Container(
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  // filled: true,
                  border: const OutlineInputBorder(),
                  icon: const Icon(Icons.email_outlined),
                  hintText: "Enter mail",
                  labelText: "Email",
                ),
                controller: emailController,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  // filled: true,
                  border: const OutlineInputBorder(),
                  icon: const Icon(Icons.password),
                  hintText: "Enter Password",
                  labelText: "Password",
                ),
                controller: passwordController,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () async {
                  String email = emailController.text;
                  String password = passwordController.text;

                  await authenticationNotifier.signup(
                      email: email, password: password);
                },
                child: Text("Sign Up")),
            SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoutes.LoginRoute);
                },
                child: Text("Already have an account? Login"))
          ],
        ),
      ),
    );
  }
}
