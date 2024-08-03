import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  final TextEditingController controller;
  final bool isHiddenPassword;
  final VoidCallback togglePasswordVisibility;

  const PasswordField({
    super.key,
    required this.controller,
    required this.isHiddenPassword,
    required this.togglePasswordVisibility,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isHiddenPassword,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.lock),
        labelText: "Password",
        hintText: 'Password',
        suffixIcon: IconButton(
          onPressed: togglePasswordVisibility,
          icon: isHiddenPassword ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
