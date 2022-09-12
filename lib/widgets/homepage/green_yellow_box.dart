import 'package:flutter/material.dart';

class BoxColorBackGround extends StatelessWidget {
  const BoxColorBackGround({
    Key? key,
    required this.title,
    required this.small,
    // required this.displayPicture,
  }) : super(key: key);

  final String title;
  final bool small;
//  final Image displayPicture;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.green,
      height: small ? null : 130,
      width: small ? null : 100,
      child: Column(children: [
        Stack(alignment: Alignment.center, children: [
          Container(
            height: small ? 40 : 80,
            width: small ? 40 : 80,
            decoration: BoxDecoration(
              borderRadius:
                  small ? BorderRadius.circular(9) : BorderRadius.circular(25),
              gradient: const LinearGradient(colors: [
                Color.fromRGBO(28, 190, 142, 1),
                Color.fromRGBO(255, 203, 0, 1)
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
          ),
          Container(
            height: small ? 38 : 76,
            width: small ? 38 : 76,
            decoration: BoxDecoration(
              borderRadius:
                  small ? BorderRadius.circular(9) : BorderRadius.circular(25),
              color: Colors.white,
            ),
          )
        ]),
        small ? Container() : const SizedBox(height: 7),
        small
            ? Container()
            : Text(title,
                style:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.w300)),
      ]),
    );
  }
}
