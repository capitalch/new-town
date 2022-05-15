import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';

class RoutePage4 extends StatelessWidget {
  const RoutePage4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Route page4'),
        ),
        body: MyChildWidget());
  }
}

class MyChildWidget extends StatelessWidget {
  const MyChildWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget ViewNow = InkWell(
        onTap: () {
          // print('Ink well');
        },
        child: Container(
          // button
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(6)),
            ),
            padding: EdgeInsets.only(
                left: 10, right: 5, top: 5, bottom: 5),
            child: Row(
              children: [
                Text(
                  'View Now',

                ),

                Icon(
                  Icons.east_outlined,
                  color: Colors.indigo.shade500,
                  size: 13,
                )
              ],
            )));
    return Container(
      height: 150,
      child: LayoutGrid(
      areas: '''
        header header button
        school school image
        teacher teacher image
        classes classes image
        joining joining image
        date lpa image
      ''',
      columnSizes: [auto, auto, 150.px],
      rowSizes: [1.fr, 1.fr, 1.fr, 1.fr, 1.fr, 1.fr],
      //   columnGap: 10,
      // rowGap: 10,
      children: [
        GridPlacement(child: Text('You have got a job offer'), columnStart: 0, columnSpan: 1,),
        GridPlacement(child: ViewNow, columnStart: 1,)
        // Text('You have got a job offer').inGridArea('header'),
        // Text('button').inGridArea('button'),
        // Text('My primary school').inGridArea('school'),
        // Text('My image').inGridArea('image'),
        // Text('My teacher').inGridArea('teacher'),
        // Text('My classes').inGridArea('classes'),
        // Text('Joining').inGridArea('joining'),
        // Text('My date').inGridArea('date'),
        // Text('my date').inGridArea('date'),
        // Text('3.0 LPA').inGridArea('lpa'),
      ],
      ),
    );
    // return Row(
    //   children: [
    //     Text('Small text'),
    //     Expanded(
    //         child: Text('Bigger text hjhhhhhhhhhhhhhhhhhhhh'),
    //         flex: 1,
    //         // fit: FlexFit.tight
    //     ),
    //     Flexible(
    //         child: Text(
    //       'Still bigger text sssssss mmmm aaaaaaaaaaaaa',
    //       // style: TextStyle(overflow: TextOverflow.ellipsis),
    //     ))
    //   ],
    // );
  }
}
