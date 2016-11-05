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
    selector: 'user-new-product',
    templateUrl: 'user_new_product.html',
    viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])

class userProductNewProduct {

}