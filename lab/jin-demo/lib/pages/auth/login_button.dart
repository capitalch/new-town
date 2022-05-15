import 'package:flutter/material.dart';
import 'package:jie_demo/pages/auth/auth_service.dart';

class LoginButton extends StatelessWidget {
  final AuthService authService;
  final String buttonTitle;
  final Color buttonColor;

  LoginButton({
    Key? key,
    required this.authService,
    required this.buttonColor,
    required this.buttonTitle,
  }) : super(key: key);

  late final BuildContext _context;

  @override
  Widget build(BuildContext context) {
    _context = context;

    return ElevatedButton(
      onPressed: _onPressed,
      child: Text(buttonTitle),
      style: ElevatedButton.styleFrom(primary: buttonColor),
    );
  }

  Future<void> _onPressed() async {
    bool loginSuccess = await authService.login();
    await _showSnackBarMsg(loginSuccess);
  }

  Future<void> _showSnackBarMsg(bool loginSuccess) async {
    ScaffoldMessenger.of(_context).showSnackBar(SnackBar(
      content: Text(loginSuccess ? 'Login Success' : 'Login Failed'),
      backgroundColor: loginSuccess ? Colors.green : Colors.red,
    ));
  }
}
