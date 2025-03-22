import 'package:ecommerce_application/auth/login/login_footer.dart';
import 'package:ecommerce_application/auth/login/login_form.dart';
import 'package:ecommerce_application/auth/login/login_header.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [LoginHeader(), LoginForm(), LoginFooter()]),
        ),
      ),
    );
  }
}
