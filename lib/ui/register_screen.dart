import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:register_api/bloc/register_bloc.dart';
import 'package:register_api/bloc/register_state.dart';
import 'package:register_api/ui/show_value_shared_pref.dart';
import '../bloc/register_event.dart';



class SignUpScreen extends StatefulWidget {
  SignUpScreen() : super();

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}


class _SignUpScreenState extends State<SignUpScreen> {

  final _formKey = GlobalKey<FormState>();

  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();
  final TextEditingController _emailController = TextEditingController();


  @override
  Widget build(BuildContext context) {

  var width = MediaQuery.of(context).size.width;
  var height = MediaQuery.of(context).size.height;


    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Sign Up",
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Segue UI',
              fontSize: 30,
              shadows: [
                Shadow(
                  color: Color(0xba000000),
                  offset: Offset(0, 3),
                  blurRadius: 6,
                ),
              ],
            ),
        ),
        //centerTitle: true,
        leading: InkWell(
          onTap: () => Get.to(()),
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: BlocConsumer<RegisterBloc,RegisterState>(
            builder:(context,state){
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        color: Colors.blue.shade100,

                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      width: width,
                      height: height,
                      child: SingleChildScrollView(
                        //controller: controller,
                        child: Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 30.0,
                              ),
                              const Text(
                                'Register User',
                                style: TextStyle(
                                  fontFamily: 'Segue UI',
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff000000),

                                ),
                                textAlign: TextAlign.left,
                              ),
                              const SizedBox(
                                height: 25.0,
                              ),


                              const SizedBox(
                                height: 12.0,
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                                child: Material(
                                  elevation: 15.0,
                                  shadowColor: Colors.black,
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Padding(
                                    padding:
                                    const EdgeInsets.only(right: 20.0, left: 15.0),
                                    child: TextFormField(
                                      // obscureText: true,
                                        autofocus: false,
                                        keyboardType: TextInputType.text,
                                        decoration: const InputDecoration(
                                          icon: Icon(
                                            Icons.lock,
                                            color: Colors.black,
                                            size: 32.0, /*Color(0xff224597)*/
                                          ),
                                          labelText: "Enter your Email",
                                          labelStyle: TextStyle(
                                              color: Colors.black54, fontSize: 18.0),
                                          hintText: '',
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black54),
                                          ),
                                          border: InputBorder.none,
                                        ),
                                        controller: _emailController,
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return 'Please enter your Email';
                                          } else if (val.length < 10) {
                                            return 'enter email';
                                          }

                                          return null;
                                        }),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 25.0,
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                                child: Material(
                                  elevation: 15.0,
                                  shadowColor: Colors.black,
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Padding(
                                    padding:
                                    const EdgeInsets.only(right: 20.0, left: 15.0),
                                    child: TextFormField(
                                        obscureText: true,
                                        autofocus: false,
                                        keyboardType: TextInputType.text,
                                        decoration: const InputDecoration(
                                          icon: Icon(
                                            Icons.lock,
                                            color: Colors.black,
                                            size: 32.0, /*Color(0xff224597)*/
                                          ),
                                          labelText: "Enter your Password",
                                          labelStyle: TextStyle(
                                              color: Colors.black54, fontSize: 18.0),
                                          hintText: '',
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black54),
                                          ),
                                          border: InputBorder.none,
                                        ),
                                        controller: _confirmPass,
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return 'please enter your password';
                                          }

                                          return null;
                                        }),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30.0,
                              ),
                              BlocBuilder<RegisterBloc,RegisterState>(
                                  builder: (context,state){
                                    return  SizedBox(
                                      height: 55.0,
                                      child: SizedBox(
                                        width: width*0.8,
                                        child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.pink.shade200,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                            ),
                                            onPressed: (){
                                              BlocProvider.of<RegisterBloc>(context).add(
                                                RegisterDataEvent(
                                                  email: _emailController.text,
                                                  password: _confirmPass.text,
                                                ),
                                              );

                                              if (_formKey.currentState!.validate()) {}

                                            },
                                            child: state is RegisterInProgressState?
                                            const CircularProgressIndicator(color: Colors.white,):
                                            const Text('Signup',style: TextStyle(fontSize: 18),)
                                        ),
                                      ),
                                    );
                                  }
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
             listener: (context,state){
              if(state is RegisterDataIsloadedState)
              {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const ShowValueScreen()),
                );
              }
              else if(state is RegisterIsFailure){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.red,
                    content: Text(state.errorMessage,),
                  ),
                );
              }
          },
        ),
      ),
    );
  }
}
