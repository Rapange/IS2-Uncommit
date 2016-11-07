import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';

import 'package:logistic_ui/request.dart';
import 'package:logistic_ui/providers.dart';
import 'package:logistic_ui/model.dart';

import 'package:logistic_ui/component/user_product_management/user_product_register/user_product_register.dart';


@Component(selector: 'user-product-management', directives: const [ROUTER_DIRECTIVES], viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])
@RouteConfig(const [
  const Route(path: '/user_product_management/user_product_register', component: UserProductRegister, name: 'ProductRegistration'),
])
@View(templateUrl: 'user_product_management.html', directives: const[ROUTER_DIRECTIVES, NgIf, NgFor])
class UserProductManagement {

  Router router;

  UserProductManagement(Router this.router) {}

  var option = 0;
  void registerNewProduct(){
    this.option = 1;
  }

  void registerNewProductType(){
    this.option = 2;
  }

  void registerNewProvider(){
    this.option = 3;
  }

  void seeWarehouse(){
    this.option = 4;
  }
  
}
