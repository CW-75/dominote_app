import 'package:flutter/material.dart';

class CustomAppBtn extends StatelessWidget {
  final String label;
  final void Function()? onPressed;
  const CustomAppBtn({super.key, required this.label, this.onPressed});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(10),
      child: Material(
        type: MaterialType.button,
        textStyle: TextStyle(color: color.inversePrimary),
        color: onPressed != null ? color.primary : color.primaryContainer,
        child: InkWell(
          onTap: onPressed,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Center(child: Text(label)),
          ),
        ),
      ),
    );
  }
}
