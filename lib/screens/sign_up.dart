import 'package:flutter/material.dart';
import 'package:shopping/widget/background_container.dart';
import 'package:shopping/widget/login_card.dart';
import 'package:shopping/widget/signup_form.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black),
      body: BackgroundContainer(child: LoginCard(child: SignupForm())),
    );
  }
}
