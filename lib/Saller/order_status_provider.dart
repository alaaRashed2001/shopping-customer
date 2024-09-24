import 'package:flutter/material.dart';

import 'enums_order_status.dart';

class OrderStatusProvider with ChangeNotifier {
  OrderStatus _orderStatus = OrderStatus.displayed;

  OrderStatus get orderStatus => _orderStatus;

  void updateOrderStatus(OrderStatus status) {
    _orderStatus = status;
    notifyListeners();
  }
}