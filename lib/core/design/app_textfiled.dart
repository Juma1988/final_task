import 'package:flutter/material.dart';

class AppTextField extends StatefulWidget {
  final String? hint;
  final String label;
  final bool isPassword;
  final Container;
  final TextInputType? keyboardType;
  final int maxLines;

  const AppTextField({
    super.key,
    required this.label,
    this.isPassword = false,
    this.keyboardType,
    this.hint,
    this.Container,
    this.maxLines = 1,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      keyboardType: widget.keyboardType,
      maxLines: widget.maxLines,
      obscuringCharacter: "*",
      obscureText: isHidden && widget.isPassword,
      style: TextStyle(color: Theme.of(context).colorScheme.onSecondary),
      decoration: InputDecoration(
        hintText: widget.hint,
        hintStyle: TextStyle(color: Theme.of(context).colorScheme.onSecondary),
        labelText: widget.label,
        labelStyle: TextStyle(
          color: Theme.of(context).colorScheme.onPrimary,
        ),
        filled: true,
        fillColor: Theme.of(context).colorScheme.primary.withOpacity(0.05),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
              color: Theme.of(context).colorScheme.outline, width: 3),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
              color: Theme.of(context).colorScheme.primary, width: 2),
        ),
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(isHidden ? Icons.visibility_off : Icons.visibility),
                onPressed: () {
                  isHidden = !isHidden;
                  setState(() {});
                },
              )
            : null,
        enabled: true,
      ),
      controller: widget.Container,
    );
  }
}
