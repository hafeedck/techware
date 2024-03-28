import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirestoreServices {
  static addProduct(
      String productName, String measurement, String price, String uid) async {
    await FirebaseFirestore.instance.collection('product').add({
      'name': productName,
      'measurment': measurement,
      'price': price,
      'uid': uid,
    });
  }

  static Future<bool> checkUser() async {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('product')
        .where('id', isEqualTo: FirebaseAuth.instance.currentUser!.uid)
        .get();

    return querySnapshot.docs.isNotEmpty;
  }
}
