import 'package:flutter/material.dart';
import 'package:telemedicine/pages/diagnosis_result.dart';

class Meddy extends StatelessWidget {
  const Meddy({Key? key}) : super(key: key);

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
          "รับยา",
          style: TextStyle(
              color: Color.fromARGB(255, 80, 89, 100).withOpacity(1.0),
              fontSize: 40),
        ),
        //backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),

      // ----------- รูป , ชื่อ ------------ //
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Container(
          margin: const EdgeInsets.all(12),
          width: 370,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Color.fromARGB(255, 0, 180, 135),
          ),
          child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/55.jpg"),
                      radius: 44,
                    ),
                    Text("คุณ XXXXX XXXXX",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff000000),
                        ))
                  ],
                ),
              ]),
        ),

        // ----------- ข้อมูล ------------ //
        SingleChildScrollView(
          child: Container(
              width: 370,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Color.fromARGB(255, 117, 192, 195),
              ),
              child: Container(
                margin: const EdgeInsets.all(20),
                child: Scrollbar(
                  child: ListView(
                    children: const [
                      Text("สถานที่รับยา         : xxxxxxxxxxxxxxxxx\n",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff000000),
                          )),
                      Text("เลขประจำตัว รพ.  : xxxxxxxxxxx\n",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff000000),
                          )),
                      Text("ประวัติการแพ้ยา   : xxxxxxxxxxxxxx\n",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff000000),
                          )),
                      Text("ผลแลป                   : xxxxxxxxxxxxxxxxxx\n",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff000000),
                          )),
                      Text("วันนัดครั้งถัดไป     : xxxxxxxxxxxxxxxx\n",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff000000),
                          )),
                    ],
                  ),
                ),
              )),
        ),
        // -------- QR --------- //
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //ElevatedButton(onPressed: () {}, child: const Text("รับยา")),
            Image.asset(
              "assets/images/qr.png",
              height: 220,
              width: 220,
            ),
          ],
        ),
        // ------ ปุ่ม -------- //
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          ElevatedButton(onPressed: () {}, child: const Text("ตกลง")),
          ElevatedButton(onPressed: () {}, child: const Text("ยกเลิก"))
        ]),
      ]),
    );
  }
}
