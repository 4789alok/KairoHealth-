import 'package:flutter/material.dart';

class PatientPrescriptionPage extends StatefulWidget {
  const PatientPrescriptionPage({super.key});

  @override
  State<PatientPrescriptionPage> createState() =>
      _PatientPrescriptionPageState();
}

class _PatientPrescriptionPageState extends State<PatientPrescriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text('Patient Prescription'),
        centerTitle: true,
        elevation: 0.0,
      ),
    );
  }
}
