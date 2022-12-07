import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'note_item.dart';
import 'notes_listview.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(height: 20),
        CustomAppBar(
          title: "Notes",
          icon: Icons.search,
        ),
        Expanded(child: NoteListView()),
      ],
    );
  }
}




