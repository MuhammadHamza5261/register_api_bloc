import 'package:register_api/model/register_api_model.dart';

abstract class RegisterState{}

class RegisterInitialState extends RegisterState{}

class RegisterInProgressState extends RegisterState{}


class RegisterDataIsloadedState extends RegisterState{

  //use the model class

  RegisterApiModel registerApiModel;
  RegisterDataIsloadedState({required this.registerApiModel});

}

class RegisterIsFailure extends RegisterState{

  final String  errorMessage;
  RegisterIsFailure(this.errorMessage);

}