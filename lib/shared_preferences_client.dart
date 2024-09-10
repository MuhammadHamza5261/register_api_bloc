 import 'package:shared_preferences/shared_preferences.dart';

  class SharedPreferencesClient {


   // create a method to set id and token

   Future setToken(String token) async {

   SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('access_token', token);

   }


    // set id
    Future setId(String id) async {

      SharedPreferences sp = await SharedPreferences.getInstance();
      sp.setString("access_id", id);

    }


   //  create a method to get the token

    Future<String> getToken() async {

    SharedPreferences sp = await SharedPreferences.getInstance();
    return sp.getString('access_token') ?? '';

    }


   // create a method of get id

   Future<String> getId() async {

    SharedPreferences sp = await SharedPreferences.getInstance();
    return sp.getString('access_id',) ?? '';

   }

  Future clearData() async{
     
     SharedPreferences sp = await SharedPreferences.getInstance();

     await sp.remove('access_id');
     await sp.remove('access_token');

   }








}
