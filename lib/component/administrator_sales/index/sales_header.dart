import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';

import 'package:logistic_ui/model.dart';
import 'package:logistic_ui/providers.dart';
import 'package:logistic_ui/request.dart';


@Component(
    selector: 'sales-header',
    templateUrl: 'sales_header.html',
    viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])

//@View(templateUrl:'sales_header.html',directives: const[ROUTER_DIRECTIVES, NgIf, NgFor] )
class SalesHeader {


}
