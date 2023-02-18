import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:kairohealth/core/model/medicine_data.dart';
import 'package:kairohealth/core/model/test_data.dart';
import 'package:kairohealth/models/index.dart';

abstract class Repo {
  Future<LoginData?> hitLoginApi(String mobile, String token);
  Future<LoginData?> hitRegisterApi(
      String mobile, String token, String email, String role, String name);
  Future<DoctorListData?> hitAlldoctorlistApi(
    String token,
  );
  Future<SpcializationCategoryData?> hitSpcialistCategoryApi(
    String token,
  );
  Future<DiseaseListData?> hitDiseaseListApi(
    String token,
  );
  Future<DoctorListData?> hitSpecializationWiseDoctorListApi(
    String token,
    String specializationID,
  );
  Future<DoctorListData?> hitDiseaseWiseDoctorListApi(
    String token,
    String diseaseID,
  );
  Future<DoctorData?> getDoctorDetailsApi(
    String token,
    String doctorID,
  );
  Future<BannerData?> getBannerApi(
    String token,
    String type,
  );
  Future<MedicineData?> hitMedicineListApi(
    String token,
  );
  Future<PrescriptionListData?> hitPrescriptionListApi(
    String token,
  );

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
    List<AddMedicineData> medicine,
  );
  Future<MessageData?> hitUploadPrescription(
    String token,
    File upload,
  );
  Future<MessageData?> hitUploadLabTest(
    String token,
    File upload,
  );

  // Future<Response> hitMyOrderDetailsApi(
  //   String token,
  //   String orderID,
  // );
  Future<MessageData?> hitAddAddressApi(
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
  Future<SingleAddressData?> hitAddressDetailsApi(
    String token,
    String addressID,
  );
  Future<AddressData?> hitAddressListApi(
    String token,
  );

  Future<MessageData?> hitRemoveAddressApi(
    String token,
    String addressID,
  );
  Future<MessageData?> hitAddFamilyApi(
    String token,
    String name,
    String email,
    String phone,
    String relation,
    String gender,
  );
  Future<FamilyData?> hitFamilyListApi(
    String token,
  );
  Future<UserData?> hitUserDataApi(
    String token,
  );

  Future<MessageData?> hitProfileUpdateApi(
    String token,
    String name,
    String email,
    File photo,
  );

  Future<StateData?> hitSatesApi(
    String token,
  );
  Future<CityData?> hitCityApi(
    String token,
  );
  Future<CityData?> hitStateWiseCityApi(
    String token,
    String stateID,
  );
  Future<MessageData?> hitAddressRemoveApi(
    String token,
    String addressId,
  );
  Future<MessageData?> hitEditFamilyApi(
    String token,
    String name,
    String email,
    String phone,
    String relation,
    String gender,
  );

  Future<LabReportData?> hitLabReportByPrescriptionApi(
    String token,
    String prescriptionID,
  );

  Future<MessageData?> hitCallRequestApi(
    String token,
    String patientID,
    String docID,
  );

  Future<TestListData?> hitTestListApi(
    String token,
  );

  //---------------- Doctor Api ------------------
  Future<MessageData?> hitDrProfileUpdateApi(
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

  Future<PatientData?> hitDrWisePatientListApi(
    String token,
  );
}
