library logistic_ui.logistic_app;

import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';

import 'package:logistic_ui/component/user/user_panel.dart';
import 'package:logistic_ui/component/administrator_sales/product_sales_form_component.dart';/*Incluyendo Componente ProductoSales*/

import 'package:logistic_ui/component/administrator_sales/product_out_form_component.dart'; /*Incluyendo Componente ProdcutsOut*/


import 'package:logistic_ui/component/header_panel.dart';
import 'package:logistic_ui/component/footer_panel.dart';
import 'package:logistic_ui/providers.dart';

@Component(
    selector: 'logistic-app',
    templateUrl: 'logistic_app.html',
    directives: const [ROUTER_DIRECTIVES, HeaderPanel, FooterPanel],
    viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])
@RouteConfig(const [
  const Route(path: '/', component: HomeComp, name: 'Home'),
  const Route(path: '/about', component: About, name: 'About'),
  const Route(path: '/user', component: UserPanel, name: 'Users'),
  const Route(path: '/formSales', component: ProductSalesFormComponent, name: 'ProductsSale'),
  const Route(path: '/formOut', component: ProductOutFormComponent, name: 'ProductsOut'),
])

class LogisticApp implements AfterViewInit {
  @ViewChild(HeaderPanel)
  HeaderPanel headerPanel;
  bool isLoading = true;

  @ViewChild(FooterPanel)
  FooterPanel footerPanel;



  Router router;

  LogisticApp(Router this.router) {}

  void ngAfterViewInit() {
    isLoading = false;
  }

  void goAbout() {
    router.navigate(['About']);
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
