import 'package:flutter/material.dart';

class AppBotton extends StatelessWidget {
  const AppBotton({
    Key? key,
    required this.tap,
    required this.title,
  }) : super(key: key);
  final VoidCallback tap;
  final String title;

  static const style = TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        alignment: Alignment.center,
        width: 345,
        height: 50,
        decoration: BoxDecoration(
            color: const Color.fromRGBO(17, 17, 17, 1),
            borderRadius: BorderRadius.circular(15)),
        child: Text(
          title,
          style: style,
        ),
      ),
    );
  }
}
