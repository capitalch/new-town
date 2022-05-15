import 'package:flutter/material.dart';
import 'package:jie_demo/pages/auth/auth_service.dart';
import 'package:jie_demo/pages/auth/login_button.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          Text(
            '----- Login Using ----',
            textAlign: TextAlign.center,
          ),
          Divider(),
          LoginButton(
            authService: PhoneAuth(phoneNo: ''),
            buttonColor: Colors.green,
            buttonTitle: 'Phone',
          ),
          LoginButton(
            authService: GmailAuth(),
            buttonColor: Colors.red,
            buttonTitle: 'Gmail',
          ),
          LoginButton(
            authService: FacebookAuth(),
            buttonColor: Colors.indigo,
            buttonTitle: 'Facebook',
          ),
          LoginButton(
            authService: AppleAuth(),
            buttonColor: Colors.black54,
            buttonTitle: 'Apple',
          ),
          // LoginButton(
          //   authService: TwitterAuth(),
          //   buttonColor: Colors.blue,
          //   buttonTitle: 'Twitter',
          // ),
        ],
      ),
    );
  }
}
