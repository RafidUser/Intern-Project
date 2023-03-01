// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
// import 'package:portal/screens/shared/table_parent.dart';

// class SupportedPICTable extends StatelessWidget {
//   const SupportedPICTable({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Obx(() {
//       return TableParent(
//         child: SizedBox(
//           width: 1400,
//           child: DataTable(
//             // sortColumnIndex: _currentSortColumn,
//             // sortAscending: _isAscending,\
//             headingRowColor: MaterialStateProperty.all(
//               Color(0xFFF3F3F3),
//             ),
//             columns: <DataColumn>[
//               DataColumn(
//                 label: Text(
//                   'Company Code',
//                   style: TextStyle(
//                     fontSize: 13,
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//               DataColumn(
//                 label: Text(
//                   'Company Name',
//                   style: TextStyle(
//                     fontSize: 13,
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//               DataColumn(
//                 label: Text(
//                   'PIC (Name, Phone No, Email)',
//                   style: TextStyle(
//                     fontSize: 13,
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
              
//               DataColumn(
//                 label: Text(
//                   'Created By',
//                   style: TextStyle(
//                     fontSize: 13,
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//               DataColumn(
//                 label: Text(
//                   'Created Date',
//                   style: TextStyle(
//                     fontSize: 13,
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//               DataColumn(
//                 label: Text(
//                   'Changed By',
//                   style: TextStyle(
//                     fontSize: 13,
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//               DataColumn(
//                 label: Text(
//                   'Changed Date',
//                   style: TextStyle(
//                     fontSize: 13,
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//             ],
//             rows: getx.res.value.data!.map(
//               (item) {
//                 return DataRow(
//                   color: MaterialStateProperty.all(Colors.white),
//                   cells: [
//                     DataCell(
//                       Text(
//                         item.objectCode ?? "",
//                         style: TextStyle(
//                           fontSize: 12,
//                         ),
//                       ),
//                     ),
//                     DataCell(
//                       Text(
//                         item.objectName ?? "",
//                         style: TextStyle(
//                           fontSize: 12,
//                         ),
//                       ),
//                     ),
//                     DataCell(
//                       Text(
//                         item.objectTypeName ?? "",
//                         style: TextStyle(
//                           fontSize: 12,
//                         ),
//                       ),
//                     ),
//                     DataCell(
//                       Text(
//                         item.description ?? "",
//                         style: TextStyle(
//                           fontSize: 12,
//                         ),
//                       ),
//                     ),
//                     DataCell(
//                       Text(
//                         item.companyName ?? "",
//                         style: TextStyle(
//                           fontSize: 12,
//                         ),
//                       ),
//                     ),
//                     DataCell(
//                       Text(
//                         item.createdBy ?? "",
//                         style: TextStyle(
//                           fontSize: 12,
//                         ),
//                       ),
//                     ),
//                     DataCell(
//                       Text(
//                         item.createdTime ?? "",
//                         style: TextStyle(
//                           fontSize: 12,
//                         ),
//                       ),
//                     ),
//                     DataCell(
//                       Text(
//                         item.updatedBy ?? "",
//                         style: TextStyle(
//                           fontSize: 12,
//                         ),
//                       ),
//                     ),
//                     DataCell(
//                       Text(
//                         item.updatedTime ?? "",
//                         style: TextStyle(
//                           fontSize: 12,
//                         ),
//                       ),
//                     ),
//                   ],
//                 );
//               },
//             ).toList(),
//           ),
//         ),
//       );
//     });
//   }
// }