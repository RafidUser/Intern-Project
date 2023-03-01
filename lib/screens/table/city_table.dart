import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:portal/getx/city_getx.dart';
import 'package:portal/screens/shared/table_parent.dart';

class CityTable extends StatelessWidget {
  CityTable({Key? key}) : super(key: key);
  final getx = Get.find<CityGet>();

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
                  'Province',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                ),
              ),
              DataColumn(
                label: Text(
                  'City Code',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                ),
              ),
              DataColumn(
                label: Text(
                  'City Name',
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
                        item.provinceCode ?? "",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    DataCell(
                      Text(
                        item.cityCd ?? "",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    DataCell(
                      Text(
                        item.cityName ?? "",
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
