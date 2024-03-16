import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
class GenderButton extends StatelessWidget {
  const GenderButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ToggleSwitch(
      minWidth: 90.0,
      initialLabelIndex: 1,
      cornerRadius: 20.0,
      activeFgColor: Colors.white,
      inactiveBgColor: Colors.grey,
      inactiveFgColor: Colors.white,
      totalSwitches: 2,
      labels: ['М', 'Ж'],
      activeBgColors: [[Colors.blue],[Colors.purple]],
      onToggle: (index) {
        print('switched to: $index');
      },
    );
  }
}

