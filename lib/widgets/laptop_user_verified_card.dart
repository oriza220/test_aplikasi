import 'package:flutter/material.dart';
import 'package:test_aplikasi/pages/detail_laptop_verified.dart';
import 'package:test_aplikasi/widgets/custom_divider.dart';

class laptop_user_verified_card extends StatefulWidget {
  final Function(String laptopId)? onDelete;
  final String laptopId;
  final String laptopName;
  final double laptopPrice;
  final String laptopProcessor;
  final String laptopScreen;
  final String laptopType;
  final String laptopDescription;
  const laptop_user_verified_card({
    required this.laptopId,
    required this.laptopName,
    required this.laptopPrice,
    required this.laptopProcessor,
    required this.laptopScreen,
    required this.laptopType,
    required this.laptopDescription,
    this.onDelete,
    super.key,
  });

  @override
  State<laptop_user_verified_card> createState() =>
      _laptop_user_verified_cardState();
}

class _laptop_user_verified_cardState extends State<laptop_user_verified_card> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        splashColor: Colors.blue,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      DetailLaptopVerified(laptopId: widget.laptopId)));
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
                      Text("${widget.laptopName}",
                          style: TextStyle(
                              fontSize: 17,
                              fontFamily: "GodoB",
                              color: Colors.blue)),
                      Container(
                          child: Text("${widget.laptopType}",
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
                          child: Text("Rp.${widget.laptopPrice}/ Week",
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
                    borderRadius: BorderRadius.all(Radius.elliptical(13, 13)),
                  ),
                  child: ExpansionTile(
                    title: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Layar",
                                style: TextStyle(
                                    color: Colors.blue.withOpacity(0.9),
                                    fontSize: 15,
                                    fontFamily: "GodoB")),
                            Text("${widget.laptopScreen}'",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: "GodoB",
                                  color: Colors.black.withOpacity(0.8),
                                )),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Container(
                            color: Colors.black.withOpacity(0.6),
                            height: 43,
                            width: 1,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Prosesor",
                                style: TextStyle(
                                    color: Colors.blue.withOpacity(0.9),
                                    fontSize: 15,
                                    fontFamily: "GodoB")),
                            Text("${widget.laptopProcessor}",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: "GodoB",
                                  color: Colors.black.withOpacity(0.8),
                                )),
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
                              "${widget.laptopDescription} ",
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
                                  width: 90,
                                  child: ElevatedButton(
                                      style: ButtonStyle(
                                          shape: MaterialStatePropertyAll(
                                              ContinuousRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.elliptical(
                                                              13, 13)))),
                                          elevation:
                                              MaterialStatePropertyAll(5),
                                          side: MaterialStateProperty.all(
                                              BorderSide(color: Colors.white)),
                                          surfaceTintColor:
                                              MaterialStatePropertyAll(
                                                  Colors.white)),
                                      onPressed: () {
                                        widget.onDelete!(widget.laptopId);
                                      },
                                      child: Text(
                                        "Hapus",
                                        style: TextStyle(
                                          fontFamily: "GodoB",
                                          color: Colors.red.withOpacity(0.7),
                                          // color: Colors.blue[200],
                                        ),
                                      ))),
                            ),
                            Container(
                                padding: EdgeInsets.only(left: 5, right: 5)),
                            Container(
                              alignment: Alignment.centerRight,
                              child: SizedBox(
                                  width: 80,
                                  child: ElevatedButton(
                                      style: ButtonStyle(
                                          shape: MaterialStatePropertyAll(
                                              ContinuousRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.elliptical(
                                                              13, 13)))),
                                          elevation:
                                              MaterialStatePropertyAll(5),
                                          side: MaterialStateProperty.all(
                                              BorderSide(color: Colors.white)),
                                          surfaceTintColor:
                                              MaterialStatePropertyAll(
                                                  Colors.white)),
                                      onPressed: () {},
                                      child: Text(
                                        "Edit",
                                        style: TextStyle(
                                          fontFamily: "GodoB",
                                          color: Colors.black.withOpacity(0.5),
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
    );
  }
}
