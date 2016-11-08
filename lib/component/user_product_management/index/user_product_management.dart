import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';

import 'package:logistic_ui/request.dart';
import 'package:logistic_ui/providers.dart';
import 'package:logistic_ui/model.dart';

//import 'package:logistic_ui/component/user_product_management/user_product_register/user_product_register.dart';
//import 'package:logistic_ui/component/user_product_management/user_product_see_warehouse/user_product_see_warehouse.dart';

@Component(selector: 'user-product-management', viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])

@View(templateUrl: 'user_product_management.html', directives: const[ROUTER_DIRECTIVES, NgIf, NgFor])
class UserProductManagement {

  
  
}
