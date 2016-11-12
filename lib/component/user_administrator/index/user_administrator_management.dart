import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';

import 'package:logistic_ui/request.dart';
import 'package:logistic_ui/providers.dart';
import 'package:logistic_ui/model.dart';

@Component(selector: 'user-administrator-management', viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])

@View(templateUrl: 'user_administrator_management.html', directives: const[ROUTER_DIRECTIVES, NgIf, NgFor])
class UserAdministratorManagement {



}
