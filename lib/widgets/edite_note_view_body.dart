

import 'package:flutter/material.dart';

import 'custom_app_bar.dart';


class EditeNoteViewBody extends StatelessWidget {
  const EditeNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 50),
          CustomAppBar(
            title: 'EditeNote',
            icon: Icons.check,
          ),
        ],
      ),
    );
  }
}
