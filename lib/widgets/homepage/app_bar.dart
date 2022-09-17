import 'package:flutter/material.dart';
import 'package:warehouse/screen/create_post.dart';

import 'locator.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      // color: Colors.amber,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: Row(children: [
        Locator(context1: context),
        Expanded(child: Container()),
        IconButton(
          onPressed: () => Navigator.pushNamed(context, CreatePost.routeName),
          icon: const Icon(Icons.add_circle_outline),
        ),
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.notifications_outlined))
      ]),
    );
  }
}
