import 'package:flutter/material.dart';
import 'package:register_api/shared_preferences_client.dart';

class ShowValueScreen extends StatefulWidget {
  const ShowValueScreen({super.key});

  @override
  State<ShowValueScreen> createState() => _ShowValueScreenState();
}

class _ShowValueScreenState extends State<ShowValueScreen> {


  late String token;
    late String id;


  @override
  void initState() {

    super.initState();
    getTokenAndId();

  }



     void getTokenAndId() async {

       String _token = await SharedPreferencesClient().getToken();
       String _id = await SharedPreferencesClient().getId();

       setState(() {

         token = _token;
         id = _id;

       });

     }


  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
            'Values of Shared Preferences',
        ),
      ),
      body:  Column(
        children: [
          Center(
           child: Text(token,
               style: const TextStyle(
                fontSize: 20,
                 color: Colors.red,
           ),
           ),
          ),
          Text(id,
            style: TextStyle(
              fontSize: 20,
              color: Colors.blueAccent,
            ),

          ),
        ],
      ),
    );
  }
}
