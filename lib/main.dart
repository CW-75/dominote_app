import 'package:dominote_flutter/ui/router/router.dart';
import 'package:dominote_flutter/ui/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Dominote Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeApp().getTheme('dark'),
      routerConfig: router,
    );
  }
}
