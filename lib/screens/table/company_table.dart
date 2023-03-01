import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:portal/getx/company_getx.dart';
import 'package:portal/screens/shared/table_parent.dart';

class ComapnyTable extends StatelessWidget {
  ComapnyTable({Key? key}) : super(key: key);

  final getx = Get.find<CompanyGet>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return TableParent(
        child: SizedBox(
          width: 1400,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              // sortColumnIndex: _currentSortColumn,
              // sortAscending: _isAscending,\
              headingRowColor: MaterialStateProperty.all(
                Color(0xFFF3F3F3),
              ),
              columns: <DataColumn>[
                DataColumn(
                  label: Text(
                    'Company Code',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Company Name',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Type',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Business',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Address',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Created By',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Created Date',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Changed By',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Changed Date',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
              rows: getx.res.value.data!.map(
                (item) {
                  return DataRow(
                    color: MaterialStateProperty.all(Colors.white),
                    cells: [
                      DataCell(
                        Text(
                          item.companyCd ?? "",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                      DataCell(
                        Text(
                          item.companyName ?? "",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                      DataCell(
                        Text(
                          item.type ?? "",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                      DataCell(
                        Text(
                          item.business ?? "",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                      DataCell(
                        Text(
                          item.address ?? "",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                      DataCell(
                        Text(
                          item.createdBy ?? "",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                      DataCell(
                        Text(
                          item.createdTime ?? "",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                      DataCell(
                        Text(
                          item.updatedBy ?? "",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                      DataCell(
                        Text(
                          item.updatedTime ?? "",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ).toList(),
            ),
          ),
        ),
      );
    });
  }
}
