import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portal/getx/parameter_getx.dart';
import 'package:portal/screens/shared/table_parent.dart';

class ParameterTable extends StatelessWidget {
  ParameterTable({Key? key}) : super(key: key);
  final getx = Get.find<ParameterGet>();

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
                  label: Checkbox(
                    value: getx.checkAll.value,
                    onChanged: (val) {
                      getx.checkAll(val);
                      var list = getx.res.value.data ?? [];
                      if (val == true) {
                        for (var i = 0; i < list.length; i++) {
                          if (list[i].checked!.value == false) {
                            list[i].checked!(true);
                          }
                        }
                      } else {
                        list.forEach((e) => e.checked!(false));
                      }
                    },
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Parameter Code',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Parameter Name',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Parameter Detail',
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
                        Checkbox(
                          value: item.checked?.value,
                          onChanged: (val) {
                            item.checked!(val);
                            var list = getx.res.value.data ?? [];
                            getx.checkAll(
                              list.every((e) => e.checked! == true),
                            );
                          },
                        ),
                      ),
                      DataCell(
                        Text(
                          item.paramGroupCode ?? "",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                      DataCell(
                        Text(
                          item.paramGroupName ?? "",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                      DataCell(
                        Text(
                          item.paramName ?? "",
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
