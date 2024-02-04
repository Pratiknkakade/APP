//import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterViewController extends GetxController {
  var x = 0.obs;
  void increment() {
    x++;
    // x.value++;
  }

  void decrement() {
    x--;
    // x.value--;
  }

  // void setX(int value) {
  //   x = value;
  // }
}
