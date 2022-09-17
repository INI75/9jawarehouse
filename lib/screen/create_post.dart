import 'package:flutter/material.dart';

class CreatePost extends StatelessWidget {
  static const routeName = '/createPost';
  CreatePost({Key? key}) : super(key: key);

  void _showAlert(BuildContext ctx) {
    // showDialog(context: ctx, builder: (_) =>AlertDialog(title: '') ,);
  }
  List _imageCount = [1, 2, 3, 4, 5];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('New Post'),
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 18),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Cancel',
                style: TextStyle(
                    color: Color.fromRGBO(255, 6, 6, 1), fontSize: 18),
              ))
        ],
      ),
      //////////
      ///
      body: Container(
          color: Colors.amberAccent,
          height: double.infinity,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Add Images',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'you can add up to 5 images',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 10),
              GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 3,
                  crossAxisSpacing: 3,
                ),
                shrinkWrap: true,
                children: [
                  GridTile(
                      child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11),
                            color: Colors.white),
                      ),
                      Container(
                        height: 30,
                        alignment: Alignment.center,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.close_outlined,
                          ),
                        ),
                      )
                    ],
                  ))
                ],
              )
            ],
          )),
    );
  }
}
