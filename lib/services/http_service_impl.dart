import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:kairohealth/core/model/medicine_data.dart';
import 'package:kairohealth/core/model/test_data.dart';
import 'package:kairohealth/services/http_service.dart';

const BASE_URL = "https://chemistpoint.com/medical/";

class HttpServiceImpl implements HttpService {
  late Dio _dio;

  initializeInterceptors() {
    _dio.interceptors.add(
      InterceptorsWrapper(onError: (error, handler) {
        print(error.message);
        return handler.next(error);
      }, onRequest: (request, handler) {
        print('${request.method} | ${request.path} | ${request.data}');
        return handler.next(request);
      }, onResponse: (response, handler) {
        print(
            "${response.statusCode} | ${response.statusMessage} | ${response.data}");
        return handler.next(response);
      }),
    );
  }

  @override
  void init() {
    // TODO: implement init
    _dio = Dio(BaseOptions(baseUrl: BASE_URL));
    initializeInterceptors();
  }

  @override
  Future<Response> hitLoginApi(String url, String mobile, String token) async {
    // TODO: implement hitLoginApi
    Response response;
    try {
      response = await _dio.post(url,
          // queryParameters: {
          //   'token': token,
          //   'phone': mobile,
          // },
          data: jsonEncode({
            'token': token,
            'phone': mobile,
          }),
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          }));
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> hitRegisterApi(
    String url,
    String mobile,
    String token,
    String email,
    String role,
    String name,
  ) async {
    // TODO: implement hitRegisterApi
    Response response;
    try {
      response = await _dio.post(url,
          data: jsonEncode({
            'token': token,
            'phone': mobile,
            'name': name,
            'email': email,
            'role': role,
          }),
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          }));
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> getBannerApi(String url, String token, String type) async {
    // TODO: implement hitRegisterApi
    Response response;
    try {
      response = await _dio.post(url,
          data: jsonEncode({
            'token': token,
            'type': type,
          }),
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          }));
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> getDoctorDetailsApi(
      String url, String token, String doctorID) async {
    // TODO: implement hitRegisterApi
    Response response;
    try {
      response = await _dio.post(url,
          data: jsonEncode({
            'token': token,
            'doctorId': doctorID,
          }),
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          }));
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> hitAddPrescriptionApi(
      String url,
      String token,
      String doctorID,
      String storeID,
      String patientID,
      String patientName,
      String patientAge,
      String patientAddress,
      String patientGender,
      String advoice,
      String stateID,
      String cityID,
      List<TestData> test,
      List<AddMedicineData> medicine) async {
    // TODO: implement hitRegisterApi
    Response response;
    try {
      response = await _dio.post(url,
          data: jsonEncode({
            'token': token,
            'doctor_id': doctorID,
            'store_id': storeID,
            'patient_id': patientID,
            'patient_name': patientName,
            'patient_age': patientAge,
            'patient_address': patientAddress,
            'patient_gender': patientGender,
            'patient_state_id': stateID,
            'patient_city_id': cityID,
            'advice': advoice,
            'test': test.map((p) => p.toJson()).toList(),
            'medicine': medicine.map((p) => p.toJson()).toList(),
          }),
          options: Options(
            headers: {
              HttpHeaders.contentTypeHeader: "application/json",
            },
            contentType: Headers.jsonContentType,
          ));
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> hitAlldoctorlistApi(String url, String token) async {
    // TODO: implement hitRegisterApi
    Response response;
    try {
      response = await _dio.post(url,
          data: jsonEncode({
            'token': token,
          }),
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          }));
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> hitDiseaseListApi(String url, String token) async {
    // TODO: implement hitRegisterApi
    Response response;
    try {
      response = await _dio.post(url,
          data: jsonEncode({
            'token': token,
          }),
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          }));
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> hitDiseaseWiseDoctorListApi(
      String url, String token, String diseaseID) async {
    // TODO: implement hitRegisterApi
    Response response;
    try {
      response = await _dio.post(url,
          data: jsonEncode({
            'token': token,
            'diseaseId': token,
          }),
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          }));
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> hitMedicineListApi(String url, String token) async {
    // TODO: implement hitRegisterApi
    Response response;
    try {
      response = await _dio.post(url,
          data: jsonEncode({
            'token': token,
          }),
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          }));
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> hitPrescriptionListApi(String url, String token) async {
    // TODO: implement hitRegisterApi
    Response response;
    try {
      response = await _dio.post(url,
          data: jsonEncode({
            'token': token,
          }),
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          }));
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> hitSpcialistCategoryApi(String url, String token) async {
    // TODO: implement hitRegisterApi
    Response response;
    try {
      response = await _dio.post(url,
          data: jsonEncode({
            'token': token,
          }),
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          }));
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> hitSpecializationWiseDoctorListApi(
      String url, String token, String specializationID) async {
    // TODO: implement hitRegisterApi
    Response response;
    try {
      response = await _dio.post(url,
          data: jsonEncode({
            'token': token,
            'specializationId': specializationID,
          }),
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          }));
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> hitUploadLabTest(
      String url, String token, File upload) async {
    // TODO: implement hitRegisterApi
    Response response;
    String fileName = upload.path;

    try {
      FormData formData = FormData.fromMap({
        'token': token,
        'doc': await MultipartFile.fromFile(upload.path, filename: fileName),
      });
      response = await _dio.post(url,
          data: formData,
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          }));
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> hitUploadPrescription(
      String url, String token, File upload) async {
    // TODO: implement hitRegisterApi
    Response response;
    String fileName = upload.path;

    try {
      FormData formData = FormData.fromMap({
        'token': token,
        'doc': await MultipartFile.fromFile(upload.path, filename: fileName),
      });
      response = await _dio.post(url,
          data: formData,
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          }));
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> hitAddAddressApi(
      String url,
      String token,
      String name,
      String phone,
      String type,
      String address,
      String landmark,
      String city,
      String state,
      String pinCode) async {
    // TODO: implement hitRegisterApi
    Response response;
    try {
      response = await _dio.post(url,
          data: jsonEncode({
            'token': token,
            'name': name,
            'phone': phone,
            'type': type,
            'address': address,
            'landmark': landmark,
            'city': city,
            'state': state,
            'pincode': pinCode,
          }),
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          }));
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> hitAddFamilyApi(String url, String token, String name,
      String email, String phone, String relation, String gender) async {
    // TODO: implement hitRegisterApi
    Response response;
    try {
      response = await _dio.post(url,
          data: jsonEncode({
            'token': token,
            'name': name,
            'email': email,
            'phone': phone,
            'relation': relation,
            'gender': gender,
          }),
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          }));
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> hitAddressDetailsApi(
      String url, String token, String addressID) async {
    // TODO: implement hitRegisterApi
    Response response;
    try {
      response = await _dio.post(url,
          data: jsonEncode({
            'token': token,
            'addressId': addressID,
          }),
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          }));
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> hitAddressListApi(String url, String token) async {
    // TODO: implement hitRegisterApi
    Response response;
    try {
      response = await _dio.post(url,
          data: jsonEncode({
            'token': token,
          }),
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          }));
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> hitDrProfileUpdateApi(
      String url,
      String token,
      String name,
      String email,
      File photo,
      String specializationID,
      String experince,
      String post,
      String fee,
      String address) async {
    // TODO: implement hitRegisterApi
    Response response;
    String fileName = photo.path;
    try {
      FormData formData = FormData.fromMap({
        'token': token,
        'name': name,
        'email': email,
        'photo': await MultipartFile.fromFile(photo.path, filename: fileName),
        'specialization_id': specializationID,
        'experience': experince,
        'post': post,
        'fee': fee,
        'address': address,
      });
      response = await _dio.post(url,
          data: formData,
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          }));
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> hitFamilyListApi(String url, String token) async {
    // TODO: implement hitRegisterApi
    Response response;
    try {
      response = await _dio.post(url,
          data: jsonEncode({
            'token': token,
          }),
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          }));
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> hitMyOrderDetailsApi(
      String url, String token, String orderID) async {
    // TODO: implement hitRegisterApi
    Response response;
    try {
      response = await _dio.post(url,
          data: jsonEncode({
            'token': token,
            'orderId': orderID,
          }),
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          }));
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> hitProfileUpdateApi(
      String url, String token, String name, String email, File photo) async {
    // TODO: implement hitRegisterApi
    Response response;
    String fileName = photo.path;
    try {
      FormData formData = FormData.fromMap({
        'token': token,
        'name': name,
        'email': email,
        'photo': await MultipartFile.fromFile(photo.path, filename: fileName),
      });
      response = await _dio.post(
        url,
        data: formData,
      );
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> hitRemoveAddressApi(
      String url, String token, String addressID) async {
    // TODO: implement hitRegisterApi
    Response response;
    try {
      response = await _dio.post(url,
          data: jsonEncode({
            'token': token,
            'addressId': addressID,
          }),
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          }));
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> hitUserDataApi(String url, String token) async {
    // TODO: implement hitRegisterApi
    Response response;
    try {
      response = await _dio.post(url,
          data: jsonEncode({
            'token': token,
          }),
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          }));
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> hitAddressRemoveApi(
      String url, String token, String addressId) async {
    // TODO: implement hitRegisterApi
    Response response;
    try {
      response = await _dio.post(url,
          data: jsonEncode({
            'token': token,
            'addressId': addressId,
          }),
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          }));
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> hitCityApi(String url, String token) async {
    // TODO: implement hitRegisterApi
    Response response;
    try {
      response = await _dio.post(url,
          data: jsonEncode({
            'token': token,
          }),
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          }));
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> hitDrWisePatientListApi(String url, String token) async {
    // TODO: implement hitRegisterApi
    Response response;
    try {
      response = await _dio.post(url,
          data: jsonEncode({
            'token': token,
          }),
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          }));
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> hitEditFamilyApi(String url, String token, String name,
      String email, String phone, String relation, String gender) async {
    // TODO: implement hitRegisterApi
    Response response;
    try {
      response = await _dio.post(url,
          data: jsonEncode({
            'token': token,
            'name': name,
            'email': email,
            'phone': phone,
            'relation': relation,
            'gender': gender,
          }),
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          }));
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> hitPrescriptionList(String url, String token) async {
    // TODO: implement hitRegisterApi
    Response response;
    try {
      response = await _dio.post(url,
          data: jsonEncode({
            'token': token,
          }),
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          }));
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> hitSatesApi(String url, String token) async {
    // TODO: implement hitRegisterApi
    Response response;
    try {
      response = await _dio.post(url,
          data: jsonEncode({
            'token': token,
          }),
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          }));
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> hitStateWiseCityApi(
      String url, String token, String stateID) async {
    // TODO: implement hitRegisterApi
    Response response;
    try {
      response = await _dio.post(url,
          data: jsonEncode({
            'token': token,
            'stateID': stateID,
          }),
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          }));
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> hitLabReportByPrescriptionApi(
      String url, String token, String prescriptionID) async {
    // TODO: implement hitRegisterApi
    Response response;
    try {
      response = await _dio.post(url,
          data: jsonEncode({
            'token': token,
            'PrescriptionId': prescriptionID,
          }),
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          }));
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> hitCallRequestApi(
      String url, String token, String patientID, String docID) async {
    // TODO: implement hitRegisterApi
    Response response;
    try {
      response = await _dio.post(url,
          data: jsonEncode({
            'token': token,
            'patientId': patientID,
            'doctorId': docID,
          }),
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          }));
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> hitTestListApi(String url, String token) async {
    // TODO: implement hitRegisterApi
    Response response;
    try {
      response = await _dio.post(url,
          data: jsonEncode({
            'token': token,
          }),
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          }));
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }
}
