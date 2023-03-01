import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portal/getx/province_getx.dart';

import '../shared/table_parent.dart';

class ProvinceTable extends StatelessWidget {
  ProvinceTable({Key? key}) : super(key: key);

  final getx = Get.find<ProvinceGet>();
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
                  'Province Code',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                ),
              ),
              DataColumn(
                label: Text(
                  'Province Name',
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
                            list.every((e) => e.checked!.value == true),
                          );
                        },
                      ),
                    ),
                    DataCell(
                      Text(
                        item.provinceCd ?? "",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    DataCell(
                      Text(
                        item.provinceName ?? "",
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
