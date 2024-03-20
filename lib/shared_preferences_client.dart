import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesClient {
//     create a method to set id and token

  Future setToken(String token) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('access_token', token);
  }

   //  create a method to get the token

  Future<String> getToken() async {

    SharedPreferences sp = await SharedPreferences.getInstance();
    return sp.getString('access_token') ?? '';
  }

}
