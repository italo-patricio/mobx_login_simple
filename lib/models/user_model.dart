import 'package:mobx/mobx.dart';
part 'user_model.g.dart';

class UserModel = _UserModelBase with _$UserModel;

abstract class _UserModelBase with Store {
  _UserModelBase({this.login = ''});

  @observable
  String login;
  @action
  setLogin(String value) => login = value;
}
