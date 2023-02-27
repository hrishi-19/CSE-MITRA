import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

void setpref()async{
  FirebaseAuth auth=FirebaseAuth.instance;
  SharedPreferences pref= await SharedPreferences.getInstance() as SharedPreferences;
  pref.setString("val",auth.currentUser!.uid );
}
void removekey()async{
  SharedPreferences pref= await SharedPreferences.getInstance() as SharedPreferences;
  pref.remove("val");
}