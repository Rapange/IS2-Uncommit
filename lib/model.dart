library logistic_ui.model;

import 'package:dartson/dartson.dart';
import 'package:intl/intl.dart';

@Entity()
class ApplicationInfo {
  String name;
  String version;
  ApplicationBuildInfo buildInfo;
  ApplicationInfo({this.name, this.version, this.buildInfo});
}

@Entity()
class ApplicationBuildInfo {
  static final DateFormat _formatter = new DateFormat("yyyy-MM-dd HH:mm:ss");
  String revision;
  String branch;
  DateTime buildTime;
  String get formattedBuildTime => _formatter.format(buildTime);
  int get year => buildTime.year;
  ApplicationBuildInfo({this.revision, this.branch, this.buildTime});
}

@Entity()
class User {
  int id;
  String firstName;
  String lastName;
  String email;
  String get name => "$firstName $lastName";
}

@Entity()
class ProductSales {
  int idProduct;
  String name;
  int  price;
  int  quantity;
  bool avaible;
  String productType;
  ProductSales(this.idProduct, this.name, this.price, this.quantity, this.avaible, this.productType);
}


@Entity()
class ProductOut {
  String name;
  int quantity;
  String receiver;
  String phone;
  ProductOut(this.name, this.quantity,this.receiver,this.phone);
}
