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
    selector: 'product-sales-form',
    templateUrl: 'product_sales_form_component.html',
    viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])

class ProductSalesFormComponent {
  List<String> get products => _products;
  bool submitted = false;
  ProductSales model = new ProductSales(1,"Caja",100,17,1,_products[0]);
  onSubmit() {
    submitted = true;
  }
}





/*

@Component(selector: 'user-panel', templateUrl: 'user_panel.html', viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])
class UserPanel implements AfterViewInit {
  List<User> users;
  User selectedUser;
  ApplicationService applicationService;

  UserPanel(this.applicationService);

  void ngAfterViewInit() {
    applicationService.getUsers().then((List<User> users) {
      this.users = users;
    });
  }

  void set data(List<User> users) {
    this.users = users;
  }

  void onSelect(User user) {
    this.selectedUser = user;
  }
}
*/
