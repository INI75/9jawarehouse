import 'package:flutter/material.dart';
import 'package:warehouse/widgets/homepage/green_yellow_box.dart';

import '../widgets/homepage/post.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.ctx}) : super(key: key);
  final BuildContext ctx;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  // void initState() {
  //   showModalBottomSheet(
  //       context: context,
  //       builder: (context) {
  //         return Container(height: 200, width: 400, color: Colors.red);
  //       });
  //   // TODO: implement initState
  //   super.initState();
  // }

  //// provider for boxes details  make map for
  final List<String> _list = [
    'Vently',
    'Vently',
    'Vently',
    'Vently',
    'Vently',
    'Vently',
    'Vently',
    'Vently',
    'Vently',
    'Vently',
  ];

  /// provider for post
  final List<Post> _postList = [
    Post(),
    Post(),
    Post(),
  ];

  @override
  Widget build(BuildContext context) {
    final mediaQ = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Container(
        width: mediaQ.width,
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 2),
              height: 110,
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: _list
                          .map((e) => BoxColorBackGround(
                                title: e,
                                small: false,
                              ))
                          .toList())),
            ),
            Column(
              children: _postList.map((e) => Post()).toList(),
            )
          ],
        ),
      ),
    );
  }
}
