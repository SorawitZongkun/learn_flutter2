// Step 14: make a service for firestore
import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  // Get collection of persons (ใช้อ้างอิงถึง collection persons)
  final CollectionReference persons = FirebaseFirestore.instance.collection(
    'persons',
  );

  // Create
  Future<void> addPerson(String personName, Int personAge, String personEmail) {
    return persons.add({
      'personName': personName,
      'personAge': personAge,
      'personEmail': personEmail,
      'timestamp': Timestamp.now(),
    });
  }

  // Read
  Stream<QuerySnapshot> getPersonsStream() {
    final personsStream =
        persons.orderBy('timestamp', descending: true).snapshots();
    return personsStream;
  }

  // Update
  Future<void> updatePerson(
    String personID,
    String personName,
    Int personAge,
    String personEmail,
  ) {
    return persons.doc(personID).update({
      'personName': personName,
      'personAge': personAge,
      'personEmail': personEmail,
      'timestamp': Timestamp.now(),
    });
  }

  // Delete
  Future<void> deletePerson(String personID) {
    return persons.doc(personID).delete();
  }
}
