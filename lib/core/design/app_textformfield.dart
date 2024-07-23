import 'package:flutter/material.dart';

class AppInput extends StatefulWidget {
  final String? hint;
  final String label;
  final bool isPassword;
  final Container;
  final TextInputType? keyboardType;

  const AppInput({
    super.key,
    required this.label,
    this.isPassword = false,
    this.keyboardType,
    this.hint,
    this.Container,
  });

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(bottom: 16),
      child: SizedBox(
        child: TextFormField(
            onTapOutside: (event) {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            obscuringCharacter: "0",
            obscureText: isHidden && widget.isPassword,
            keyboardType: widget.keyboardType,
            decoration: InputDecoration(
                enabled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(color: Theme.of(context).colorScheme.primary)),
                labelText: widget.label,
                labelStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).colorScheme.primary,
                ),
                floatingLabelStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).colorScheme.primary,
                ),
                hintText: widget.hint,
                suffixIcon: widget.isPassword
                    ? IconButton(
                        icon: Icon(
                            isHidden ? Icons.visibility_off : Icons.visibility,color: Colors.black,),
                        onPressed: () {
                          isHidden = !isHidden;
                          setState(() {});
                        },
                      )
                    : null)),
      ),
    );
  }
}
