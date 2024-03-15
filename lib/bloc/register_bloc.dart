import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:register_api/bloc/register_event.dart';
import 'package:register_api/bloc/register_state.dart';
import 'package:register_api/model/register_api_model.dart';
import 'package:register_api/repository/register_respoitory.dart';

class RegisterBloc extends Bloc<RegisterEvent,RegisterState>
{

  //  use the model class
  RegisterApiModel? registerApiModel;

  //  use the repository class
  RegisterRepository registerRepository = RegisterRepository();


  //  then we create a constructor and then call them
  RegisterBloc(): super(RegisterInitialState())
  {
    on<RegisterEvent>((event, emit) async{

      if(event is RegisterDataEvent){
        emit(RegisterInProgressState());


          try{
            registerApiModel = await registerRepository.setRegisterRepository(
                email: event.email,
                password: event.password,

            );
            print(registerApiModel!.id);
            print(registerApiModel!.token);

            emit(RegisterDataIsloadedState(registerApiModel :  registerApiModel!));


           }


           catch(e){
            emit(RegisterIsFailure(e.toString()));

            }
      }
    });
  }

}