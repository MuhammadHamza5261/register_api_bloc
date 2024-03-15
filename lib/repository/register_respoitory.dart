import 'package:register_api/model/register_api_model.dart';
import 'package:register_api/service/register_service.dart';

class RegisterRepository{


  // use the model class
  RegisterApiModel? registerApiModel;


  //use the service class
  RegisterService registerService = RegisterService();


 //  then we create a method in class

 Future <RegisterApiModel?> setRegisterRepository({required String email, required String password}) async{

   registerApiModel = await registerService.registerScreenService(email: email, password: password);
   return registerApiModel!;

  }

}