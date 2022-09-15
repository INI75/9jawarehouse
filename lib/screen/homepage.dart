import 'package:flutter/material.dart';
import 'package:warehouse/widgets/homepage/green_yellow_box.dart';

import '../widgets/homepage/post.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override


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
