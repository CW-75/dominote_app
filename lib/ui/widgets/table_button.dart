import 'package:flutter/material.dart';

class CreateTableButton extends StatelessWidget {
  final void Function()? onPressed;
  const CreateTableButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(16),
      child: Material(
        color: color.primary,
        child: InkWell(
          onTap: onPressed,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Hola button', style: TextStyle(color: color.surface)),
          ),
        ),
      ),
    );
  }
}
