library logistic_ui.logistic_app;

import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';

import 'package:logistic_ui/component/user/user_panel.dart';
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
])
class LogisticApp implements AfterViewInit {
  @ViewChild(HeaderPanel)
  HeaderPanel headerPanel;
  bool isLoading = true;
  bool added = false;
  bool modified = false;
  //Variables para registrar un usuario
  List<String> type = ['Administrador de Ventas', 'Administrador de Producto'];
  String currentType = 'Tipo de usuario';
  String nombre = '';
  String apellido = '';
  String correo = '';
  //Variables para modificar un usuario
  List<String> ids = ['1', '2', '3', '4'];
  String currentIds = 'ID de usuario';
  String mnombre = '';
  String mapellido = '';
  String mcorreo = '';

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

  void catchType(String type){
    this.currentType = type;
  }

  void catchIds(String ids){
    this.currentIds = ids;
  }
  void add(){
    this.added = true;
  }
  void modify(){
    this.modified = true;
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
