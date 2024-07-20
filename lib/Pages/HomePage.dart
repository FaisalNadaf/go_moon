import 'package:flutter/material.dart';
import 'package:g/Widgets/Custom_dropDown.dart';

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
                    _destinationDropDown(),
                    _passangerAndTicketDropDown(),
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
    return Custom_dropDown(
      values: const [
        'james',
        'jack',
        'jons',
        'faisal',
      ],
      width: _deviceWidget,
    );
  }

  Widget _passangerCountDropDown() {
    return Custom_dropDown(
      values: const [
        '1',
        '2',
        '3',
        '4',
        '5',
        '6',
        '7',
      ],
      width: _deviceWidget * 0.3,
    );
  }

  Widget _ticketClassDropDown() {
    return Custom_dropDown(
      values: const [
        'Economy',
        'Bussiness',
        'Classic',
        'Local',
      ],
      width: _deviceWidget * 0.4,
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
