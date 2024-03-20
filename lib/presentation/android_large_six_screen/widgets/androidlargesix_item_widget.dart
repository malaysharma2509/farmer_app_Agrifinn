import 'package:flutter/material.dart';
import 'package:kartikay_s_application7/core/app_export.dart';

class AndroidlargesixItemWidget extends StatelessWidget {
  final String imagePath;
  final String route;
  final String text;

  const AndroidlargesixItemWidget({
    Key? key,
    required this.imagePath,
    required this.route,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Align(
        alignment: Alignment.center,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 4.h,
            vertical: 10.v,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue), // Example border
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 21.v),
              Image.asset(
                imagePath,
                height: 90.v,
                width: 102.h,
                alignment: Alignment.center,
              ),
              SizedBox(height: 8), // Adjust spacing between image and text
              Text(
                text,
                style: TextStyle(fontSize: 16), // Example text style
              ),
            ],
          ),
        ),
      ),
    );
  }
}
