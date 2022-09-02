import 'package:chat_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

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
                  _FormRegister(),
                  QuestionAccount(
                    question: '¿Ya tienes una cuenta?',
                    labelAccount: 'Iniciar sesión ahora',
                    route: 'login',
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class _FormRegister extends StatefulWidget {
  const _FormRegister({Key? key}) : super(key: key);

  @override
  State<_FormRegister> createState() => _FormRegisterState();
}

class _FormRegisterState extends State<_FormRegister> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          CustomTextField(
            icon: Icons.person,
            placeholder: 'Name',
            textEditingController: nameController,
          ),
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
            textButton: 'Crear cuenta',
            onPress: () {
              print(nameController.text);
              print(emailController.text);
              print(passwordController.text);
            },
          )
        ],
      ),
    );
  }
}
