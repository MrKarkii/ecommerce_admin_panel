



import 'package:admin_panel_true/services/database_service.dart';
import 'package:get/get.dart';

import '../models/models.dart';

class OrderController extends GetxController{
final DatabaseService database = DatabaseService();

var orders = <Order> [].obs;
var pendingOrders = <Order> [].obs;

 @override
 void onInit(){
  orders.bindStream(database.getOrders());
  pendingOrders.bindStream(database.getPendingOrders());
  super.onInit();
 }

 void updateOrder(
  Order order,
  String field,
  bool value,
 ){
  database.updateOrder(order,field,value);
 }
}