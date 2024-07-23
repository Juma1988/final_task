import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final VoidCallback? onPress;
  final String label;
  final bool isOutlined;

  const AppButton({
    Key? key,
    required this.label,
    this.isOutlined = false,
    this.onPress = null,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        side: BorderSide(color: Theme.of(context).colorScheme.primary),
        backgroundColor: isOutlined
            ? Colors.transparent
            : Theme.of(context).colorScheme.primary,
        foregroundColor: isOutlined
            ? Theme.of(context).colorScheme.primary
            : Theme.of(context).colorScheme.onPrimary,
      ),
      onPressed: onPress ?? () {},
      child: Text(
        label,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
