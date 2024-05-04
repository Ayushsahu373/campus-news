

import 'package:cloud_firestore/cloud_firestore.dart';

class user {
  String name;
  String profilePhoto;
  String email;
  String uid;
  user({
    required this.name,
    required this.email,
    required this.uid,
    required this.profilePhoto,

});

  Map<String,dynamic>toJason()=>{
    "name:":name,
    "profilePhoto":profilePhoto,
    "email":email,
    "uid":uid,
  };

static user fromSnap(DocumentSnapshot snap){
  var snapshot=snap.data() as Map<String,dynamic>;
  return user(name: snapshot["name"], email: snapshot['email'], uid: snapshot['uid'], profilePhoto: snapshot['profilePhoto'],);

}
}