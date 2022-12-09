import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_hive_db/cubits/add_note_cubit.dart';

import 'add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            print(" failure ");
          }
          if (state is AddNoteSuccess) {
            Navigator.of(context).pop();
          }
        },
        builder: (context, state) {
          if (state is AddNoteLoading) {
            return const CircularProgressIndicator();
          }
          return Container();
        },
      ),
    );
  }
}
