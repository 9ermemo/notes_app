import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_hive_db/cubits/add_note_cubit.dart';

import 'add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<AddNoteCubit>(context);
    return BlocBuilder<AddNoteCubit, AddNoteState>(
      builder: (context, state) {
        if (state is AddNoteLoading) {
          return const CircularProgressIndicator();
        } else if (state is AddNoteSuccess) {
          return const SnackBar(content: Text('is done !'));
        } else if (state is AddNoteFailure) {
          return SnackBar(content: Center(child: Text(state.error)));
        }
        return const AddNoteForm();
      },
    );
  }
}
