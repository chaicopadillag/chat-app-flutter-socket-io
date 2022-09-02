import 'package:flutter/material.dart';

class QuestionAccount extends StatelessWidget {
  final String question;
  final String labelAccount;
  final String route;

  const QuestionAccount(
      {Key? key,
      required this.question,
      required this.labelAccount,
      required this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 40),
      child: Column(
        children: [
          Text(
            question,
            style: const TextStyle(color: Colors.black45, fontSize: 15),
          ),
          const SizedBox(
            height: 8,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, route);
            },
            child: Text(labelAccount,
                style: TextStyle(
                    color: Colors.blue[600],
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Terminos y condiciones de uso',
            style: TextStyle(color: Colors.black45, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
