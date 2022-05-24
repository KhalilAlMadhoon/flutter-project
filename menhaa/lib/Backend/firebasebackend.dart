import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:menhaa/services/services.dart';

FirebaseAuth auth = FirebaseAuth.instance;
FirebaseFirestore firestore = FirebaseFirestore.instance;
FirebaseStorage firebaseStorage = FirebaseStorage.instance;
String usersCollectionName = 'Users';

String userId = '';
Future<String?> registerUsingEmailAndPassword({
  String? email,
  String? password,
  String? name,
}) async {
  print(email.toString() + 'pass:=' + password.toString());
  try {
    UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: email!, password: password!);
    username = name!;

    if (userCredential != null) {
      userId = userCredential.user!.uid;
      saveInFirestore(
          email: email, password: password, userId: userId, name: name);
      // SPHelper.spHelper.setUserCredintials(userId: userId);
      // savetoken(userId, 1);
      return userId;
    } else {
      // CustomDialougs.utils.showDialoug(messageKey: 'Failed', titleKey: 'alert');
      // return null;
    }
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      // appGet.pr.hide();
      // CustomDialougs.utils
      //     .showDialoug(messageKey: 'week_password', titleKey: 'alert');
    } else {
      // appGet.pr.hide();
      // CustomDialougs.utils
      //     .showDialoug(messageKey: 'user_email', titleKey: 'alert');
    }
    return null;
  } catch (e) {
    // CustomDialougs.utils.showDialoug(messageKey: e, titleKey: 'alert');
    return null;
  }
}

Future<Map?> signInWithEmailAndPassword({
  String? email,
  String? password,
  String? name,
}) async {
  try {
    UserCredential userCredential = await auth.signInWithEmailAndPassword(
        email: email!, password: password!);
    if (userCredential != null) {
      String userId = userCredential.user!.uid;

      Map? map = await getUserFromFirestore(userId: userId);
      savetoken(userId);
      // getFollowdUsers(userId);
      // getAllUsers();
      // getProfileStatictics(appGet.userId);
      // suggestFriends(appGet.userId);
      // Get.offAll(HomePage1());

      // return map;
    } else {
      // CustomDialougs.utils.showDialoug(messageKey: 'Failed', titleKey: 'alert');

      return null;
    }
  } on FirebaseAuthException catch (e) {
    // appGet.pr.hide();
    if (e.code == 'user-not-found') {
      // CustomDialougs.utils
      //     .showDialoug(messageKey: 'invalid_email', titleKey: 'alert');
    } else if (e.code == 'wrong-password') {
      // CustomDialougs.utils
      //     .showDialoug(messageKey: 'invalid_password', titleKey: 'alert');
    }
    return null;
  } catch (e) {
    // CustomDialougs.utils
    //     .showDialoug(messageKey: e.toString(), titleKey: 'alert');
    return null;
  }
}

Future<bool> saveInFirestore(
    {String? email,
    String? password,
    String? name,
    String? uniNum,
    String? speclaize,
    String? level,
    String? hourPrice,
    String? hourNum,
    String? phoneNum,
    String? userId}) async {
  try {
    await firestore.collection(usersCollectionName).doc(userId).set({
      'email': email,
      'password': password,
      'name': name,
      'uniNum': uniNum,
      'speclaize': speclaize,
      'level': level,
      'hourPrice': hourPrice,
      'hourNum': hourNum,
      'phoneNum': phoneNum,
      'userId': userId
    });
    // saveUserNameInRealtimeDb(userName: userName);
    // appGet.pr.hide();
    return true;
  } on Exception catch (e) {
    // appGet.pr.hide();
    // CustomDialougs.utils
    //     .showDialoug(messageKey: e.toString(), titleKey: 'alert');
    return false;
  }
}

Future<Map<String, dynamic>?> getUserFromFirestore({String? userId}) async {
  var documentSnapshot =
      await firestore.collection(usersCollectionName).doc(userId).get();
  Map<String, dynamic>? responce = documentSnapshot.data();
  print(responce);
  // appGet.userMap.value = responce;

  return responce;
}

Stream<QuerySnapshot>? getAllnames() {
  Stream<QuerySnapshot> stream = firestore.collection('Users').snapshots();
  // print(stream.toString());
  return stream;
}

Future<bool> registerForMenha({
  String? menname,
  String? uniNum,
  String? speclaize,
  String? level,
  String? hourPrice,
  String? hourNum,
  String? phoneNum,
}) async {
  try {
    await firestore.collection(usersCollectionName).doc(userId).set({
      'name': menname,
      'uniNum': uniNum,
      'speclaize': speclaize,
      'level': level,
      'hourPrice': hourPrice,
      'hourNum': hourNum,
      'phoneNum': phoneNum,
    });
    // saveUserNameInRealtimeDb(userName: userName);
    // appGet.pr.hide();
    return true;
  } on Exception catch (e) {
    // appGet.pr.hide();
    // CustomDialougs.utils
    //     .showDialoug(messageKey: e.toString(), titleKey: 'alert');
    return false;
  }
}
