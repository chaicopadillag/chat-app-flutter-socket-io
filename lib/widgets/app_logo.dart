import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 50),
        width: 150,
        child: Column(
          children: const [
            Image(image: AssetImage('./assets/tag-logo.png')),
            Text(
              'Messenger',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54),
            )
          ],
        ),
      ),
    );
  }
}
