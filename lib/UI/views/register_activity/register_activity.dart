import 'package:estudos_parte_um/utilities/activities_controller.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterActivityView extends StatefulWidget {
  @override
  _RegisterActivityViewState createState() => _RegisterActivityViewState();
}

class _RegisterActivityViewState extends State<RegisterActivityView> {
  final referenceData = FirebaseDatabase.instance.reference();
  final reference = FirebaseDatabase.instance;
  var activityController = ActivityController();

  String name;

  _rowName() {
    return TextFormField(
      controller: activityController.nameController,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(labelText: 'nome'),
    );
  }

  _rowDescription() {
    return TextFormField(
      controller: activityController.descriptionController,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(labelText: 'Descreva o evento:'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registre uma atividade'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 100, right: 16, left: 16),
          child: Column(
            children: [
              _rowName(),
              _rowDescription(),
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: TextButton(
                  onPressed: () {
                    writeData();
                  },
                  child: Text('Cadastrar'),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 300,
                height: 300,
                child: new FirebaseAnimatedList(
                  shrinkWrap: true,
                  query: referenceData,
                  itemBuilder: (BuildContext context, DataSnapshot snapshot,
                      Animation<double> animation, int index) {
                    return new ListTile(
                      title: Column(
                        children: [
                          new Text(snapshot.value['name']),
                          new Text(snapshot.value['description']),
                        ],
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          referenceData.remove();
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void writeData() {
    referenceData.child("Corridario").set({
      'name': "${activityController.nameController.text}",
      'description': "${activityController.descriptionController.text}",
    }).asStream();
  }

  void readData() {
    referenceData.once().then((DataSnapshot dataSnapshot) {
      print(dataSnapshot.value);
    });
  }
}
