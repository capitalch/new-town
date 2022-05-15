import 'package:flutter/material.dart';
import 'package:flutter2/counter_notifier.dart';
import 'package:provider/provider.dart';

// import 'ibuki.dart';
import 'global_store.dart';

class RoutePage2 extends StatelessWidget {
  RoutePage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // return Consumer<CounterNotifier>(builder: (context, counter, _) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Route page2'),
          actions: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back')),
            ElevatedButton(
                onPressed: () {
                  Provider.of<CounterNotifier>(context, listen: false).incr();
                },
                child: Text('Incr'))
          ],
        ),
        body: Center(
          child: Text('${Provider.of<CounterNotifier>(context, listen: true).counter}'),
        ),
      );
    // });
  }
}
