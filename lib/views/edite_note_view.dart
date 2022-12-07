

import 'package:flutter/material.dart';

import '../widgets/edite_note_view_body.dart';

class EditeNoteView extends StatelessWidget {
  const EditeNoteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditeNoteViewBody(),
    );
  }
}
