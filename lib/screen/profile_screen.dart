import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);
  var appBarSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 290),
        child: Container(
          height: 70,
          color: Colors.white,
          margin: const EdgeInsets.only(top: 20),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Business Profile',
                style: TextStyle(color: Colors.black),
              ),
              Switch(value: appBarSwitch, onChanged: (value) {})
            ],
          ),
        ),
      ),
      body: Container(
        color: Colors.amber,
        height: 700,
        width: double.infinity,
      ),
    );
  }
}
