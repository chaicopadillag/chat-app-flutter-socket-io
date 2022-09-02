import 'package:chat_app/screens/screens.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> appRoutes = {
  'loading': (_) => const LoadingScreen(),
  'login': (_) => const LoginScreen(),
  'register': (_) => const RegisterScreen(),
  'users': (_) => const UsersScreen(),
  'chat': (_) => const ChatScreen()
};
