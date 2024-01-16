
import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

class Inputform extends StatelessWidget {
  const Inputform({
    super.key,
    required this.dataInput,
    required this.textcontrolerName,
    required this.informasiData,
  });

  final String textcontrolerName;
  final TextEditingController dataInput;
  final String informasiData;
  
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            style: TextStyle(color: Colors.blue),
            controller: dataInput,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Tolong masukan ${informasiData}';
              }
              return null;
            },
            strutStyle: StrutStyle(fontFamily: "GodoB"),
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              label: Text("  ${informasiData}  ",
                  style: TextStyle(
                    backgroundColor: Colors.white,
                    color: Colors.blue,
                  )),
              hintText: 'Masukan ${informasiData}',
              hintStyle: TextStyle(
                color: Colors.blue.shade200,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue, // Default border color
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors
                      .blue, // Change this to your desired color while active
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue, // Default border color
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
          ),],
      ),
    );
  }
}