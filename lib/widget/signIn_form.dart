import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shopping/models/dialog.dart';
import 'package:shopping/models/validation.dart';
import 'package:shopping/widget/animatedbutton.dart';
import 'package:shopping/widget/customformfield.dart';

class SigninForm extends StatefulWidget {
  const SigninForm({super.key});

  @override
  State<SigninForm> createState() => _SigninFormState();
}

class _SigninFormState extends State<SigninForm> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        spacing: 40,

        children: [
          Text(
            "Welcome back",
            style: TextStyle(fontSize: 30, color: Colors.redAccent),
          ),
          Customformfield(
            hintText: tr("Email-hint"),
            label: tr("Email"),
            validator: (value) => Validation.validateEmail(value),
          ),
          Customformfield(
            hintText: tr("Password-hint"),
            label: tr("Password"),
            validator: (value) => Validation.validatePassword(value),
          ),
          Animatedbutton(
            label: tr("signIn"),
            backgroundColor: Colors.redAccent,
            labelColor: Colors.white,
            initialWidth: 400,
            onPressed: () {
              if (_formkey.currentState!.validate()) {
                Dialogs.authDialog(context, tr("Sucess-subtext-login"));
              }
            },
          ),
        ],
      ),
    );
  }
}
