import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Icon(Icons.menu),
          ),
          Expanded(
            flex: 1,
            child: CircleAvatar(
              radius: 14.0,
              backgroundColor: Colors.grey,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Text('Hello, Manas'),
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 10.0),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0),
                    child: Icon(
                      Icons.notifications,
                      color: Colors.deepOrange.shade300,
                      size: 28,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: CircleAvatar(
                      radius: 8,
                      backgroundColor: Colors.red,
                      child: Text(
                        '10',
                        style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
