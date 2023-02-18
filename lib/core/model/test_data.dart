class TestData {
  final String testID;
  final String testName;
  final bool urin;
  final bool blood;

  TestData({
    required this.testName,
    required this.urin,
    required this.blood,
    required this.testID,
  });

  Map<String, dynamic> toJson() => {
        'test_id': testID,
        'urin': urin,
        'Blood': blood,
      };
}
