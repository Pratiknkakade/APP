// import 'dart:ffi';

// import 'package:get/get.dart';

// class NameController extends GetxController {
//   var input = ''.obs;
//   var nameErrorText = ''.obs;
//   var numberErrorText = ''.obs;

//   void setInput(String str) {
//     input.value = str;
//     validateName();
//   }

//   void setnumber(String len) {
//     input.val = len;
//     validatenumber();
//   }

//   void validateName() {
//     print(nameErrorText);
//     if (input.value.length <= 5) {
//       {
//         nameErrorText.value = 'Name must be greater than 5 characters';
//       }
//     } else {
//       {
//         nameErrorText.value = '';
//       }
//       ;
//     }
//   }
// }

// void validatenumber() {
//   if (input.value.length != 10) {
//     numberErrorText.value = 'Number must be greater than 10 characters';
//   } else {
//     numberErrorText.value = '';
//   }
//   ;
// }
