import 'package:flutter/material.dart';

import 'locator.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      // color: Colors.amber,
      padding:
          const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: Row(children: [
        Locator(context1: context),
        Expanded(child: Container()),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add_circle_outline),
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined))
      ]),
    );
  }
}
