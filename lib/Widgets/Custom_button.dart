import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  double buttomWidth;
  String buttonText;
  late double _deviceHeight;

  CustomButton({
    super.key,
    required this.buttonText,
    required this.buttomWidth,
  });

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;

    return Container(
      width: buttomWidth,
      margin: EdgeInsets.symmetric(
        vertical: _deviceHeight * 0.005,
      ),
      padding: EdgeInsets.symmetric(
        vertical: _deviceHeight * 0.01,
      ),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 97, 97, 97),
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        onPressed: () {},
        child: const Text(
          'Book Ride!',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 230, 0),
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
