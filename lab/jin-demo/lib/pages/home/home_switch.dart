import 'package:flutter/material.dart';

class HomeSwitch extends StatelessWidget {
  const HomeSwitch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Switch(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            activeColor: Colors.indigo,
            value: true,
            onChanged: (val) {}),
        Text(
          'Actively Searching',
          style: TextStyle(
            color: Colors.indigo.shade400,
          ),
        ),
      ],
    );
  }
}
