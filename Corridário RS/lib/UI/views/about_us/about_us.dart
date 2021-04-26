import 'package:flutter/material.dart';

class AboutUsView extends StatefulWidget {
  @override
  _AboutUsViewState createState() => _AboutUsViewState();
}

class _AboutUsViewState extends State<AboutUsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre nós'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Image.asset(
                    'assets/image3.png',
                    scale: 1.5,
                  ),
                  Container(
                    child: Text(
                      'Corridário RS',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Aplicativo desenvolvido por: ',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Eduardo Rambo\nEstudante de desenvolvimento Mobile',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
