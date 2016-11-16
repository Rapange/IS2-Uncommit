//library logistic_ui.logistic_app;

import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';

import 'package:logistic_ui/component/logistic_app.dart';
import 'package:logistic_ui/providers.dart';
import 'package:logistic_ui/model.dart';
import 'package:logistic_ui/request.dart';

/*@Component(
    selector: 'log-in',
    viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])
@View(templateUrl: 'login.html',
    directives: const[ROUTER_DIRECTIVES, NgIf, NgFor])*/
@Component(selector: 'log-in', templateUrl: 'login.html', directives: const [ROUTER_DIRECTIVES, NgIf, NgFor, LogisticApp], viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])
class LogIn implements AfterViewInit {
  ApplicationService applicationService;
  @ViewChild(LogisticApp)
  LogisticApp headerPanel;

  UserProvider userProvider;
  User user;
  
  bool isLoading = true;
  bool added = false;
  bool init= false;
  int isWhat = 0;
  String userAccount;
  String userPassword;
  int userType = 0;

  LogIn(this.applicationService);

  void ngAfterViewInit(){
        isWhat = 0;
  }
  void checkProvider(){
    //window.open("http://www.google.com", "google");
    print('hola');
    //isWhat = 3;
    applicationService.getUserProvider('juan').then((List<UserProvider> userProvider){
        /*if(userProvider != null) {isWhat = 1;}
        if(userProvider == null) {isWhat = 2;}*/
        this.userProvider = userProvider[0];
        print((userProvider[0]).name_proveedor);
        isWhat = userProvider.length; 
    });
  }

  bool checkUser(String account, String password){
    applicationService.getUserByAccount(account).then((User user){
        if(user.password == userPassword){
            print('Si');
            this.user = user;
            this.userType = user.user_type;
            return true;
        }
        return false;
    });
  }
  
  void set data(UserProvider userProvider) {
    this.userProvider = userProvider;
  }

  void set dataUser(User user){
    this.user = user;
  }
}
