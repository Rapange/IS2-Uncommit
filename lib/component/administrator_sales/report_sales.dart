import 'package:angular2/angular2.dart';
import 'package:logistic_ui/model.dart';
import 'package:logistic_ui/providers.dart';
import 'package:logistic_ui/request.dart';


@Component(
    selector: 'report-sales',
    templateUrl: 'report_sales.html',
    viewProviders: const [LOGISTIC_SERVICE_PROVIDERS])

class ReportSalesComponent {
    bool search= false;//podria no necesitarlo y al ingresar mostrrar un reporte en una fecha por default
    //ProductOut model = new ProductOut("pintura",10,"Almacen Arequipa","0541235");
    //onSubmit() {
    //    submitted = true;
    //}
}
