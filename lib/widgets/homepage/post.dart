import 'package:flutter/material.dart';
import 'package:warehouse/widgets/homepage/green_yellow_box.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  //final discription;
  // final bool greenTick;
  // final days
  // final logo detials
  // final likes, comments, bookmarks

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: 300,
      width: 400,
      // color: Colors.cyan,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: 42,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BoxColorBackGround(title: '', small: true),
                Container(
                    margin: const EdgeInsets.only(left: 7),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          child: Row(children: const [
                            Text(
                              'Venttly',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                         Text('@ bsbd')
                          ]),
                        ),
                        const Text('2 days // provider')
                      ],
                    )),
               const Expanded(child: SizedBox()),
                IconButton(onPressed: () {}, icon:const Icon(Icons.more_horiz))
              ]),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
              'data from provider xzsssssssssssssssssssssssssssssssssssaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaadsssssssssssssssssssssdddddddddddddddddddd'),
        )
      ]),
    );
  }
}
