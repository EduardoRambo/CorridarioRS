import 'package:estudos_parte_um/UI/theme/custom_light_theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'UI/theme/custom_dark_theme.dart';
import 'authentication/authentication_class.dart';
import 'authentication/authentication_wrapper.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthenticationService>(
          create: (_) => AuthenticationService(FirebaseAuth.instance),
        ),
        StreamProvider(
          initialData: null,
          create: (context) =>
              context.read<AuthenticationService>().authStateChanges,
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: CustomTheme.lightTheme,
        darkTheme: CustomDarkTheme.darkTheme,
        title: 'Projeto',
        home: AuthenticationWrapper(),
      ),
    );
  }
}
