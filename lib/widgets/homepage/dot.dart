import 'package:flutter/material.dart';

class DotItem extends StatelessWidget {
  const DotItem({Key? key, required this.item}) : super(key: key);
  final String item;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Container(
          height: 7,
          width: 7,
          margin: const EdgeInsets.only(
            right: 8,
            left: 15,
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3), color: Colors.black),
        ),
        Text(item)
      ]),
    );
  }
}
