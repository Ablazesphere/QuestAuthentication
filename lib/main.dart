import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quest_server/app/provider/app.provider.dart';
import 'package:quest_server/app/routes/app.routes.dart';

void main() {
  runApp(const Core());
}

class Core extends StatelessWidget {
  const Core({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: AppProviders.providers,
      child: Lava(),
    );
  }
}

class Lava extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.LoginRoute,
      routes: AppRoutes.routes,
      theme: ThemeData.dark(),
    );
  }
}
