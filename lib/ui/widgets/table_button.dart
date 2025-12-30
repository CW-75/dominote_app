import 'package:flutter/material.dart';

class CustomAppBtn extends StatelessWidget {
  final String label;
  final void Function()? onPressed;
  const CustomAppBtn({super.key, required this.label, this.onPressed});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(20),
      child: Material(
        type: MaterialType.button,
        elevation: 2,
        shadowColor: color.shadow,
        textStyle: TextStyle(color: color.inversePrimary),
        color: onPressed != null ? color.primary : color.outline,
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
