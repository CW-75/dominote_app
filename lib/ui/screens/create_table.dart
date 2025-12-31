import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreateTableScreen extends StatelessWidget {
  const CreateTableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Table'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Icon(Icons.arrow_back),
        ),
      ),

      body: Placeholder(),
    );
  }
}
