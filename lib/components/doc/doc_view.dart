// Step 6: create app bar (menubar)
import 'dart:ffi';

import 'package:flutter/material.dart';

// Step 15: make a CRUD function
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_project/services/firestore.dart';

class Doc_View extends StatefulWidget {
  const Doc_View({super.key});

  @override
  State<Doc_View> createState() => _Doc_ViewState();
}

class _Doc_ViewState extends State<Doc_View> {
  // Step 15: make a CRUD function

  // make an instance of FirestoreService
  final FirestoreService firestoreService = FirestoreService();

  // text controllers
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  // open a dialog vox to add a note
  void openPersonBox({String? personID}) async {
    if (personID != null) {
      final person = await firestoreService.getPersonById(personID);
      nameController.text = person['personName'] ?? '';
      ageController.text = person['personAge']?.toString() ?? '';
      emailController.text = person['personEmail'] ?? '';
    } else {
      nameController.clear();
      ageController.clear();
      emailController.clear();
    }

    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: nameController,
                  decoration: const InputDecoration(labelText: 'Name'),
                ),
                TextField(
                  controller: ageController,
                  decoration: const InputDecoration(labelText: 'Age'),
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(labelText: 'Email'),
                  keyboardType: TextInputType.emailAddress,
                ),
              ],
            ),
            actions: [
              ElevatedButton(
                onPressed: () {
                  final name = nameController.text;
                  final age = int.tryParse(ageController.text) ?? 0;
                  final email = emailController.text;

                  if (personID != null) {
                    firestoreService.updatePerson(personID, name, age, email);
                  } else {
                    firestoreService.addPerson(name, age, email);
                  }

                  nameController.clear();
                  ageController.clear();
                  emailController.clear();

                  Navigator.pop(context);
                },
                child: const Text("Add"),
              ),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Persons List"),
        automaticallyImplyLeading: false, // เอาปุ่ม back ออก
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          openPersonBox();
        },
        child: const Icon(Icons.add),
      ),
      // read function
      body: StreamBuilder<QuerySnapshot>(
        stream: firestoreService.getPersonsStream(),
        builder: (context, snapshot) {
          // if we have data, get all the documents
          if (snapshot.hasData) {
            List personsList = snapshot.data!.docs;

            // display the notes
            return ListView.builder(
              itemCount: personsList.length,
              itemBuilder: (context, index) {
                // get each individual person document
                DocumentSnapshot document = personsList[index];
                String personID = document.id;

                // get person from each document
                Map<String, dynamic> data =
                    document.data() as Map<String, dynamic>;
                String personText = data['personName'] ?? '';
                String ageText = data['personAge']?.toString() ?? '';
                String emailText = data['personEmail'] ?? '';

                // display as a list tile
                return ListTile(
                  title: Text('$personText (Age: $ageText)'),
                  subtitle: Text(emailText),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.settings),
                        onPressed: () {
                          // update function
                          openPersonBox(personID: personID);
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          // delete function
                          firestoreService.deletePerson(personID);
                        },
                      ),
                    ],
                  ),
                );
              },
            );
          }
          // if we don't have data, return nothing
          else {
            return const Center(
              child: Text(
                "No notes available",
                style: TextStyle(fontSize: 20, color: Colors.redAccent),
              ),
            );
          }
        },
      ),
    );
  }
}
