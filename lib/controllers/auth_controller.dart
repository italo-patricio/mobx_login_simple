import 'package:mobx/mobx.dart';
import 'package:mobx_login_simple/models/user_model.dart';
part 'auth_controller.g.dart';

class AuthController = _AuthControllerBase with _$AuthController;

abstract class _AuthControllerBase with Store {
  final user = UserModel();

  @computed
  bool get isLogged {
    return user.login.isNotEmpty;
  }
}
