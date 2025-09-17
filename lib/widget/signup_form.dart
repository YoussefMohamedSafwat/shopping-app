import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shopping/models/dialog.dart';
import 'package:shopping/models/validation.dart';

import 'package:shopping/widget/animatedbutton.dart';

import 'package:shopping/widget/customformfield.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
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
            tr("Create Account"),
            style: TextStyle(
              fontSize: 25,
              color: Colors.redAccent,
              fontWeight: FontWeight.bold,
            ),
          ),

          Customformfield(
            hintText: tr("First name-hint"),
            label: tr("First name"),
            validator: (value) => Validation.validateName(value),
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
          Customformfield(
            hintText: tr("Password-confirm-hint"),
            label: tr("Password-confirm"),
            validator: (value) => Validation.confirmPassword(value),
          ),

          Animatedbutton(
            label: tr("Submit"),
            backgroundColor: Colors.redAccent,
            labelColor: Colors.white,
            initialWidth: 400,
            onPressed: () {
              if (_formkey.currentState!.validate()) {
                Dialogs.authDialog(context, tr("Sucess-subtext-signup"));
              }
            },
          ),
        ],
      ),
    );
  }
}
