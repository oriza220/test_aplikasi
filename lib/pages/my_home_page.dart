import 'package:flutter/material.dart';
import 'package:test_aplikasi/pages/detail_laptop.dart';
import 'package:test_aplikasi/pages/detail_laptop_unverified.dart';
import 'package:test_aplikasi/pages/detail_pinjam_laptop.dart';
import 'package:test_aplikasi/pages/user_page.dart';
import 'package:test_aplikasi/utilities/settings.dart';
import 'package:test_aplikasi/widgets/custom_divider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("Pinjam Dulu",
                style: TextStyle(
                    fontFamily: "GodoB", fontSize: 25, color: Colors.white)),
            Padding(padding: EdgeInsets.only(left: 115)),
            IconButton(
                onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UserPage()));},
                icon: Icon(
                  Icons.person_outline_outlined,
                  color: Colors.white,
                  size: 30,
                ))
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
      backgroundColor: Colors.blue,
      body: Stack(
        children: [
          Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.network(
                "https://cdn.discordapp.com/attachments/611552007764836372/1180139376085303316/Untitled-2.png?ex=657c5571&is=6569e071&hm=1dcffb46bd38c0a0365bdc760d8a7c70583d5e7c2bbd91470d7ceee0c2b62282&",
                fit: BoxFit.cover,
              )),
          SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(top: 10)),
              Container(
                padding: EdgeInsets.only(left: 5, right: 5),
                child: Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(13, 13))),
                  child: Center(
                      child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 3),
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: IconButton(
                            onPressed: () {}, icon: Icon(Icons.clear)),
                        hintText: "Search.....",
                        border: InputBorder.none),
                  )),
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: 10, left: 10, bottom: 10),
                  child: Text(
                    "Browse categories",
                    style: TextStyle(
                        fontFamily: "GodoB", fontSize: 15, color: Colors.white),
                  )),
              Container(
                color: Colors.transparent,
                height: 90,
                child: ListView(
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(left: 5)),
                    Container(
                      width: 120,
                      child: Material(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(13, 13)),
                        elevation: 3,
                        child: (Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: SizedBox(
                                height: 35,
                                width: 35,
                                child: Placeholder(),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(top: 5)),
                            Flexible(
                                child: Text(
                              "Gaming Laptop",
                              style: TextStyle(fontFamily: "GodoB"),
                            ))
                          ],
                        )),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 5)),
                    Container(
                      width: 105,
                      child: Material(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(13, 13)),
                        elevation: 5,
                        child: (Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: SizedBox(
                                height: 35,
                                width: 35,
                                child: Placeholder(),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(top: 5)),
                            Flexible(
                                child: Text(
                              "Notebook",
                              style: TextStyle(fontFamily: "GodoB"),
                            ))
                          ],
                        )),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 5)),
                    Container(
                      width: 105,
                      child: Material(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(13, 13)),
                        elevation: 5,
                        child: (Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: SizedBox(
                                height: 35,
                                width: 35,
                                child: Placeholder(),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(top: 5)),
                            Flexible(
                                child: Text(
                              "Netbbook",
                              style: TextStyle(fontFamily: "GodoB"),
                            ))
                          ],
                        )),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 5)),
                    Container(
                      width: 115,
                      child: Material(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(13, 13)),
                        elevation: 5,
                        child: (Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: SizedBox(
                                height: 35,
                                width: 35,
                                child: Placeholder(),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(top: 5)),
                            Flexible(
                                child: Text(
                              "Touch Screen",
                              style: TextStyle(fontFamily: "GodoB"),
                            ))
                          ],
                        )),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: 20, left: 10),
                  child: Text(
                    "Recommendation",
                    style: TextStyle(
                        fontFamily: "GodoB", fontSize: 15, color: Colors.white),
                  )),
              Padding(padding: EdgeInsets.only(top: 10)),
              Container(
                child: InkWell(
                  splashColor: Colors.blue,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailPinjamLaptop()));
                  },
                  child: Card(
                    surfaceTintColor: Colors.transparent,
                    elevation: 10,
                    child: Column(
                      children: [
                        Container(padding: EdgeInsets.only(top: 10)),
                        ListTile(
                          leading: SizedBox(
                            width: 60,
                            height: 60,
                            child: Placeholder(),
                          ),
                          title: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Nama Laptop lorem ispum dolor sit amet",
                                    style: TextStyle(
                                        fontSize: 17, fontFamily: "GodoB")),
                                Container(
                                    child: Text("Gaming Laptop",
                                        style: TextStyle(
                                          color: Colors.black.withOpacity(0.6),
                                          fontSize: 11,
                                          fontFamily: "GodoB",
                                        )))
                              ],
                            ),
                          ),
                        ),
                        Container(padding: EdgeInsets.only(top: 0)),
                        Container(
                            padding: EdgeInsets.only(left: 15),
                            alignment: Alignment.centerLeft,
                            child: Text("Rp. ***.*** / Week",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: "GodoB",
                                    color: Colors.red.withOpacity(0.9)))),
                        Container(padding: EdgeInsets.only(top: 10)),
                        CustomDivider(width: double.infinity),
                        Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(13, 13)),
                            ),
                            child: ExpansionTile(
                              title: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Layar",
                                          style: TextStyle(
                                              color:
                                                  Colors.black.withOpacity(0.6),
                                              fontSize: 15,
                                              fontFamily: "GodoB")),
                                      Text("14'",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: "GodoB")),
                                    ],
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.only(left: 20, right: 20),
                                    child: Container(
                                      color: Colors.black.withOpacity(0.6),
                                      height: 43,
                                      width: 1,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Prosesor",
                                          style: TextStyle(
                                              color:
                                                  Colors.black.withOpacity(0.6),
                                              fontSize: 15,
                                              fontFamily: "GodoB")),
                                      Text("Lorem ipsum dolor sit amet",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: "GodoB")),
                                    ],
                                  ),
                                ],
                              ),
                              children: [
                                ListTile(
                                  title: Row(
                                    children: [
                                      Flexible(
                                          child: Text(
                                        "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit. Mauris malesuada viverra diam ",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ))
                                    ],
                                  ),
                                ),
                                ListTile(
                                  title: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        alignment: Alignment.centerRight,
                                        child: SizedBox(
                                            width: 95,
                                            child: ElevatedButton(
                                                style: ButtonStyle(
                                                    shape: MaterialStatePropertyAll(
                                                        ContinuousRectangleBorder(
                                                            borderRadius: BorderRadius.all(
                                                                Radius.elliptical(
                                                                    13, 13)))),
                                                    elevation:
                                                        MaterialStatePropertyAll(
                                                            5),
                                                    side: MaterialStateProperty.all(
                                                        BorderSide(
                                                            color:
                                                                Colors.blue)),
                                                    surfaceTintColor:
                                                        MaterialStatePropertyAll(
                                                            Colors.white)),
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              DetailLaptopUnverified()));
                                                },
                                                child: Text(
                                                  "Pinjam",
                                                  style: TextStyle(
                                                    fontFamily: "GodoB",
                                                    color: Colors.blue
                                                        .withOpacity(0.7),
                                                    // color: Colors.blue[200],
                                                  ),
                                                ))),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Container(
                child: InkWell(
                  splashColor: Colors.blue,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailLaptop()));
                  },
                  child: Card(
                    surfaceTintColor: Colors.transparent,
                    elevation: 10,
                    child: Column(
                      children: [
                        Container(padding: EdgeInsets.only(top: 10)),
                        ListTile(
                          leading: SizedBox(
                            width: 60,
                            height: 60,
                            child: Placeholder(),
                          ),
                          title: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Nama Laptop lorem ispum dolor sit amet",
                                    style: TextStyle(
                                        fontSize: 17, fontFamily: "GodoB")),
                                Container(
                                    child: Text("Gaming Laptop",
                                        style: TextStyle(
                                          color: Colors.black.withOpacity(0.6),
                                          fontSize: 11,
                                          fontFamily: "GodoB",
                                        ))),
                                Container(
                                    child: Text("Verified",
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 11,
                                          fontFamily: "GodoB",
                                        ))),
                                Container(
                                    child: Text("Rp. 123.456 / Week",
                                        style: TextStyle(
                                          color: Colors.black.withOpacity(0.6),
                                          fontSize: 11,
                                          fontFamily: "GodoB",
                                        ))),
                              ],
                            ),
                          ),
                        ),
                        Container(padding: EdgeInsets.only(top: 0)),
                        Container(padding: EdgeInsets.only(top: 10)),
                        CustomDivider(width: double.infinity),
                        Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(13, 13)),
                            ),
                            child: ExpansionTile(
                              title: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Layar",
                                          style: TextStyle(
                                              color:
                                                  Colors.black.withOpacity(0.6),
                                              fontSize: 15,
                                              fontFamily: "GodoB")),
                                      Text("14'",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: "GodoB")),
                                    ],
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.only(left: 20, right: 20),
                                    child: Container(
                                      color: Colors.black.withOpacity(0.6),
                                      height: 43,
                                      width: 1,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Prosesor",
                                          style: TextStyle(
                                              color:
                                                  Colors.black.withOpacity(0.6),
                                              fontSize: 15,
                                              fontFamily: "GodoB")),
                                      Text("Lorem ipsum dolor sit amet",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: "GodoB")),
                                    ],
                                  ),
                                ],
                              ),
                              children: [
                                ListTile(
                                  title: Row(
                                    children: [
                                      Flexible(
                                          child: Text(
                                        "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit. Mauris malesuada viverra diam ",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ))
                                    ],
                                  ),
                                ),
                                ListTile(
                                  title: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        alignment: Alignment.centerRight,
                                        child: SizedBox(
                                            width: 80,
                                            child: ElevatedButton(
                                                style: ButtonStyle(
                                                    shape: MaterialStatePropertyAll(
                                                        ContinuousRectangleBorder(
                                                            borderRadius: BorderRadius.all(
                                                                Radius.elliptical(
                                                                    13, 13)))),
                                                    elevation:
                                                        MaterialStatePropertyAll(
                                                            5),
                                                    side: MaterialStateProperty.all(
                                                        BorderSide(
                                                            color:
                                                                Colors.white)),
                                                    surfaceTintColor:
                                                        MaterialStatePropertyAll(
                                                            Colors.white)),
                                                onPressed: () {},
                                                child: Text(
                                                  "Edit",
                                                  style: TextStyle(
                                                    fontFamily: "GodoB",
                                                    color: Colors.black
                                                        .withOpacity(0.5),
                                                    // color: Colors.blue[200],
                                                  ),
                                                ))),
                                      ),
                                      Container(
                                          padding: EdgeInsets.only(
                                              left: 5, right: 5)),
                                      Container(
                                        alignment: Alignment.centerRight,
                                        child: SizedBox(
                                            width: 90,
                                            child: ElevatedButton(
                                                style: ButtonStyle(
                                                    shape: MaterialStatePropertyAll(
                                                        ContinuousRectangleBorder(
                                                            borderRadius: BorderRadius.all(
                                                                Radius.elliptical(
                                                                    13, 13)))),
                                                    elevation:
                                                        MaterialStatePropertyAll(
                                                            5),
                                                    side: MaterialStateProperty.all(
                                                        BorderSide(
                                                            color:
                                                                Colors.white)),
                                                    surfaceTintColor:
                                                        MaterialStatePropertyAll(
                                                            Colors.white)),
                                                onPressed: () {},
                                                child: Text(
                                                  "Hapus",
                                                  style: TextStyle(
                                                    fontFamily: "GodoB",
                                                    color: Colors.red
                                                        .withOpacity(0.7),
                                                    // color: Colors.blue[200],
                                                  ),
                                                ))),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
