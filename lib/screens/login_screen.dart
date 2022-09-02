import 'package:flutter/material.dart';

import 'package:chat_app/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xfff2f2f2),
        body: SafeArea(
          bottom: true,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .94,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AppLogo(),
                  _FormLogin(),
                  QuestionAccount(
                    question: '¿No tienes una cuenta?',
                    labelAccount: 'Crea un cuenta',
                    route: 'register',
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class _FormLogin extends StatefulWidget {
  const _FormLogin({Key? key}) : super(key: key);

  @override
  State<_FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<_FormLogin> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          CustomTextField(
            icon: Icons.mail_outline,
            placeholder: 'Email',
            textInputType: TextInputType.emailAddress,
            textEditingController: emailController,
          ),
          CustomTextField(
            icon: Icons.lock_clock_outlined,
            placeholder: 'Password',
            textEditingController: passwordController,
            isPassword: true,
          ),
          CustomButton(
            textButton: 'Ingresar',
            onPress: () {
              print(emailController.text);
              print(passwordController.text);
            },
          )
        ],
      ),
    );
  }
}
