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
  bool init= false;
  List<String> groups = ['Grupo 1', 'Grupo 2', 'Grupo 3'];
  List<String> subGroups = ['Subgrupo 1','Subgrupo 2'];
  String currentGroup = 'Grupo';
  String currentSubGroup = 'Subgrupo';
  String descripcion = '';
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

  void catchGroup(String group){
    this.currentGroup = group;
  }

  void catchSubGroup(String subGroup){
    this.currentSubGroup = subGroup;
  }

  void add(){
    this.added = true;
  }
  void addProvider(){

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
