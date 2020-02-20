import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_login_simple/pages/login_page.dart';

import 'controllers/auth_controller.dart';
import 'pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final controller = AuthController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: Observer(builder: (_) {
      //   if (controller.isLogged) {
      //     return MyHomePage(title: 'Flutter Demo Home Page');
      //   } else {
      //     return LoginPage();
      //   }
      // }),
      initialRoute: '/login',
      routes: {
        '/': (_) => MyHomePage(),
        '/login': (_) => LoginPage(),
      },
    );
  }
}
