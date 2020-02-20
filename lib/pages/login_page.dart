import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_login_simple/controllers/auth_controller.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = AuthController();
  TextEditingController inputLogin = TextEditingController();
  TextEditingController inputSenha = TextEditingController();

  _LoginPageState() {
    if (controller.isLogged) {
      Navigator.of(context)
          .pushNamedAndRemoveUntil('/', ModalRoute.withName('/login'));
    }
  }

  _textField(
      {String labelText, onChanged, TextEditingController controllerInput}) {
    return TextField(
      onChanged: onChanged,
      controller: controllerInput,
      decoration: InputDecoration(
        hintText: labelText,
      ),
    );
  }

  _sigin() {
    Navigator.of(context)
        .pushNamedAndRemoveUntil('/', ModalRoute.withName('/login'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Observer(builder: (_) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('${controller.user.login}'),
                _textField(
                    labelText: 'Login', onChanged: controller.user.setLogin),
                SizedBox(
                  height: 10,
                ),
                _textField(labelText: 'Senha', controllerInput: inputSenha),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Observer(
                    builder: (_) {
                      return RaisedButton(
                          child: Text('Entrar'),
                          onPressed: controller.isLogged ? _sigin : null);
                    },
                  ),
                ),
              ],
            );
          })),
    );
  }
}
