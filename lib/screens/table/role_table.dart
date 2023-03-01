import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portal/getx/role_getx.dart';
import 'package:portal/screens/shared/table_parent.dart';

class RoleTable extends StatelessWidget {
  RoleTable({Key? key}) : super(key: key);
  final getx = Get.find<RoleGet>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return TableParent(
        child: SizedBox(
          width: 1400,
          child: DataTable(
            // sortColumnIndex: _currentSortColumn,
            // sortAscending: _isAscending,\
            headingRowColor: MaterialStateProperty.all(
              Color(0xFFF3F3F3),
            ),
            columns: <DataColumn>[
              DataColumn(
                label: Text(
                  'Role Code',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                ),
              ),
              DataColumn(
                label: Text(
                  'Role Name',
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
                  'Description',
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
                        item.roleCode ?? "",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    DataCell(
                      Text(
                        item.roleName ?? "",
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
                        item.description ?? "",
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
      );
    });
  }
}
