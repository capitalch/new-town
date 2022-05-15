import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/services.dart';
import 'utils.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My first material app',
      home: Scaffold(
          appBar: AppBar(
            title: Text(myFunc1()),
          ),
          body:const Center(
            child: Text('xxx'),
          )),
    );
  }
}

class Randomize extends StatefulWidget {
  const Randomize({Key? key}) : super(key: key);

  @override
  _RandomizeState createState() => _RandomizeState();
}

class _RandomizeState extends State<Randomize> {

  @override
  Widget build(BuildContext context) {
    var settings;
    (() async {
      settings = await rootBundle.loadString('assets/settings.json');
      print(settings);
      // print('test')
    })();
    List<WordPair> wordList = <WordPair>[];
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i >= wordList.length) {
          wordList.addAll(getTenWordPairs());
        }
        return (_buildRow(wordList[i]));
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    return (ListTile(
      title: Text(
        pair.asPascalCase,
        style: TextStyle(fontSize: 18),
      ),
      // focusColor: Colors.red,
      // selectedTileColor: Colors.green,
      onTap: () {},
      // selected: true,
    ));
  }

  List<WordPair> getTenWordPairs() {
    List<WordPair> items = [];
    for (var i = 0; i < 10; i++) {
      items.add(WordPair.random());
    }
    return (items);
  }
}

// final String wordPair = WordPair.random().asPascalCase;
// List<Widget> getWordPairs() {
//   List<Widget> items = [];
//   for (var i = 0; i < 10; i++) {
//     items.add(Text(
//       WordPair.random().asSnakeCase,
//       textAlign: TextAlign.center,
//       style: TextStyle(color: Colors.red, fontSize: 18.0, height: 3),
//     ));
//   }
//   return (items);
// }
// var settings =
//     await DefaultAssetBundle.of(context).loadString('assets/settings.json');
// print(settings);
