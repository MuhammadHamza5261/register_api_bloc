import 'dart:convert';
import 'package:register_api/model/register_api_model.dart';
import 'package:http/http.dart' as http;

class RegisterService{

   //  firstly we create a method
   Future<RegisterApiModel?> registerScreenService({required String  email, required String password}) async{

       final response = await http.post(Uri.parse('https://reqres.in/api/register'),

         headers: <String,String>

         {

           "Content-type": "application/json",
           "Accept": "application/json",

         },

          body: jsonEncode(<String,dynamic>{

            "email": email,
            "password": password,

          }),
       );

       
       if(response.statusCode ==  200)

       {

         final data = jsonDecode(response.body);
         return RegisterApiModel.fromJson(data);

       }

       else{

         throw Exception('${response.statusCode}: ${response.reasonPhrase}');

       }

}

}