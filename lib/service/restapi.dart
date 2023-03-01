import 'package:portal/service/api_url.dart';
import 'package:portal/service/dio_util.dart';

class RestApi extends UrlAPI {
  DioUtil dio = DioUtil();

  Future<dynamic> inquirySettingGroup(Map<String, dynamic> body) async {
    return await dio.post(
      uri: searchSettingGroup,
      body: body,
    );
  }

  Future<dynamic> addSettingGroup(Map<String, dynamic> body) async {
    return await dio.post(
      uri: insertSettingGroup,
      body: body,
    );
  }

  Future<dynamic> updatedSettingGroup(Map<String, dynamic> body) async {
    return await dio.post(
      uri: updateSettingGroup,
      body: body,
    );
  }

  Future<dynamic> downloadTemplatedSettingGroup() async {
    return await dio.post(
      uri: downloadTemplateSettingGroup,
    );
  }

  Future<dynamic> deleteSettingGroup(Map<String, dynamic> body) async {
    return await dio.post(
      uri: delSettingGroup,
      body: body,
    );
  }

  Future<dynamic> inquirySetting(Map<String, dynamic> body) async {
    return await dio.post(
      uri: searchDataSetting,
      body: body,
    );
  }

  Future<dynamic> addSetting(Map<String, dynamic> body) async {
    return await dio.post(
      uri: insertSetting,
      body: body,
    );
  }

  Future<dynamic> updatedSetting(Map<String, dynamic> body) async {
    return await dio.post(
      uri: updateSetting,
      body: body,
    );
  }

  Future<dynamic> deleteSetting(Map<String, dynamic> body) async {
    return await dio.post(
      uri: delSetting,
      body: body,
    );
  }

  Future<dynamic> downloadTemplatedSetting() async {
    return await dio.post(
      uri: downloadTemplateSetting,
    );
  }

  Future<dynamic> getSettingGroupedCode(Map<String, dynamic> body) async {
    return await dio.post(
      uri: getSettingGroupCode,
    );
  }

  Future<dynamic> inquiryParameter(Map<String, dynamic> body) async {
    return await dio.post(
      uri: searchParameter,
      body: body,
    );
  }

  Future<dynamic> deleteParameterGroup(Map<String, dynamic> body) async {
    return await dio.post(
      uri: deleteParamGroup,
      body: body,
    );
  }

  Future<dynamic> inquiryRole(Map<String, dynamic> body) async {
    return await dio.post(
      uri: searchRole,
      body: body,
    );
  }

  Future<dynamic> inquiryProvince(Map<String, dynamic> body) async {
    return await dio.post(
      uri: searchProvince,
      body: body,
    );
  }

  Future<dynamic> downloadTemplatedProvince() async {
    return await dio.post(
      uri: downloadTemplateProvince,
    );
  }

  Future<dynamic> inquiryCity(Map<String, dynamic> body) async {
    return await dio.post(
      uri: searchCity,
      body: body,
    );
  }

  Future<dynamic> downloadTemplatedCity() async {
    return await dio.post(
      uri: downloadTemplateCity,
    );
  }

  Future<dynamic> inquiryCompany(Map<String, dynamic> body) async {
    return await dio.post(
      uri: searchCompany,
      body: body,
    );
  }

  Future<dynamic> downloadTemplatedCompany() async {
    return await dio.post(
      uri: downloadTemplateCompany,
    );
  }

  Future<dynamic> inquirysupportedobject(Map<String, dynamic> body) async {
    return await dio.post(
      uri: searchSupportedObject,
      body: body,
    );
  }

  Future<dynamic> inquirymenu(Map<String, dynamic> body) async {
    return await dio.post(
      uri: searchMenu,
      body: body,
    );
  }
}
