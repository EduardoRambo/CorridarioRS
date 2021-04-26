import 'package:estudos_parte_um/UI/views/tabview.dart';
import 'package:estudos_parte_um/UI/views/views.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthenticationWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();

    if (firebaseUser == null) {
      return LoginView();
    }
    return TabView();
  }
}
