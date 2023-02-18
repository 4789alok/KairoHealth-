class AddMedicineData {
  final String medicineID;
  final String medicineName;
  final String qty;

  AddMedicineData(
      {required this.medicineID,
      required this.medicineName,
      required this.qty});

  Map<String, dynamic> toJson() => {
        'medicine_id': medicineID,
        'medicine_name': medicineName,
        'qty': qty,
      };
}
