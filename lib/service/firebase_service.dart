import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirestoreServices {
  // user section
  static addProduct(
      String productName, String measurment, String price, String uid) async {
    await FirebaseFirestore.instance.collection('user').doc(uid).set({
      'product_name': productName,
      'measurement': measurment,
      'price': price,
    });
  }

  static Future<bool> isEmailAlreadyAdded(String email) async {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('user')
        .where('email', isEqualTo: email)
        .get();

    return querySnapshot.docs.isNotEmpty;
  }

  signUp(String email, String password) async {
    UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            email: email.trim(), password: password.trim());
  }
}
