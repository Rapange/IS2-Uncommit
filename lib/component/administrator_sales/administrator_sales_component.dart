library logistic_ui.administrator_sales_component;

import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';

import 'package:logistic_ui/request.dart';
import 'package:logistic_ui/providers.dart';
import 'package:logistic_ui/model.dart';

@Component(selector: 'header-panel-admnistrator-sales', viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])
@View(templateUrl: 'administrator_sales_component.html', directives: const[ROUTER_DIRECTIVES, NgIf, NgFor])

class HeaderAdmnistratorSalesPanel implements AfterViewInit {
  ApplicationService applicationService;
  ApplicationInfo applicationInfo;// = new ApplicationInfo(name: "DEFAULT APP NAME");

  HeaderAdmnistratorSalesPanel(ApplicationService this.applicationService);

  void ngAfterViewInit() {
    applicationService.getApplicationInfo().then((ApplicationInfo appInfo) {
      applicationInfo = appInfo;
    });
  }
}
