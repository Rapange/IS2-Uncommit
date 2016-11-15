library logistic_ui.logistic_app;

import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';

import 'package:logistic_ui/component/logistic_app.dart';
import 'package:logistic_ui/providers.dart';
import 'package:logistic_ui/model.dart';
import 'package:logistic_ui/request.dart';

@Component(
    selector: 'log-in',
    viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])
@View(templateUrl: 'login.html',
    directives: const[ROUTER_DIRECTIVES, NgIf, NgFor])
class LogIn implements AfterViewInit {
  ApplicationService applicationService;
  @ViewChild(LogisticApp)
  LogisticApp headerPanel;
  bool isLoading = true;
  bool added = false;
  bool init= false;
  int isWhat = 0;
  void checkProvider(){
    window.open("http://www.google.com", "google");
    //isWhat = 1;
    applicationService.getProvider('juan').then((List<UserProvider> provider){
        if(provider.length == 1) {isWhat = 1;}
    });
  }
}
