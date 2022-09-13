import 'dart:async';

import 'package:flutter/material.dart';
import 'package:warehouse/screen/homepage.dart';
import 'package:warehouse/widgets/homepage/locator.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  final _appgreen = const Color.fromRGBO(28, 190, 142, 1);
  // var didChange = true;

  // @override
  // void didChangeDependencies() {
  //   if (didChange) {
  //     showModalBottomSheet(
  //         context: context,
  //         builder: (context) => Container(
  //               height: 200,
  //               width: 300,
  //               color: Colors.amber,
  //             ));
  //     didChange = false;
  //   }
  //   // TODO: implement didChangeDependencies
  //   super.didChangeDependencies();
  // }

  @override
  void initState() {
    Timer(
        Duration(seconds: 1),
        (() => showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                height: 400,
                color: Colors.white,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 220, 217, 217),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            margin: const EdgeInsets.only(top: 10, bottom: 20),
                            height: 5,
                            width: 35,
                          )),
                      Container(
                        margin: const EdgeInsets.only(left: 18),
                        child: const Text(
                          'Set up Business Profile',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 18, vertical: 10),
                        child: const Text(
                            'To access business tools we need to provide some ' +
                                'information about your business',
                            maxLines: 2,
                            style: TextStyle(height: 1.6),
                            softWrap: true),
                      ),

                      
                    ]),
              ),
            )));
    // TODO: implement initState
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List _screens = [
      HomePage(
        ctx: context,
      ),
      Container(),
      Container(),
      Container(),
    ];
    return Scaffold(
      appBar: _selectedIndex == 0
          ? PreferredSize(
              preferredSize: const Size.fromHeight(60),
              child: Container(
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
              ),
            )
          : null,

      ///
      ///

      body: SafeArea(child: _screens.elementAt(_selectedIndex)),

      ////
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SizedBox(
                child: Column(
              children: [
                const Icon(Icons.home),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: _selectedIndex == 0 ? _appgreen : Colors.white),
                  height: 3,
                  width: 30,
                )
              ],
            )),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
                child: Column(
              children: [
                const Icon(Icons.search_rounded),
                Container(
                  height: 3,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: _selectedIndex == 1 ? _appgreen : Colors.white),
                )
              ],
            )),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
                child: Column(
              children: [
                const Icon(Icons.person_outline_outlined),
                Container(
                  height: 3,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: _selectedIndex == 2 ? _appgreen : Colors.white),
                )
              ],
            )),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
                child: Column(
              children: [
                const Icon(Icons.menu),
                Container(
                  height: 3,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: _selectedIndex == 3 ? _appgreen : Colors.white),
                )
              ],
            )),
            label: '',
          )
        ],
        iconSize: 30,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
