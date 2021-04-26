import 'package:estudos_parte_um/authentication/authentication.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  AuthenticationService authenticationService;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Corridario RS'),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 55, left: 16, right: 16),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/image3.png',
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Seja bem-vindo ao Corridário RS!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 26,
                        ),
                      ),
                      SizedBox(
                        height: 200,
                      ),
                      Card(
                        child: Container(
                          height: 40,
                          color: Colors.black.withOpacity(0.07),
                          child: GestureDetector(
                            onTap: () {
                              context.read<AuthenticationService>().signOut();
                            },
                            child: Text(
                              'Sair',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
