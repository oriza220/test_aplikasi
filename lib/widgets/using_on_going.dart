import 'package:flutter/material.dart';
import 'package:test_aplikasi/pages/detail_laptop_verified.dart';
import 'package:test_aplikasi/widgets/custom_divider.dart';

class UsingOnGoing extends StatelessWidget {
  const UsingOnGoing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        splashColor: Colors.blue,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailLaptopVerified(laptopId: '1')));
        },
        child: Card(
          surfaceTintColor: Colors.transparent,
          elevation: 10,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        left: 15, top: 15, bottom: 10),
                    child: Icon(
                      Icons.output_outlined,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 10,
                        top: 15,
                        bottom: 10,
                        right: 10),
                    child: Text("Using",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontFamily: "GodoB")),
                  ),
                  Container(
                      padding: EdgeInsets.only(
                          left: 217,
                          top: 15,
                          bottom: 10,
                          right: 10),
                      child: Text("Done",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 17,
                            fontFamily: "GodoB",
                          ))),
                ],
              ),
              CustomDivider(width: 385),
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
                          child: Text("Date - Date",
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
              Container(
                padding:
                    EdgeInsets.only(left: 15, bottom: 10),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      children: [
                        Text("Total Price",
                            style: TextStyle(
                                color: Colors.black
                                    .withOpacity(0.6),
                                fontSize: 15,
                                fontFamily: "GodoB")),
                        Text("Rp. 123*456",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 17,
                                fontFamily: "GodoB")),
                      ],
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(left: 134, top: 10),
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                          width: 126,
                          height: 35,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStatePropertyAll(
                                      ContinuousRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(
                                                  13, 13)))),
                                  elevation:
                                      MaterialStatePropertyAll(
                                          0),
                                  side: MaterialStateProperty.all(
                                      BorderSide(
                                          color:
                                              Colors.blue)),
                                  surfaceTintColor:
                                      MaterialStatePropertyAll(
                                          Colors.white)),
                              onPressed: () {},
                              child: Text(
                                "Lend Again",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: "GodoB",
                                  color: Colors.blue,
                                  // color: Colors.blue[200],
                                ),
                              ))),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

