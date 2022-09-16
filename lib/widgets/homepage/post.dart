import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:warehouse/widgets/homepage/green_yellow_box.dart';

class Post extends StatefulWidget {
  Post({Key? key}) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  //final discription;
  bool bookmark = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),

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
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
              ]),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 8),
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: const ReadMoreText(
              'data from provider xsssssssssssssssssssddddddddddddddddddddjvfdsfkvmdmkvsfkvmfkmvdkmcmfvemakmdfvkmfvkamvlm dvmfvadfmvadvmavmafvmvfvfmvfvpmfvfmvdf',
              trimLines: 2,
              style: TextStyle(height: 1.5),
              textAlign: TextAlign.left,
              colorClickableText: Colors.green,
              trimMode: TrimMode.Line,
              trimExpandedText: ' show less',
              trimCollapsedText: 'show more'),
        ),
        Container(
          width: double.infinity,
          height: 400,
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(21)),
        ),
        Container(
          child: Row(children: [
            IconCount(iconData: Icons.favorite_border_outlined),
            IconCount(iconData: Icons.message_outlined),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.share_outlined),
            ),
            Expanded(child: Container()),
            IconButton(
                onPressed: () {
                  setState(() {
                    bookmark = !bookmark;
                  });
                },
                icon: Icon(bookmark ? Icons.bookmark : Icons.bookmark_outline))
          ]),
        )
      ]),
    );
  }
}

class IconCount extends StatefulWidget {
  const IconCount({Key? key, required this.iconData}) : super(key: key);
  final IconData iconData;
  @override
  // ignore: no_logic_in_create_state
  State<IconCount> createState() => _IconCountState(iconData);
}

class _IconCountState extends State<IconCount> {
  final IconData _iconData;
  int count = 0;
  _IconCountState(this._iconData);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 68,
      child: Row(children: [
        IconButton(
          icon: Icon(
            _iconData,
          ),
          onPressed: () {
            setState(() {
              count = count + 1;
            });
          },
        ),
        Text(count.toString())
      ]),
    );
  }
}
