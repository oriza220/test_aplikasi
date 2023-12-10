import 'package:flutter/material.dart';
import 'package:test_aplikasi/utilities/settings.dart';
import 'package:test_aplikasi/widgets/custom_divider.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => UserPageState();
}

class UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
      title: Row(
        children: [
          Text("Pinjam\nDulu",
              style: TextStyle(
                  fontFamily: "GodoB", fontSize: 18, color: Colors.white)),
          Padding(padding: EdgeInsets.only(left: 198)),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.person_outline_outlined,color: Colors.white, size: 30,))
        ],
      ),
      leading: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: CircleAvatar(
            child: Image.network(
                "https://cdn.discordapp.com/attachments/798745994103095322/1181175263158095913/logo_2.png?ex=65801a2f&is=656da52f&hm=bdf5780a790a0a899bcbfb6b5a942f50e68da892d4669bb95889a0052cb772fd&")),
      ),
      elevation: 40,
      backgroundColor: Colors.blue[200],
      automaticallyImplyLeading: false,
    ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 120,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://cdn.discordapp.com/attachments/798745994103095322/1181288322467909703/Untitled-1.png?ex=6580837b&is=656e0e7b&hm=346e64ce32c4ad5983da8650013e87f3c0f0c631aec0fe5e6c402bfe9cc23a21&'),
                      fit: BoxFit.fitWidth)),
              child: Container(
                margin: EdgeInsets.only(left: 15),
                child: Row(children: [
                  Container(
                    height: 70,
                    width: 70,
                    child: CircleAvatar(
                        child: Icon(
                      Icons.person,
                      size: 50,
                    )),
                    decoration: BoxDecoration(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                        top: 10,
                      )),
                      Text("Username",
                          style: TextStyle(
                              fontFamily: "GodoB",
                              color: warnaCerah,
                              fontSize: 30)),
                      Text(" 088******45",
                          style: TextStyle(
                            fontFamily: "GodoB",
                            color: warnaCerah,
                          )),
                      Container(
                        width: 140,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            color: Colors.blue,
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(13, 13))),
                        child: Row(
                          children: [
                            Container(
                                child: Text(
                              "   Terverifikasi ",
                              style: TextStyle(
                                  color: warnaCerah, fontFamily: "GodoB"),
                            )),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(30, 30))),
                              child: Icon(Icons.check_box, color: Colors.white),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ]),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Material(
              elevation: 3,
              borderRadius: BorderRadius.all(Radius.elliptical(13, 13)),
              child: Column(children: [
                Container(
                  child: ExpansionTile(
                    title: Row(
                      children: [
                        Icon(Icons.person, color: Colors.blue),
                        Container(padding: EdgeInsets.only(right: 20)),
                        Text(
                          "Profile Information",
                          style: TextStyle(fontFamily: "GodoB"),
                        ),
                      ],
                    ),
                    children: [
                      CustomDivider(width: double.infinity),
                      ListTile(
                        title: Text("Username"),
                      ),
                      CustomDivider(width: double.infinity),
                      ListTile(
                        title: Text("Email"),
                      ),
                      CustomDivider(width: double.infinity),
                      ListTile(
                        title: Text("Phone Number"),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(10),
                  width: 380,
                ),
              ]),
            ),
            Container(
                padding: EdgeInsets.only(top: 5, bottom: 5),),
            Container(
              height: 235,
              child: Material(
                elevation: 3,
                borderRadius: BorderRadius.all(Radius.elliptical(13, 13)),
                child: Column(children: [
                  Container(
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          Icon(Icons.question_mark, color: Colors.blue),
                          Container(padding: EdgeInsets.only(right: 20)),
                          Text(
                            "Help Center",
                            style: TextStyle(fontFamily: "GodoB"),
                          ),
                        ],
                      ),
                    ),
                    padding: EdgeInsets.all(25),
                    width: 380,
                  ),
                  Container(child: CustomDivider(width: 380)),
                  Container(
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          Icon(Icons.ssid_chart, color: Colors.blue),
                          Container(padding: EdgeInsets.only(right: 20)),
                          Text(
                            "Terms & Condition",
                            style: TextStyle(fontFamily: "GodoB"),
                          ),
                        ],
                      ),
                    ),
                    padding: EdgeInsets.all(25),
                    width: 380,
                  ),
                  Container(child: CustomDivider(width: 380)),
                  Container(
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          Icon(Icons.control_camera_outlined, color: Colors.blue),
                          Container(padding: EdgeInsets.only(right: 20)),
                          Text(
                            "Privacy Policy",
                            style: TextStyle(fontFamily: "GodoB"),
                          ),
                        ],
                      ),
                    ),
                    padding: EdgeInsets.all(25),
                    width: 380,
                  ),
                ]),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 105,left: 5,right: 5),
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStatePropertyAll(
                          
                                        ContinuousRectangleBorder(
                                          side: BorderSide(color: Colors.blue,width: 2),
                                            borderRadius: BorderRadius.all(
                                                Radius.elliptical(15, 15)))),
                        surfaceTintColor: MaterialStatePropertyAll(Colors.white)),
                      onPressed: () {},
                      child: Text(
                        "Log Out",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "GodoB",
                          color: Colors.blue,
                          fontSize: 13,
                          fontStyle: FontStyle.italic
                          // color: Colors.blue[200],
                        ),
                      ))),
            ),
          ],
        ),
      ),
    );
  }
}
