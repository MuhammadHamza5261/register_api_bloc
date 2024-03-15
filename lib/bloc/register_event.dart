abstract class RegisterEvent{}

class RegisterDataEvent extends RegisterEvent{

      String email;
      String password;

      RegisterDataEvent({

            required this.email,
            required this.password,

      });

      }