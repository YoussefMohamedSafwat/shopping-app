import 'package:flutter/material.dart';
import 'package:shopping/widget/background_container.dart';
import 'package:shopping/widget/login_card.dart';
import 'package:shopping/widget/signIn_form.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black),
      body: BackgroundContainer(child: LoginCard(child: SigninForm())),
    );
  }
}
