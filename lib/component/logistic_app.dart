library logistic_ui.logistic_app;

import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';

import 'package:logistic_ui/component/user/user_panel.dart';
import 'package:logistic_ui/component/administrator_sales/product_sales_form_component.dart';/*Incluyendo Componente ProductoSales*/
import 'package:logistic_ui/component/administrator_sales/report_sales.dart';/*Incluyendo Componente ProductoSales*/

import 'package:logistic_ui/component/administrator_sales/product_out_form_component.dart'; /*Incluyendo Componente ProdcutsOut*/
import 'package:logistic_ui/component/administrator_sales/product_reportOut_component.dart';

import 'package:logistic_ui/component/header_panel.dart';
import 'package:logistic_ui/component/footer_panel.dart';
import 'package:logistic_ui/providers.dart';
import 'package:logistic_ui/model.dart';
import 'package:logistic_ui/request.dart';


//import for user_administrator
import 'package:logistic_ui/component/user_administrator/user_administrator_register/user_administrator_register.dart';
import 'package:logistic_ui/component/user_administrator/user_administrator_modify/user_administrator_modify.dart';

//import for user_product
import 'package:logistic_ui/component/user_product_management/user_product_register/user_product_register.dart';
import 'package:logistic_ui/component/user_product_management/user_product_see_warehouse/user_product_see_warehouse.dart';
import 'package:logistic_ui/component/user_product_management/user_product_provider_register/user_product_provider_register.dart';
import 'package:logistic_ui/component/user_product_management/user_product_type_register/user_product_type_register.dart';

@Component(
    selector: 'logistic-app',
    templateUrl: 'logistic_app.html',
    directives: const [ROUTER_DIRECTIVES, HeaderPanel, FooterPanel],
    viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])

/*route for user_administrator
@RouteConfig(const [
  const Route(path: '/', component: HomeComp, name: 'Home'),
  const Route(path: '/about', component: About, name: 'About'),
  const Route(path: '/user', component: UserPanel, name: 'Users'),
  const Route(path: '/user_administrator/user_administrator_register', component: UserAdministratorRegister, name: 'Register'),
  const Route(path: '/user_administrator/user_administrator_modify', component: UserAdministratorModify, name: 'Modified'),
])*/

//route for user_product_management
@RouteConfig(const [
  const Route(path: '/', component: HomeComp, name: 'Home'),
  const Route(path: '/about', component: About, name: 'About'),
  const Route(path: '/user', component: UserPanel, name: 'Users'),
  const Route(path: '/formSales', component: ProductSalesFormComponent, name: 'ProductsSale'),
  const Route(path: '/formOut', component: ProductOutFormComponent, name: 'ProductsOut'),
  const Route(path: '/reportSales', component: ReportSalesComponent, name: 'ReportSales'),
  const Route(path: '/reportOut', component: ProductOutReportComponent, name: 'ReportOut'),

  const Route(path: '/user_product_management/user_product_register', component: UserProductRegister, name: 'Register'),
  const Route(path: '/user_product_management/user_product_see_warehouse', component: UserProductSeeWarehouse, name: 'Warehouse'),
  const Route(path: '/user_product_management/user_product_provider_register', component: UserProductProviderRegister, name: 'Provider'),
  const Route(path: '/user_product_management/user_product_type_register', component: UserProductTypeRegister, name: 'Type'),
  const Route(path: '/user_administrator/user_administrator_register', component: UserAdministratorRegister, name: 'Register'),
  const Route(path: '/user_administrator/user_administrator_modify', component: UserAdministratorModify, name: 'Modified'),
])

class LogisticApp implements AfterViewInit {
  ApplicationService applicationService;
  int userType = 0;
  @ViewChild(HeaderPanel)
  HeaderPanel headerPanel(3);
  bool isLoading = true;
  bool added = false;
  bool init= false;
  
  String userAccount;
  String userPassword;
  @ViewChild(FooterPanel)
  FooterPanel footerPanel;
  User user;


  Router router;

  LogisticApp(Router this.router, ApplicationService this.applicationService) {}

  void ngAfterViewInit() {
    isLoading = false;
  }

  void checkUser(String account, String password){
    //userType = 1;
	applicationService.getUserByAccount(account).then((User user){
        if(user.password == userPassword){
            this.user = user;
            this.userType = user.user_type;
            return true;
        }
        return;
    });
  }
  
  void goAbout() {
    router.navigate(['About']);
  }

  void set dataUser(User user){
    this.user = user;
  }
}

@Component(selector: 'd')
@View(template: '<div>Welcome {{name}}!</div>')
class HomeComp {
  String name;
  HomeComp() : name = 'Logistic Application' {}
}

@Component(selector: 'about-h')
@View(template: '<div>&copy;  2016 - Logistic App</div>')
class About {}
