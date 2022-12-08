import 'package:flutter/material.dart';
import 'package:note_app_hive_db/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.onTap, required this.title}) : super(key: key);

  final VoidCallback onTap;
  final String title;
  @override
  Widget build(BuildContext context) {
   final width =  MediaQuery.of(context).size.width/2;
   final height =  MediaQuery.of(context).size.height/10;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(10),
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: kPrimaryColor, borderRadius: BorderRadius.circular(20)),
        alignment: Alignment.center,
        child: Text(title),
      ),
    );
  }
}
