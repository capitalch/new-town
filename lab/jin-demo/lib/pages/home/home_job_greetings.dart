import 'package:flutter/material.dart';

class HomeJobGreetings extends StatelessWidget {
  const HomeJobGreetings({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
      child: Text(
        'Choose the next job you love!',
        style: Theme.of(context).textTheme.headline5!.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 22.0,
            ),
      ),
    );
  }
}
