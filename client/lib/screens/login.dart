import 'package:flutter/material.dart';
import 'package:client/ui/ui.dart';
import 'package:client/controllers/auth_controller.dart';
import 'package:client/screens/warehouses.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final account = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _loginFormKey = GlobalKey<FormState>();
    final _left = TextAlign.left;

    return Container(
        decoration: LoginBackground(),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(50, 80, 50, 80),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(flex: 1),
                    specialTitle('FICERP'),
                    Spacer(flex: 2),
                    Form(
                        key: _loginFormKey,
                        child: Column(
                          children: [
                            specialTextFormField(
                                'Empresa', _left, validateUserEmail, account),
                            specialTextFormField(
                                'Email', _left, validateUserEmail, email),
                            specialPasswordFormField('Password', _left,
                                validateUserPassword, password),
                            SizedBox(
                              height: 30,
                            ),
                            specialButton(
                              'ENTRAR',
                              () async {
                                Navigator.pushReplacement(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) => Warehouses()),
                                );
                                //await login(context, account.text, email.text, password.text);
                              },
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 15,
                    ),
                  ]),
            ),
          ),
        ));
  }
}
