import 'package:flutter/material.dart';
import 'package:warehouse/screen/home.dart';
import 'package:warehouse/screen/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '9jawarehouse',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(primary: const Color.fromRGBO(28, 190, 142, 1)),
        ),
        home: Home()

        // ProfileScreen(),
        );
  }
}
