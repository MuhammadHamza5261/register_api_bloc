import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:register_api/shared_preferences_client.dart';


class ShowValueScreen extends StatefulWidget {
  const ShowValueScreen({super.key});

  @override
  State<ShowValueScreen> createState() => _ShowValueScreenState();
}

class _ShowValueScreenState extends State<ShowValueScreen> {

  SharedPreferencesClient sharedPreferencesClient = SharedPreferencesClient();

  late String token = '';
  late String id = '';

  @override
  void initState() {
    super.initState();
     getTokenAndId();
  }

  void getTokenAndId() async {

    String _token = await SharedPreferencesClient().getToken() ?? '';
    String _id = await SharedPreferencesClient().getId() ?? '';

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
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
            child: Icon(Icons.arrow_back)),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: const Text(
          'Values of Shared Preferences',
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'id is: $id', style: const TextStyle(
                fontSize: 30,
                color: Colors.blueAccent,
              ),
            ),
            Text(
              'Token is: $token',
              style: const TextStyle(
                fontSize: 30,
                color: Colors.red,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

