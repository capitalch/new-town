import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter2/counter_notifier.dart';
import 'package:flutter2/route_4.dart';
import 'package:provider/provider.dart';
import 'route_2.dart';
import 'global_store.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    store['myName'] = 'Sushant';
    return ChangeNotifierProvider(
        create: (_) => CounterNotifier(),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const MyHomePage(),
          // initialRoute: '/',
          routes: {
            'route1': (context) => RoutePage1(),
            'route2': (context) => RoutePage2(),
            'route3': (context) => RoutePage3(),
            'route4': (context) => RoutePage4(),
          },
        ));
  }
}

class RoutePage3 extends StatefulWidget {
  const RoutePage3({Key? key}) : super(key: key);

  @override
  _RoutePage3State createState() => _RoutePage3State();
}

class _RoutePage3State extends State<RoutePage3> {
  int _counter = 0;
  List<ListTile> _listOfTiles = [];

  List<ListTile> getListTile(List<dynamic> data) {
    var tempData = data.map((item) {
      var tile = ListTile(
        title: Text(item['name'] ?? 'NA'),
      );
      return (tile);
    });
    var a = tempData.toList();
    return (a);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Route page3'),
        actions: [
          ElevatedButton(
              onPressed: () async {
                var dio = Dio();
                // _listOfTiles.add(ListTile(
                //   title: Text('Tile x'),
                // ));
                Response response = await dio
                    .get('https://chisel.cloudjiffy.net/contacts/short');
                // print(response.data);
                List<dynamic> data = response.data;
                _listOfTiles = getListTile(data);
                // _listOfTiles.add(ListTile(
                //   title: Text('abc'),
                // ));
                setState(() {});
              },
              child: Text('Dio fill')),
          ElevatedButton(
              onPressed: () {
                _counter = _counter + 1;
                setState(() {});
              },
              child: Text('Counter'))
        ],
      ),
      body: ListView.builder(
        itemCount: _listOfTiles.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              child: Center(
            child: _listOfTiles[index],
          ));
        },
        padding: EdgeInsets.all(16),
      ),
    );
  }

  void getDataFromServer() async {}
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My home page'),
        actions: [
          ElevatedButton(
            child: Text('Route 1'),
            onPressed: () {
              Navigator.pushNamed(context, 'route1');
            },
          ),
          ElevatedButton(
            child: Text('Route 4'),
            onPressed: () {
              Navigator.pushNamed(context, 'route4');
            },
          ),
        ],
      ),
      body: Center(
        child: Text('Home page'),
      ),
    );
  }
}

class RoutePage1 extends StatelessWidget {
  const RoutePage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Route page1'),
          actions: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'route2');
                },
                child: Text('Route2')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'route3');
                },
                child: Text('Route 3'))
          ],
        ),
        body: CarouselSlider(
          options: CarouselOptions(height: 400.0),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(color: Colors.amber),
                    child: Text(
                      'text $i',
                      style: TextStyle(fontSize: 16.0),
                    ));
              },
            );
          }).toList(),
        ));
  }
}
