import 'dart:async';

import 'package:flutter/material.dart';
import 'package:warehouse/screen/homepage.dart';
import 'package:warehouse/widgets/app/app_button.dart';
import '../widgets/homepage/app_bar.dart';
import '../widgets/homepage/dot.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  final List _screens = [
    HomePage(),
    Container(),
    Container(),
    Container(),
  ];
  static const _appgreen = Color.fromRGBO(28, 190, 142, 1);
  static const AlignmentGeometry center = Alignment.center;
  @override
  void initState() {
    Timer(
        const Duration(seconds: 1),
        (() => showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                height: 350,
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
                        margin: const EdgeInsets.only(
                            left: 18, right: 18, top: 13, bottom: 17),
                        child: const Text(
                            'To access business tools we need to provide some ' +
                                'information about your business',
                            maxLines: 2,
                            style: TextStyle(height: 1.6),
                            softWrap: true),
                      ),
                      const DotItem(item: 'Provide Business information'),
                      const DotItem(item: 'Verify your business'),
                      const SizedBox(height: 21),
                      Align(
                        alignment: center,
                        child: AppBotton(tap: () {}, title: 'Get Started'),
                      ),
                      const SizedBox(height: 10),
                      Align(
                        alignment: center,
                        child: TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text(
                              'Not Now',
                              style: TextStyle(color: Colors.black),
                            )),
                      )
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
    return Scaffold(
      appBar: _selectedIndex == 0
          ? const PreferredSize(
              preferredSize: Size.fromHeight(60),
              child: CustomAppBar(),
            )
          : null,

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
