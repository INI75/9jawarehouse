import 'package:flutter/material.dart';

class Locator extends StatefulWidget {
  const Locator({Key? key, required this.context1}) : super(key: key);
  static const color = Color.fromRGBO(28, 190, 142, 1);
  final BuildContext context1;

  @override
  State<Locator> createState() => _LocatorState();
}

class _LocatorState extends State<Locator> {
//// collect name from somewere
  ///
  ///create drop down button for location name
  final _locations = [
    'Location',
    'Warri',
    'Phalga',
    'Effurun',
    'Asaba',
    'Obiapor',
  ];
  String _selectedLocation = 'Location';
  @override
  Widget build(BuildContext context1) {
    return Container(
      height: 50, width: 190,
      // ignore: sort_child_properties_last
      child: Row(children: [
        const Icon(
          Icons.location_on,
          color: Colors.red,
        ),
        const SizedBox(width: 5),
        DropdownButton<String>(
          items: _locations
              .map((e) => DropdownMenuItem<String>(
                    value: e,
                    child: Text(e),
                  ))
              .toList(),
          onChanged: (value) {
            setState(() {
              _selectedLocation = value!;
            });
          },
          value: _selectedLocation,
          iconEnabledColor: Locator.color,
          iconDisabledColor: Locator.color,
          elevation: 0,
        ),
      ]),
    );
  }
}
