library logistic_ui.header_panel;

import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';

import 'package:logistic_ui/request.dart';
import 'package:logistic_ui/providers.dart';
import 'package:logistic_ui/model.dart';
import 'package:logistic_ui/component/user_administrator/index/user_administrator_management.dart';
import 'package:logistic_ui/component/user_product_management/index/user_product_management.dart';
import 'package:logistic_ui/component/administrator_sales/index/sales_header.dart';
import 'package:logistic_ui/component/user_administrator/index/user_administrator_management.dart';


@Component(selector: 'header-panel', viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])
@View(templateUrl: 'header_panel.html', directives: const[ROUTER_DIRECTIVES, UserProductManagement, UserAdministratorManagement, SalesHeader, NgIf, NgFor])
class HeaderPanel implements AfterViewInit {
  ApplicationService applicationService;
  ApplicationInfo applicationInfo;// = new ApplicationInfo(name: "DEFAULT APP NAME");
  int userType = 0;
  HeaderPanel(int userType, [ApplicationService this.applicationService]) {this.userType = userType;}//, Router this.router);
  

  /*Para user_administrator*/
  @ViewChild(UserAdministratorManagement)
  UserAdministratorManagement userAdministratorManagement;
  @ViewChild(SalesHeader)
  SalesHeader salesHeader;
  


  void ngAfterViewInit() {
    applicationService.getApplicationInfo().then((ApplicationInfo appInfo) {
      applicationInfo = appInfo;
    });
  }
}
