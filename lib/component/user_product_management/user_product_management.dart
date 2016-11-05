import 'package:angular2/angular2.dart';
import 'package:logistic_ui/model.dart';
import 'package:logistic_ui/providers.dart';
import 'package:logistic_ui/request.dart';


const List<String> _products = const [
  'ProductoA',
  'ProductoB ',
  'ProductoC',
];

@Component(
    selector: 'user-product-management',
    templateUrl: 'user_product_management.html',
    viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])

class userProductManagement {

}