import 'package:flutter/material.dart';
import 'package:test_aplikasi/utilities/settings.dart';

class CustomDivider extends StatelessWidget {
  final double width; 
  const CustomDivider({required this.width, super.key});
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
            height: 1,
            width: width,
            child: Container(
              decoration: BoxDecoration(
              color: warnaCerah,
              boxShadow: tambahBayanganGaris
            ),
          )
        );
  }
}