import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String textButton;
  final Function() onPress;

  const CustomButton(
      {Key? key, required this.textButton, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 2,
              primary: Colors.blue[600],
              shape: const StadiumBorder()),
          onPressed: onPress,
          child: Text(
            textButton,
            style: TextStyle(color: Colors.white, fontSize: 18),
          )),
    );
  }
}
