import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text('Dominote Flutter', style: TextStyle(color: color.primary)),
        centerTitle: true,
        backgroundColor: color.primaryFixed,
      ),
    );
  }
}
