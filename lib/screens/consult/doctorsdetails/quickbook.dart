import 'package:flutter/material.dart';

class QuickBookPage extends StatefulWidget {
  const QuickBookPage({super.key});

  @override
  State<QuickBookPage> createState() => _QuickBookPageState();
}

class _QuickBookPageState extends State<QuickBookPage> {
  Widget buildName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: [
            const SizedBox(width: 15),
            Text(
              'Patient Name',
              style: TextStyle(
                  color: Colors.blueGrey.shade500,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          margin: const EdgeInsets.all(10),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.blueGrey.shade50),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0, 2),
              ),
            ],
          ),
          height: 60,
          child: const TextField(
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.person,
                color: Colors.blueGrey,
              ),
              hintText: 'Patient Name',
              hintStyle: TextStyle(color: Colors.black38),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildEmailID() {
    return Column(
      children: <Widget>[
        Row(
          children: [
            const SizedBox(width: 15),
            Text(
              'Email ID',
              style: TextStyle(
                  color: Colors.blueGrey.shade500,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          margin: const EdgeInsets.all(10),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.blueGrey.shade50),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0, 2),
              ),
            ],
          ),
          height: 60,
          child: const TextField(
            keyboardType: TextInputType.emailAddress,
            obscureText: true,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.mail,
                color: Colors.blueGrey,
              ),
              hintText: 'Email ID',
              hintStyle: TextStyle(color: Colors.black38),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildMobileNumber() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: [
            const SizedBox(width: 15),
            Text(
              'Mobile Number',
              style: TextStyle(
                  color: Colors.blueGrey.shade500,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          margin: const EdgeInsets.all(10),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.blueGrey.shade50),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0, 2),
              ),
            ],
          ),
          height: 60,
          child: const TextField(
            obscureText: true,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.mobile_screen_share_outlined,
                color: Colors.blueGrey,
              ),
              hintText: 'Mobile Number',
              hintStyle: TextStyle(color: Colors.black38),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildSubmitBtn() {
    return Container(
      margin: const EdgeInsets.all(15),
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 40,
        width: 100,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(primary: Colors.amber.shade900),
          child: const Text(
            'Submit',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text(
          'Quick Book',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              children: [
                const SizedBox(width: 120),
                SizedBox(
                  height: 50,
                  width: 170,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.amber.shade700),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(Icons.call),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                        ),
                        Text(
                          'CALL TO BOOK',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Divider(
              thickness: .5,
              color: Colors.grey.shade300,
            ),
            const SizedBox(height: 10),
            Text(
              'REQUEST CALL BACK',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: Colors.blueGrey.shade500,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            buildName(),
            const SizedBox(height: 20),
            buildEmailID(),
            const SizedBox(height: 20),
            buildMobileNumber(),
            const SizedBox(height: 5.0),
            buildSubmitBtn(),
          ],
        ),
      ),
    );
  }
}
