import 'package:flutter/material.dart';

class LoginCard extends StatelessWidget {
  const LoginCard({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 500),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 10,

          child: Padding(padding: const EdgeInsets.all(20.0), child: child),
        ),
      ),
    );
  }
}
