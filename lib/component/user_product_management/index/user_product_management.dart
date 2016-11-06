

import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';

import 'package:logistic_ui/request.dart';
import 'package:logistic_ui/providers.dart';
import 'package:logistic_ui/model.dart';

//@Component(selector: 'user-product-management', viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])
//@View(templateUrl: 'user_product_management.html', directives: const[ROUTER_DIRECTIVES, NgIf, NgFor])
@Component(selector: 'user-product-management', templateUrl: 'user_product_management.html', viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])
class UserProductManagement implements AfterViewInit {
  //ApplicationService applicationService;
  //ApplicationInfo applicationInfo;// = new ApplicationInfo(name: "DEFAULT APP NAME");
  //UserProductManagement(ApplicationService this.applicationService);

  var option = 0;
  /*void ngAfterViewInit() {
    applicationService.getApplicationInfo().then((ApplicationInfo appInfo) {
      applicationInfo = appInfo;
    });
  }*/
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
