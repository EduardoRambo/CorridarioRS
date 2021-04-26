import 'package:estudos_parte_um/UI/component/component.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:estudos_parte_um/authentication/authentication.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _obscureText = true;

  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  onClickSnackbar(BuildContext context) {
    final snackBar = SnackBar(
      content: Text('Digite as informações corretas!'),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  Widget _rowLogo() {
    return Container(
      width: 100,
      height: 100,
      child: Image.asset(
        'assets/image1.png',
        scale: 1,
      ),
    );
  }

  Widget _rowEmail(BuildContext context) {
    return TextFormFieldWidget('Digite seu E-mail', emailController, (value) {
      if (value.isEmpty) {
        return 'Digite seu E-mail!';
      }
      return null;
    }, TextInputType.emailAddress);
  }

  Widget _rowPassword(BuildContext context) {
    return TextFormField(
      obscureText: _obscureText,
      controller: passwordController,
      validator: (value) {
        if (value.isEmpty) {
          return 'Digite sua senha!';
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: 'Digite sua senha',
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
            color: Colors.black,
          ),
          onPressed: () {
            _toggle();
          },
        ),
      ),
    );
  }

  _rowButtonGoogle() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      child: TextButton(
        onPressed: () {},
        child: Text('Entre com Google'),
      ),
    );
  }

  _rowButtonFacebook() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      child: TextButton(
        onPressed: () {},
        child: Text('Entre com Facebook'),
      ),
    );
  }

  Widget _formUI(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 64, bottom: 15),
            child: _rowLogo(),
          ),
          Text(
            'Corridário RS',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32, left: 32, right: 32),
            child: Column(
              children: [
                _rowEmail(context),
                SizedBox(
                  height: 30,
                ),
                _rowPassword(context),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          _rowButton(context),
          SizedBox(
            height: 80,
          ),
          _rowButtonGoogle(),
          SizedBox(
            height: 20,
          ),
          _rowButtonFacebook(),
        ],
      ),
    );
  }

  Widget _rowForm(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      key: _formKey,
      child: _formUI(context),
    );
  }

  Widget _rowButton(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      child: TextButton(
        style: ButtonStyle(
          side: MaterialStateProperty.resolveWith(
            (states) => BorderSide(width: 2, color: Colors.white),
          ),
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) => Colors.black.withOpacity(0.05),
          ),
        ),
        onPressed: () {
          if (!_formKey.currentState.validate())
            return onClickSnackbar(context);
          else
            context.read<AuthenticationService>().signIn(
                  email: emailController.text.trim(),
                  password: passwordController.text.trim(),
                );
        },
        child: Text(
          'Entrar',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image2.png'), fit: BoxFit.fill),
              ),
              child: _rowForm(context),
            ),
          ),
        ],
      ),
    );
  }

  void _toggle() {
    setState(
      () {
        _obscureText = !_obscureText;
      },
    );
  }
}
