import 'package:flutter/material.dart';
import 'package:telemedicine/pages/diagnosis_result.dart';

class LabPage extends StatefulWidget {
  const LabPage({Key? key}) : super(key: key);

  @override
  State<LabPage> createState() => _LabPageState();
}

class _LabPageState extends State<LabPage> {
  String type = 'โรงพยาบาล';
  String name = 'กรุงเทพฯ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //extendBodyBehindAppBar: true,
        // ----------- Header ------------ //
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          leading: IconButton(
            icon: Image.asset(
              "assets/images/back.png",
            ),
            iconSize: 40,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DiagResult();
              }));
            },
          ),
          actions: [
            IconButton(
              icon: Image.asset(
                "assets/images/select.png",
              ),
              iconSize: 40,
              onPressed: () {},
            )
          ],
          title: Text(
            "ตรวจแลป",
            style: TextStyle(
                color: Color.fromARGB(255, 80, 89, 100).withOpacity(1.0),
                fontSize: 40),
          ),
          //backgroundColor: Color.fromARGB(255, 255, 255, 255),
        ),

        // ----------- รูป , ชื่อ ------------ //
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DropdownButton<String>(
                  // Step 3.
                  value: type,
                  // Step 4.
                  items: <String>[
                    'โรงพยาบาล',
                    'คลินิก',
                    'แลปเฉพาะ',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(fontSize: 30),
                      ),
                    );
                  }).toList(),
                  // Step 5.
                  onChanged: (String? newValue) {
                    setState(() {
                      type = newValue!;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DropdownButton<String>(
                  value: name,
                  items: <String>[
                    'กรุงเทพฯ',
                    'กระบี่',
                    'กาฬสิน',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(fontSize: 30),
                      ),
                    );
                  }).toList(),
                  // Step 5.
                  onChanged: (String? newValue) {
                    setState(() {
                      name = newValue!;
                    });
                  },
                ),
              ],
            ),
            ElevatedButton(onPressed: () {}, child: const Text("ตกลง")),
          ],
        ));
  }
}
