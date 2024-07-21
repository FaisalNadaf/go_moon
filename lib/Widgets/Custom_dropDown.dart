import 'package:flutter/material.dart';

class Custom_dropDown extends StatelessWidget {
  List<String> values;
  double width;
  Custom_dropDown({
    super.key,
    required this.values,
    required this.width,
  });
  late double _deviceHeight, _deviceWidget;

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidget = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      margin: EdgeInsets.symmetric(
        vertical: _deviceHeight * 0.01,
      ),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(53, 53, 53, 1.0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton(
        underline: Container(),
        padding: EdgeInsets.symmetric(
          horizontal: _deviceWidget * 0.04,
        ),
        borderRadius: BorderRadius.circular(10),
        value: values.first,
        dropdownColor: const Color.fromRGBO(53, 53, 53, 1.0),
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
        onChanged: (_) {},
        items: values.map(
          (e) {
            return DropdownMenuItem(value: e, child: Text(e));
          },
        ).toList(),
      ),
    );
  }
}
