import 'package:dominote_flutter/ui/widgets/panels/main_panel.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dominote Flutter',
          style: TextStyle(color: color.onPrimary),
        ),
        centerTitle: true,
        backgroundColor: color.primaryFixedDim,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to Dominote Flutter',
                style: TextStyle(fontSize: 24, color: color.inversePrimary),
              ),
              SizedBox(height: 16),
              MainPanel(),
              // SizedBox(
              //   width: media.orientation == Orientation.portrait
              //       ? media.size.width * 0.6
              //       : media.size.width * 0.4,
              //   child: CustomAppBtn(label: 'Create Table', onPressed: () => {}),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
