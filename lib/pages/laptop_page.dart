import 'package:flutter/material.dart';
import 'package:test_aplikasi/pages/add_laptop.dart';
import 'package:test_aplikasi/pages/detail_laptop.dart';
import 'package:test_aplikasi/pages/detail_laptop_unverified.dart';
import 'package:test_aplikasi/utilities/settings.dart';
import 'package:test_aplikasi/widgets/custom_divider.dart';

class LaptopPage extends StatefulWidget {
  const LaptopPage({super.key});

  @override
  State<LaptopPage> createState() => LaptopPageState();
}

class LaptopPageState extends State<LaptopPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          floatingActionButton: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                borderRadius: BorderRadius.all(Radius.elliptical(17, 17))),
            child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddLaptop()));
                },
                backgroundColor: Colors.deepPurpleAccent.shade100.withOpacity(0.4),
                splashColor: Colors.blue[200],
                child: Icon(
                  Icons.add,
                  color: warnaCerah,
                )),
          ),
          appBar: AppBar(
            leading: Container(
                padding: EdgeInsets.only(left: 15),
                child: Icon(Icons.laptop_chromebook_rounded,color: Colors.white,size: 35,)),
            title: Transform(
              transform:  Matrix4.translationValues(-10.0, 0.0, 0.0),
              child: Text("Username Laptop",
                  style: TextStyle(
                      color: warnaCerah, fontSize: 30, fontFamily: "GodoB")),
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.discordapp.com/attachments/798745994103095322/1183055188551012362/Untitled-9.png?ex=6586f101&is=65747c01&hm=3126fd4b53e5b9207a18929f8fdf25cc02415e12ac1ed6cfb7783606b3942851&"),
                      fit: BoxFit.fill)),
            ),
            automaticallyImplyLeading: false,
            bottom: TabBar(
                dividerColor: Colors.blue[200],
                indicatorColor: Colors.deepPurple[300],
                tabAlignment: TabAlignment.start,
                isScrollable: true,
                labelColor: Colors.deepPurple[300],
                unselectedLabelColor: Colors.white.withOpacity(0.8),
                tabs: [
                  Tab(
                      child: Text("Laptop",
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: "GodoB"))),
                  Tab(
                      child: Text("Verified Laptop",
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: "GodoB"))),
                  Tab(
                      child: Text("Not Verified Laptop",
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: "GodoB"))),
                ]),
          ),
          body: TabBarView(
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://cdn.discordapp.com/attachments/798745994103095322/1183057344842694656/Untitled-3.jpg?ex=6586f303&is=65747e03&hm=da0b0ca7573131abb8acd90e5e040e0583b865fe83719304433f7d864c7c2da5&'),
                        fit: BoxFit.cover)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
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
                      Container(
                        child: InkWell(
                          splashColor: Colors.blue,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        DetailLaptopUnverified()));
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            "Nama Laptop lorem ispum dolor sit amet",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontFamily: "GodoB")),
                                        Container(
                                            child: Text("Gaming Laptop",
                                                style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.6),
                                                  fontSize: 11,
                                                  fontFamily: "GodoB",
                                                ))),
                                        Container(
                                            child: Text("Unverified",
                                                style: TextStyle(
                                                  color: Colors.red,
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
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(13, 13)),
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
                                                      color: Colors.black
                                                          .withOpacity(0.6),
                                                      fontSize: 15,
                                                      fontFamily: "GodoB")),
                                              Text("14'",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontFamily: "GodoB")),
                                            ],
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(
                                                left: 20, right: 20),
                                            child: Container(
                                              color:
                                                  Colors.black.withOpacity(0.6),
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
                                                      color: Colors.black
                                                          .withOpacity(0.6),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Container(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: SizedBox(
                                                    width: 80,
                                                    child: ElevatedButton(
                                                        style: ButtonStyle(
                                                            shape: MaterialStatePropertyAll(
                                                                ContinuousRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.all(Radius.elliptical(
                                                                            13, 13)))),
                                                            elevation:
                                                                MaterialStatePropertyAll(
                                                                    5),
                                                            side: MaterialStateProperty.all(
                                                                BorderSide(
                                                                    color: Colors
                                                                        .white)),
                                                            surfaceTintColor:
                                                                MaterialStatePropertyAll(
                                                                    Colors.white)),
                                                        onPressed: () {},
                                                        child: Text(
                                                          "Edit",
                                                          style: TextStyle(
                                                            fontFamily: "GodoB",
                                                            color: Colors.black
                                                                .withOpacity(
                                                                    0.5),
                                                            // color: Colors.blue[200],
                                                          ),
                                                        ))),
                                              ),
                                              Container(
                                                  padding: EdgeInsets.only(
                                                      left: 5, right: 5)),
                                              Container(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: SizedBox(
                                                    width: 113,
                                                    child: ElevatedButton(
                                                        style: ButtonStyle(
                                                            shape: MaterialStatePropertyAll(
                                                                ContinuousRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.all(Radius.elliptical(
                                                                            13, 13)))),
                                                            elevation:
                                                                MaterialStatePropertyAll(
                                                                    5),
                                                            side: MaterialStateProperty.all(
                                                                BorderSide(
                                                                    color: Colors
                                                                        .white)),
                                                            surfaceTintColor:
                                                                MaterialStatePropertyAll(
                                                                    Colors.white)),
                                                        onPressed: () {},
                                                        child: Text(
                                                          "Verifikasi",
                                                          style: TextStyle(
                                                            fontFamily: "GodoB",
                                                            color: Colors.blue
                                                                .withOpacity(
                                                                    0.7),
                                                            // color: Colors.blue[200],
                                                          ),
                                                        ))),
                                              ),
                                              Container(
                                                  padding: EdgeInsets.only(
                                                      left: 5, right: 5)),
                                              Container(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: SizedBox(
                                                    width: 90,
                                                    child: ElevatedButton(
                                                        style: ButtonStyle(
                                                            shape: MaterialStatePropertyAll(
                                                                ContinuousRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.all(Radius.elliptical(
                                                                            13, 13)))),
                                                            elevation:
                                                                MaterialStatePropertyAll(
                                                                    5),
                                                            side: MaterialStateProperty.all(
                                                                BorderSide(
                                                                    color: Colors
                                                                        .white)),
                                                            surfaceTintColor:
                                                                MaterialStatePropertyAll(
                                                                    Colors.white)),
                                                        onPressed: () {},
                                                        child: Text(
                                                          "Hapus",
                                                          style: TextStyle(
                                                            fontFamily: "GodoB",
                                                            color: Colors.red
                                                                .withOpacity(
                                                                    0.7),
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
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://cdn.discordapp.com/attachments/798745994103095322/1181542233825103892/Untitled-6.png?ex=65816ff4&is=656efaf4&hm=11ad888a1ff0efcbec8bca87fbe15f70e4c936bb52fcd17b00449b45408af809&'),
                        fit: BoxFit.cover)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
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
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://cdn.discordapp.com/attachments/798745994103095322/1181542233825103892/Untitled-6.png?ex=65816ff4&is=656efaf4&hm=11ad888a1ff0efcbec8bca87fbe15f70e4c936bb52fcd17b00449b45408af809&'),
                        fit: BoxFit.cover)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        child: InkWell(
                          splashColor: Colors.blue,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        DetailLaptopUnverified()));
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            "Nama Laptop lorem ispum dolor sit amet",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontFamily: "GodoB")),
                                        Container(
                                            child: Text("Gaming Laptop",
                                                style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.6),
                                                  fontSize: 11,
                                                  fontFamily: "GodoB",
                                                ))),
                                        Container(
                                            child: Text("Verified",
                                                style: TextStyle(
                                                  color: Colors.red,
                                                  fontSize: 11,
                                                  fontFamily: "GodoB",
                                                ))),
                                        Container(
                                            child: Text("Rp. 123.456 / Week",
                                                style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.6),
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
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(13, 13)),
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
                                                      color: Colors.black
                                                          .withOpacity(0.6),
                                                      fontSize: 15,
                                                      fontFamily: "GodoB")),
                                              Text("14'",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontFamily: "GodoB")),
                                            ],
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(
                                                left: 20, right: 20),
                                            child: Container(
                                              color:
                                                  Colors.black.withOpacity(0.6),
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
                                                      color: Colors.black
                                                          .withOpacity(0.6),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Container(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: SizedBox(
                                                    width: 80,
                                                    child: ElevatedButton(
                                                        style: ButtonStyle(
                                                            shape: MaterialStatePropertyAll(
                                                                ContinuousRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.all(Radius.elliptical(
                                                                            13, 13)))),
                                                            elevation:
                                                                MaterialStatePropertyAll(
                                                                    5),
                                                            side: MaterialStateProperty.all(
                                                                BorderSide(
                                                                    color: Colors
                                                                        .white)),
                                                            surfaceTintColor:
                                                                MaterialStatePropertyAll(
                                                                    Colors.white)),
                                                        onPressed: () {},
                                                        child: Text(
                                                          "Edit",
                                                          style: TextStyle(
                                                            fontFamily: "GodoB",
                                                            color: Colors.black
                                                                .withOpacity(
                                                                    0.5),
                                                            // color: Colors.blue[200],
                                                          ),
                                                        ))),
                                              ),
                                              Container(
                                                  padding: EdgeInsets.only(
                                                      left: 5, right: 5)),
                                              Container(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: SizedBox(
                                                    width: 113,
                                                    child: ElevatedButton(
                                                        style: ButtonStyle(
                                                            shape: MaterialStatePropertyAll(
                                                                ContinuousRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.all(Radius.elliptical(
                                                                            13, 13)))),
                                                            elevation:
                                                                MaterialStatePropertyAll(
                                                                    5),
                                                            side: MaterialStateProperty.all(
                                                                BorderSide(
                                                                    color: Colors
                                                                        .white)),
                                                            surfaceTintColor:
                                                                MaterialStatePropertyAll(
                                                                    Colors.white)),
                                                        onPressed: () {},
                                                        child: Text(
                                                          "Verifikasi",
                                                          style: TextStyle(
                                                            fontFamily: "GodoB",
                                                            color: Colors.blue
                                                                .withOpacity(
                                                                    0.7),
                                                            // color: Colors.blue[200],
                                                          ),
                                                        ))),
                                              ),
                                              Container(
                                                  padding: EdgeInsets.only(
                                                      left: 5, right: 5)),
                                              Container(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: SizedBox(
                                                    width: 90,
                                                    child: ElevatedButton(
                                                        style: ButtonStyle(
                                                            shape: MaterialStatePropertyAll(
                                                                ContinuousRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.all(Radius.elliptical(
                                                                            13, 13)))),
                                                            elevation:
                                                                MaterialStatePropertyAll(
                                                                    5),
                                                            side: MaterialStateProperty.all(
                                                                BorderSide(
                                                                    color: Colors
                                                                        .white)),
                                                            surfaceTintColor:
                                                                MaterialStatePropertyAll(
                                                                    Colors.white)),
                                                        onPressed: () {},
                                                        child: Text(
                                                          "Hapus",
                                                          style: TextStyle(
                                                            fontFamily: "GodoB",
                                                            color: Colors.red
                                                                .withOpacity(
                                                                    0.7),
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
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
