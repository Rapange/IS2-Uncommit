import 'package:angular2/angular2.dart';
import 'package:logistic_ui/model.dart';
import 'package:logistic_ui/providers.dart';
import 'package:logistic_ui/request.dart';


@Component(
    selector: 'product-out-form',
    templateUrl: 'product_out_form_component.html',
    viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])

class ProductOutFormComponent {
  bool submitted = false;
  ProductOut model = new ProductOut('pintura',10,'Almacen Arequipa','0541235');
    onSubmit() {
	submitted = true;
    }
}
