import 'package:shared_preferences/shared_preferences.dart';

class Shr {
  Future<void> CreateShr(String email, String Password) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('e', email);
    sharedPreferences.setString('p', Password);
  }

  Future<Map> ReadShr() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? email = sharedPreferences.getString('e');
    String? Password = sharedPreferences.getString('p');
    Map m1 = {"e": email, "p": Password};
    return m1;
  }
}
