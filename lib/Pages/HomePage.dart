// ignore: file_names
import 'dart:ffi';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Homepage extends StatelessWidget {
  late double _deviceHeight, _deviceWidget;

  Homepage({super.key});
  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidget = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
            height: _deviceHeight,
            width: _deviceWidget,
            padding: EdgeInsets.symmetric(
              horizontal: _deviceWidget * 0.12,
              vertical: _deviceHeight * 0.02,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _TextGoMoon(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    _passangerAndTicketDropDown(),
                    _destinationDropDown(),
                  ],
                ),
              ],
            )),
      ),
    );
  }

  Widget _TextGoMoon() {
    return const Text(
      '⚡GoMoon',
      style: TextStyle(
          color: Color.fromRGBO(255, 255, 255, 1),
          fontSize: 60,
          fontWeight: FontWeight.w900),
    );
  }

  Widget _astroImage() {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage("assets/images/astro_moon.png"))),
    );
  }

  Widget _Faisal() {
    return Container(
      child: const Text(
        'Faisal',
        style: TextStyle(
          color: Colors.teal,
          fontSize: 40,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }

  Widget _destinationDropDown() {
    // ignore: no_leading_underscores_for_local_identifiers
    List<String> _items = [
      'james',
      'jack',
      'jons',
      'faisal',
    ];
    return Container(
      width: _deviceWidget,
      margin: EdgeInsets.symmetric(vertical: _deviceHeight * 0.02),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(53, 53, 53, 1.0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton(
        underline: Container(),
        padding: EdgeInsets.symmetric(
          horizontal: _deviceWidget * 0.05,
        ),
        borderRadius: BorderRadius.circular(10),
        value: _items.first,
        dropdownColor: const Color.fromRGBO(53, 53, 53, 1.0),
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
        onChanged: (_) {},
        items: _items.map(
          (e) {
            return DropdownMenuItem(value: e, child: Text(e));
          },
        ).toList(),
      ),
    );
  }

  Widget _passangerCountDropDown() {
    // ignore: no_leading_underscores_for_local_identifiers
    List<String> _noOfPerson = [
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
    ];
    return Container(
      width: _deviceWidget * 0.3,
      
      decoration: BoxDecoration(
        color: const Color.fromRGBO(53, 53, 53, 1.0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton(
        underline: Container(),
        padding: EdgeInsets.symmetric(
          horizontal: _deviceWidget * 0.05,
        ),
        borderRadius: BorderRadius.circular(10),
        value: _noOfPerson.first,
        dropdownColor: const Color.fromRGBO(53, 53, 53, 1.0),
        style: const TextStyle(
          
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
        onChanged: (_) {},
        items: _noOfPerson.map(
          (e) {
            return DropdownMenuItem(
              value: e,
              child: Text(e),
            );
          },
        ).toList(),
      ),
    );
  }

  Widget _ticketClassDropDown() {
    // ignore: no_leading_underscores_for_local_identifiers
    List<String> _noOfPerson = [
      'Economy',
      'Bussiness',
      'Classic',
      'Local',
    ];
    return Container(
      width: _deviceWidget * 0.4,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(53, 53, 53, 1.0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton(
        underline: Container(),
        padding: EdgeInsets.symmetric(
          horizontal: _deviceWidget * 0.05,
        ),
        borderRadius: BorderRadius.circular(10),
        value: _noOfPerson.first,
        dropdownColor: const Color.fromRGBO(53, 53, 53, 1.0),
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
        onChanged: (_) {},
        items: _noOfPerson.map(
          (e) {
            return DropdownMenuItem(
              value: e,
              child: Text(e),
            );
          },
        ).toList(),
      ),
    );
  }

  Widget _passangerAndTicketDropDown() {
    return Container(
      width: _deviceWidget,
      margin: EdgeInsets.symmetric(vertical: _deviceHeight * 0.01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _passangerCountDropDown(),
          _ticketClassDropDown(),
        ],
      ),
    );
  }
}
