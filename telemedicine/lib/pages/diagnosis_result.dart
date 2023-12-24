import 'package:flutter/material.dart';
import 'package:telemedicine/pages/lab_page.dart';
import 'package:telemedicine/pages/med_receive.dart';

class DiagResult extends StatelessWidget {
  const DiagResult({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "HotDoc",
      home: DiaPage(),
      theme: ThemeData(
        fontFamily: "Sukhumvit",
      ),
    );
  }
}

class DiaPage extends StatefulWidget {
  @override
  State<DiaPage> createState() => _DiaPageState();
}

class _DiaPageState extends State<DiaPage> {
  //final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          onPressed: () {},
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
          "ผลวินิจฉัย",
          style: TextStyle(
              color: Color.fromARGB(255, 80, 89, 100).withOpacity(1.0),
              fontSize: 40),
        ),
      ),
      body: Container(
        child: Column(children: [
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                "assets/images/logo.png",
                height: 100,
                width: 100,
              ),
            ],
          )),

          // ----------- ข้อมูล ------------ //
          SingleChildScrollView(
            child: Container(
                height: 330,
                width: 370,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: Color.fromARGB(255, 209, 251, 255),
                ),
                child: Container(
                  margin: const EdgeInsets.all(20),
                  child: Scrollbar(
                    //RawScrollbar
                    //thumbColor: Colors.black,
                    //radius: Radius.circular(15),
                    //thickness: 5,
                    //thumbVisibility: true,
                    //controller: _scrollController,
                    child: ListView(
                        //controller: _scrollController,
                        children: const [
                          Text(
                            "ผู้ตรวจอาการ : เเพทย์หญิง แนนซี่ xxxxxx xxxxxxxx\n",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 18),
                          ),
                          Text(
                            "ผู้ป่วย : บิลลี่ xxxxxx xxxxxxxxx\n",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 18),
                          ),
                          Text(
                            "อาการ : ปวดท้อง ท้องเสีย มีอาการอาเจียน xxxxxx xxxxxxxxxxxxx\n",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 18),
                          ),
                          Text(
                            "ผลวินิจฉัย : อาหารเป็นพิษ ให้รับยา และ ทานยาให้ครบตามที่สั่ง xxxxxxx xxxxxxxxxxx xxxxxxxxxxxxx\n",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 18),
                          ),
                        ]),
                  ),
                )),
          ),
          // ----------- ปุ่ม , ไอคอน ------------ //
          Container(
            margin: const EdgeInsets.all(0.0),
            padding: const EdgeInsets.all(2.0),
            width: 400,
            height: 220,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: Color.fromARGB(255, 68, 255, 208),
                        border: Border.all(width: 5)),
                    child: IconButton(
                      icon: Image.asset(
                        "assets/images/lab.png",
                      ),
                      iconSize: 90,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const LabPage();
                        }));
                      },
                    ),
                  ),
                  const Text(
                    'ไปแลป',
                    style: TextStyle(
                      fontSize: 22,
                      decoration: TextDecoration.underline,
                      color: Color(0xff000000),
                    ),
                  ),
                ]),
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: Color.fromARGB(255, 68, 255, 208),
                        border: Border.all(width: 5)),
                    child: IconButton(
                      icon: Image.asset(
                        "assets/images/med.png",
                      ),
                      iconSize: 90,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const Meddy();
                        }));
                      },
                    ),
                  ),
                  const Text(
                    'รับยา',
                    style: TextStyle(
                      fontSize: 22,
                      decoration: TextDecoration.underline,
                      color: Color(0xff000000),
                    ),
                  ),
                ]),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
