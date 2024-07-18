// ignore: file_names
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
          padding: EdgeInsets.symmetric(horizontal: _deviceWidget * 0.12),
          child: _destinationDropDown(),
        ),
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
    List<DropdownMenuItem<String>> _items = [
      'james',
      'jack',
      'jons',
      'faisal',
    ].map((e) {
      return DropdownMenuItem(value: e, child: Text(e));
    }).toList();
    return Container(
      child: DropdownButton(
        onChanged: (_) {},
        items: _items,
      ),
    );
  }
}
