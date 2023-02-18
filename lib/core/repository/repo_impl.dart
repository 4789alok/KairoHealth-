import 'dart:io';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:kairohealth/core/model/medicine_data.dart';
import 'package:kairohealth/core/model/test_data.dart';
import 'package:kairohealth/core/repository/repo.dart';
import 'package:kairohealth/models/addressData.dart';
import 'package:kairohealth/models/cityData.dart';
import 'package:kairohealth/models/doctorListData.dart';
import 'package:kairohealth/models/doctorData.dart';
import 'package:kairohealth/models/diseaseListData.dart';
import 'package:kairohealth/models/bannerData.dart';
import 'package:kairohealth/models/familyData.dart';
import 'package:kairohealth/models/labReportData.dart';
import 'package:kairohealth/models/loginData.dart';
import 'package:kairohealth/models/patientData.dart';
import 'package:kairohealth/models/singleAddressData.dart';
import 'package:kairohealth/models/spcializationCategoryData.dart';
import 'package:kairohealth/models/prescriptionListData.dart';
import 'package:kairohealth/models/messageData.dart';
import 'package:kairohealth/models/medicineData.dart';
import 'package:kairohealth/models/stateData.dart';
import 'package:kairohealth/models/testListData.dart';
import 'package:kairohealth/models/userData.dart';
import 'package:kairohealth/services/http_service.dart';
import 'package:kairohealth/services/http_service_impl.dart';

class RepoImpl implements Repo {
  late HttpService _httpService;

  RepoImpl() {
    _httpService = Get.put(HttpServiceImpl());
    _httpService.init();
  }

  @override
  Future<LoginData?> hitLoginApi(String mobile, String token) async {
    // TODO: implement hitLoginApi
    try {
      final response =
          await _httpService.hitLoginApi('api/authenticate', mobile, token);
      final parsedResponse = LoginData.fromJson(response.data);
      return parsedResponse;
    } on Exception catch (e) {
      return null;
    }
  }

  @override
  Future<LoginData?> hitRegisterApi(String mobile, String token, String email,
      String role, String name) async {
    // TODO: implement hitLoginApi
    try {
      final response = await _httpService.hitRegisterApi(
          'api/authenticate', mobile, token, email, role, name);
      final parsedResponse = LoginData.fromJson(response.data);
      return parsedResponse;
    } on Exception catch (e) {
      return null;
    }
  }

  @override
  Future<BannerData?> getBannerApi(String token, String type) async {
    // TODO: implement hitLoginApi
    try {
      final response =
          await _httpService.getBannerApi('api/banner', token, type);
      final parsedResponse = BannerData.fromJson(response.data);
      return parsedResponse;
    } on Exception catch (e) {
      return null;
    }
  }

  @override
  Future<DoctorData?> getDoctorDetailsApi(String token, String doctorID) async {
    // TODO: implement hitLoginApi
    try {
      final response = await _httpService.getDoctorDetailsApi(
          'api/idWiseDoctorList', token, doctorID);
      final parsedResponse = DoctorData.fromJson(response.data);
      return parsedResponse;
    } on Exception catch (e) {
      return null;
    }
  }

  @override
  Future<MessageData?> hitAddPrescriptionApi(
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
      List<AddMedicineData> medicine) async {
    // TODO: implement hitLoginApi
    try {
      final response = await _httpService.hitAddPrescriptionApi(
          'api/addPrescription',
          token,
          doctorID,
          storeID,
          patientID,
          patientName,
          patientAge,
          patientAddress,
          patientGender,
          advice,
          stateID,
          cityID,
          test,
          medicine);
      final parsedResponse = MessageData.fromJson(response.data);
      return parsedResponse;
    } on Exception catch (e) {
      return null;
    }
  }

  @override
  Future<DoctorListData?> hitAlldoctorlistApi(String token) async {
    // TODO: implement hitLoginApi
    try {
      final response =
          await _httpService.hitAlldoctorlistApi('api/AllDoctorList', token);
      final parsedResponse = DoctorListData.fromJson(response.data);
      return parsedResponse;
    } on Exception catch (e) {
      return null;
    }
  }

  @override
  Future<DiseaseListData?> hitDiseaseListApi(String token) async {
    // TODO: implement hitLoginApi
    try {
      final response =
          await _httpService.hitDiseaseListApi('api/diseaseList', token);
      final parsedResponse = DiseaseListData.fromJson(response.data);
      return parsedResponse;
    } on Exception catch (e) {
      return null;
    }
  }

  @override
  Future<DoctorListData?> hitDiseaseWiseDoctorListApi(
      String token, String diseaseID) async {
    // TODO: implement hitLoginApi
    try {
      final response = await _httpService.hitDiseaseWiseDoctorListApi(
          "api/diseaseWiseDoctorList", token, diseaseID);
      final parsedResponse = DoctorListData.fromJson(response.data);
      return parsedResponse;
    } on Exception catch (e) {
      return null;
    }
  }

  @override
  Future<MedicineData?> hitMedicineListApi(String token) async {
    // TODO: implement hitLoginApi
    try {
      final response =
          await _httpService.hitMedicineListApi('api/medicineList', token);
      final parsedResponse = MedicineData.fromJson(response.data);
      return parsedResponse;
    } on Exception catch (e) {
      return null;
    }
  }

  @override
  Future<PrescriptionListData?> hitPrescriptionListApi(String token) async {
    // TODO: implement hitLoginApi
    try {
      final response = await _httpService.hitPrescriptionListApi(
          'api/prescriptionList', token);
      final parsedResponse = PrescriptionListData.fromJson(response.data);
      return parsedResponse;
    } on Exception catch (e) {
      return null;
    }
  }

  @override
  Future<SpcializationCategoryData?> hitSpcialistCategoryApi(
      String token) async {
    // TODO: implement hitLoginApi
    try {
      final response = await _httpService.hitSpcialistCategoryApi(
          'api/specializationList', token);
      final parsedResponse = SpcializationCategoryData.fromJson(response.data);
      return parsedResponse;
    } on Exception catch (e) {
      return null;
    }
  }

  @override
  Future<DoctorListData?> hitSpecializationWiseDoctorListApi(
      String token, String specializationID) async {
    // TODO: implement hitLoginApi
    try {
      final response = await _httpService.hitSpecializationWiseDoctorListApi(
          'api/specializationWiseDoctorList', token, specializationID);
      final parsedResponse = DoctorListData.fromJson(response.data);
      return parsedResponse;
    } on Exception catch (e) {
      return null;
    }
  }

  @override
  Future<MessageData?> hitUploadLabTest(String token, File upload) async {
    // TODO: implement hitLoginApi
    try {
      final response = await _httpService.hitUploadLabTest(
          'api/uploadLabTest', token, upload);
      final parsedResponse = MessageData.fromJson(response.data);
      return parsedResponse;
    } on Exception catch (e) {
      return null;
    }
  }

  @override
  Future<MessageData?> hitUploadPrescription(String token, File upload) async {
    // TODO: implement hitLoginApi
    try {
      final response = await _httpService.hitUploadPrescription(
          'api/uploadPrescription', token, upload);
      final parsedResponse = MessageData.fromJson(response.data);
      return parsedResponse;
    } on Exception catch (e) {
      return null;
    }
  }

  @override
  Future<MessageData?> hitAddAddressApi(
      String token,
      String name,
      String phone,
      String type,
      String address,
      String landmark,
      String city,
      String state,
      String pinCode) async {
    // TODO: implement hitLoginApi
    try {
      final response = await _httpService.hitAddAddressApi(
          'api/patientAddAddress',
          token,
          name,
          phone,
          type,
          address,
          landmark,
          city,
          state,
          pinCode);
      final parsedResponse = MessageData.fromJson(response.data);
      return parsedResponse;
    } on Exception catch (e) {
      return null;
    }
  }

  @override
  Future<MessageData?> hitAddFamilyApi(String token, String name, String email,
      String phone, String relation, String gender) async {
    // TODO: implement hitLoginApi
    try {
      final response = await _httpService.hitAddFamilyApi(
          'api/patientAddFamily', token, name, email, phone, relation, gender);
      final parsedResponse = MessageData.fromJson(response.data);
      return parsedResponse;
    } on Exception catch (e) {
      return null;
    }
  }

  @override
  Future<AddressData?> hitAddressListApi(String token) async {
    // TODO: implement hitLoginApi
    try {
      final response =
          await _httpService.hitAddressListApi('api/patientAddressList', token);
      final parsedResponse = AddressData.fromJson(response.data);
      return parsedResponse;
    } on Exception catch (e) {
      return null;
    }
  }

  @override
  Future<MessageData?> hitDrProfileUpdateApi(
      String token,
      String name,
      String email,
      File photo,
      String specializationID,
      String experince,
      String post,
      String fee,
      String address) async {
    // TODO: implement hitLoginApi
    try {
      final response = await _httpService.hitDrProfileUpdateApi(
          'api/doctorProfileUpdate',
          token,
          name,
          email,
          photo,
          specializationID,
          experince,
          post,
          fee,
          address);
      final parsedResponse = MessageData.fromJson(response.data);
      return parsedResponse;
    } on Exception catch (e) {
      return null;
    }
  }

  @override
  Future<FamilyData?> hitFamilyListApi(String token) async {
    // TODO: implement hitLoginApi
    try {
      final response =
          await _httpService.hitFamilyListApi('api/patientFamilyList', token);
      final parsedResponse = FamilyData.fromJson(response.data);
      return parsedResponse;
    } on Exception catch (e) {
      return null;
    }
  }

  @override
  Future<MessageData?> hitProfileUpdateApi(
      String token, String name, String email, File photo) async {
    // TODO: implement hitLoginApi
    try {
      final response = await _httpService.hitProfileUpdateApi(
          'api/patientProfileUpdate', token, name, email, photo);
      final parsedResponse = MessageData.fromJson(response.data);
      return parsedResponse;
    } on Exception catch (e) {
      return null;
    }
  }

  @override
  Future<MessageData?> hitRemoveAddressApi(
      String token, String addressID) async {
    // TODO: implement hitLoginApi
    try {
      final response = await _httpService.hitRemoveAddressApi(
          'api/patientAddressListRemove', token, addressID);
      final parsedResponse = MessageData.fromJson(response.data);
      return parsedResponse;
    } on Exception catch (e) {
      return null;
    }
  }

  @override
  Future<UserData?> hitUserDataApi(String token) async {
    // TODO: implement hitLoginApi
    try {
      final response = await _httpService.hitUserDataApi('api/userData', token);
      final parsedResponse = UserData.fromJson(response.data);
      return parsedResponse;
    } on Exception catch (e) {
      return null;
    }
  }

  @override
  Future<MessageData?> hitAddressRemoveApi(
      String token, String addressId) async {
    // TODO: implement hitLoginApi
    try {
      final response = await _httpService.hitAddressRemoveApi(
          'api/patientAddressListRemove', token, addressId);
      final parsedResponse = MessageData.fromJson(response.data);
      return parsedResponse;
    } on Exception catch (e) {
      return null;
    }
  }

  @override
  Future<CityData?> hitCityApi(String token) async {
    // TODO: implement hitLoginApi
    try {
      final response = await _httpService.hitCityApi('api/city', token);
      final parsedResponse = CityData.fromJson(response.data);
      return parsedResponse;
    } on Exception catch (e) {
      return null;
    }
  }

  @override
  Future<PatientData?> hitDrWisePatientListApi(String token) async {
    // TODO: implement hitLoginApi
    try {
      final response = await _httpService.hitDrWisePatientListApi(
          'api/doctorWisePataintList', token);
      final parsedResponse = PatientData.fromJson(response.data);
      return parsedResponse;
    } on Exception catch (e) {
      return null;
    }
  }

  @override
  Future<MessageData?> hitEditFamilyApi(String token, String name, String email,
      String phone, String relation, String gender) async {
    // TODO: implement hitLoginApi
    try {
      final response = await _httpService.hitEditFamilyApi(
          'api/editFamily', token, name, email, phone, relation, gender);
      final parsedResponse = MessageData.fromJson(response.data);
      return parsedResponse;
    } on Exception catch (e) {
      return null;
    }
  }

  @override
  Future<LabReportData?> hitLabReportByPrescriptionApi(
      String token, String prescriptionID) async {
    // TODO: implement hitLoginApi
    try {
      final response = await _httpService.hitLabReportByPrescriptionApi(
          'api/labReport', token, prescriptionID);
      final parsedResponse = LabReportData.fromJson(response.data);
      return parsedResponse;
    } on Exception catch (e) {
      return null;
    }
  }

  @override
  Future<StateData?> hitSatesApi(String token) async {
    // TODO: implement hitLoginApi
    try {
      final response = await _httpService.hitSatesApi('api/states', token);
      final parsedResponse = StateData.fromJson(response.data);
      return parsedResponse;
    } on Exception catch (e) {
      return null;
    }
  }

  @override
  Future<CityData?> hitStateWiseCityApi(String token, String stateID) async {
    // TODO: implement hitLoginApi
    try {
      final response = await _httpService.hitStateWiseCityApi(
          'api/statesWiseCity', token, stateID);
      final parsedResponse = CityData.fromJson(response.data);
      return parsedResponse;
    } on Exception catch (e) {
      return null;
    }
  }

  @override
  Future<SingleAddressData?> hitAddressDetailsApi(
      String token, String addressID) async {
    // TODO: implement hitLoginApi
    try {
      final response = await _httpService.hitAddressDetailsApi(
          'api/addressIdByAddress', token, addressID);
      final parsedResponse = SingleAddressData.fromJson(response.data);
      return parsedResponse;
    } on Exception catch (e) {
      return null;
    }
  }

  @override
  Future<MessageData?> hitCallRequestApi(
      String token, String patientID, String docID) async {
    // TODO: implement hitLoginApi
    try {
      final response = await _httpService.hitCallRequestApi(
          'api/PrescriptionRequest', token, patientID, docID);
      final parsedResponse = MessageData.fromJson(response.data);
      return parsedResponse;
    } on Exception catch (e) {
      return null;
    }
  }

  @override
  Future<TestListData?> hitTestListApi(String token) async {
    // TODO: implement hitLoginApi
    try {
      final response =
          await _httpService.hitTestListApi('api/labCategory', token);
      final parsedResponse = TestListData.fromJson(response.data);
      return parsedResponse;
    } on Exception catch (e) {
      return null;
    }
  }
}
