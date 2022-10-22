import 'package:flutter/material.dart';

import 'custom_app_bar.dart';






class NotesViewBody extends StatelessWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        CustomAppBar(),
      ],
    );
  }
}



