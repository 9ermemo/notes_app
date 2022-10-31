import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
      SizedBox(height: 30),
        CustomTextField(hint: "Title"),
        SizedBox(height: 10),
        CustomTextField(hint: "Content",maxLine: 6),
      ],
    );
  }
}
