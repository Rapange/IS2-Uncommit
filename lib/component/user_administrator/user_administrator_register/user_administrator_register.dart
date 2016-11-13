import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';

import 'package:logistic_ui/request.dart';
import 'package:logistic_ui/providers.dart';
import 'package:logistic_ui/model.dart';

@Component(selector: 'user-administrator-register', viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])
@View(templateUrl: 'user_administrator_register.html', directives: const[ROUTER_DIRECTIVES, NgIf, NgFor])
class UserAdministratorRegister{
  bool added = false;

  List<String> type = ['Administrador de Ventas', 'Administrador de Producto'];
  String currentType = 'Tipo de usuario';
  String nombre = '';
  String apellido = '';
  String correo = '';

  void catchType(String type){
    this.currentType = type;
  }

  void add(){
    this.added = true;
  }
}
