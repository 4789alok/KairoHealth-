import 'package:flutter/material.dart';

class AttachmentAndReportsPage extends StatefulWidget {
  const AttachmentAndReportsPage({super.key});

  @override
  State<AttachmentAndReportsPage> createState() =>
      _AttachmentAndReportsPageState();
}

class _AttachmentAndReportsPageState extends State<AttachmentAndReportsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text(
          'Attachment And Reports',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: ListView.builder(
            itemCount: 6,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(6),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300)),
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image(
                        image: NetworkImage(
                            'https://cdn.jotfor.ms/p/hipaa/assets/img-min/templates/formhipaa@3x.png'),
                        height: 50,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ' health record found',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.blueGrey),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          ' Shivanshu',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.blueGrey),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }
}
