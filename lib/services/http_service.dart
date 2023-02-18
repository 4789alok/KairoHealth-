import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:kairohealth/core/model/medicine_data.dart';
import 'package:kairohealth/core/model/test_data.dart';

abstract class HttpService {
  void init();
  Future<Response> hitLoginApi(String url, String mobile, String token);
  Future<Response> hitRegisterApi(String url, String mobile, String token,
      String email, String role, String name);
  Future<Response> hitAlldoctorlistApi(
    String url,
    String token,
  );
  Future<Response> hitSpcialistCategoryApi(
    String url,
    String token,
  );
  Future<Response> hitDiseaseListApi(
    String url,
    String token,
  );
  Future<Response> hitSpecializationWiseDoctorListApi(
    String url,
    String token,
    String specializationID,
  );
  Future<Response> hitDiseaseWiseDoctorListApi(
    String url,
    String token,
    String diseaseID,
  );
  Future<Response> getDoctorDetailsApi(
    String url,
    String token,
    String doctorID,
  );
  Future<Response> getBannerApi(
    String url,
    String token,
    String type,
  );
  Future<Response> hitMedicineListApi(
    String url,
    String token,
  );
  Future<Response> hitPrescriptionListApi(
    String url,
    String token,
  );
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
    String advice,
    String stateID,
    String cityID,
    List<TestData> test,
    List<AddMedicineData> medicine,
  );

  Future<Response> hitUploadPrescription(
    String url,
    String token,
    File upload,
  );
  Future<Response> hitUploadLabTest(
    String url,
    String token,
    File upload,
  );
  Future<Response> hitMyOrderDetailsApi(
    String url,
    String token,
    String orderID,
  );
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
    String pinCode,
  );
  Future<Response> hitAddressDetailsApi(
    String url,
    String token,
    String addressID,
  );
  Future<Response> hitAddressListApi(
    String url,
    String token,
  );

  Future<Response> hitRemoveAddressApi(
    String url,
    String token,
    String addressID,
  );
  Future<Response> hitAddFamilyApi(
    String url,
    String token,
    String name,
    String email,
    String phone,
    String relation,
    String gender,
  );
  Future<Response> hitFamilyListApi(
    String url,
    String token,
  );
  Future<Response> hitUserDataApi(
    String url,
    String token,
  );

  Future<Response> hitProfileUpdateApi(
    String url,
    String token,
    String name,
    String email,
    File photo,
  );

  Future<Response> hitSatesApi(
    String url,
    String token,
  );
  Future<Response> hitCityApi(
    String url,
    String token,
  );
  Future<Response> hitStateWiseCityApi(
    String url,
    String token,
    String stateID,
  );
  Future<Response> hitAddressRemoveApi(
    String url,
    String token,
    String addressId,
  );
  Future<Response> hitEditFamilyApi(
    String url,
    String token,
    String name,
    String email,
    String phone,
    String relation,
    String gender,
  );

  Future<Response> hitPrescriptionList(
    String url,
    String token,
  );
  Future<Response> hitLabReportByPrescriptionApi(
    String url,
    String token,
    String prescriptionID,
  );
  Future<Response> hitCallRequestApi(
    String url,
    String token,
    String patientID,
    String docID,
  );
  Future<Response> hitTestListApi(
    String url,
    String token,
  );
  //---------------- Doctor Api ------------------
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
    String address,
  );
  Future<Response> hitDrWisePatientListApi(
    String url,
    String token,
  );
}
