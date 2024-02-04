// import 'package:app/nameWork/NameController.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class NameView extends StatelessWidget {
//   NameView({super.key});
//   TextEditingController _nameController = new TextEditingController();
//   final NameController errorController = Get.put(NameController());
//   TextEditingController numbercontroller = new TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Obx(
//             () => TextField(
//               controller: _nameController,
//               onChanged: (str) {
//                 errorController.setInput(str);
//               },
//               decoration: InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'Name ',
//                   errorText: errorController.nameErrorText.isEmpty
//                       ? null
//                       : errorController.nameErrorText.toString()),
//             ),
//           ),
//           SizedBox(
//             height: 16,
//           ),
//           Obx(() => TextField(
//                 controller: numbercontroller,
//                 onChanged: (str1) {
//                   errorController.setnumber(str1);
//                 },
//                 decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'Number',
//                     errorText: errorController.validatenumber.isEmpty
//                         ? null
//                         : errorController.validatenumber.toString()),
//               )),
//           SizedBox(
//             height: 16,
//           ),
//           ElevatedButton(
//               onPressed: () {
//                 if (errorController.nameErrorText.isNotEmpty) {
//                   {
//                     // errorController.nameErrorText =
//                     //     'Name must be greater than 5';
//                   }
//                   ;
//                   print('fill all detaills ');
//                 } else {
//                   String name = _nameController.text;

//                   print('Name : $name');
//                 }
//               },
//               child: Text('submit'))
//         ],
//       ),
//     );
//   }
// }

















