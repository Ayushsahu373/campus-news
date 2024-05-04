import "dart:io";

import "package:campus_news/constants.dart";
import "package:campus_news/models/user.dart" as model;
import "package:firebase_auth/firebase_auth.dart";
import "package:firebase_storage/firebase_storage.dart";
import "package:get/get.dart";
import "package:image_picker/image_picker.dart";

class AuthController extends GetxController {
  static AuthController instance = Get.find();

  late Rx<File?> _pickedImage;
  File? get ProfilePhoto => _pickedImage.value;

  void pickImage() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      Get.snackbar('profile Picture',
          'you have Successfully selected your profile picture');
    }
    else if (pickedImage == null) {
      Get.snackbar('profile Picture',
          'please set a profile picture');
    }
    _pickedImage = Rx<File?>(File(pickedImage!.path));
  }

//   upload to firebase storage
  Future<String> _uploadToStorage(File image) async {
    Reference ref = firebaseStorage
        .ref()
        .child('profilePics')
        .child(firebaseAuth.currentUser!.uid);
    UploadTask uploadTask = ref.putFile(image);
    TaskSnapshot snap = await uploadTask;
    String downloadUrl = await snap.ref.getDownloadURL();
    return downloadUrl;
  }

//   register user
  void registerUser(
      String username, String email, String password, File? image) async {
    try {
      if (username.isNotEmpty &&
          email.isNotEmpty &&
          password.isNotEmpty &&
          image != null) {
        //save out user auth and firebase
        UserCredential CRED = await firebaseAuth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );

        String downloadUrl = await _uploadToStorage(image);
        model.user User = model.user(
          name: username,
          email: email,
          uid: CRED.user!.uid,
          profilePhoto: downloadUrl,
        );

        await firestore
            .collection('users')
            .doc(CRED.user!.uid)
            .set(User.toJason());
      } else {
        Get.snackbar(
          'Error creating account',
          "please enter all the fields",
        );
      }
    } catch (e) {
      Get.snackbar(
        'Error creating account',
        e.toString(),
      );
    }
  }
}
