import 'package:dominote_flutter/ui/widgets/table_button.dart';
import 'package:flutter/material.dart';

class MainPanel extends StatelessWidget {
  const MainPanel({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final containerWidth = media.orientation == Orientation.portrait
        ? media.size.width * 0.9
        : media.size.width * 0.6;
    final containerHeight = media.orientation == Orientation.portrait
        ? media.size.height * 0.5
        : media.size.height * 0.6;
    return Container(
      width: containerWidth,
      height: containerHeight,
      // color: Theme.of(context).colorScheme.primaryContainer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Theme.of(context).colorScheme.secondaryContainer,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: containerHeight * 0.04,
        children: [
          SizedBox(
            width: containerWidth * 0.9,
            child: CustomAppBtn(label: 'Create Table', onPressed: () => {}),
          ),
          SizedBox(
            width: containerWidth * 0.9,
            child: CustomAppBtn(label: 'Select Table', onPressed: null),
          ),
        ],
      ),
    );
  }
}
