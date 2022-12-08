import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(child:  AddNoteForm());
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    Key? key,
  }) : super(key: key);

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode =  AutovalidateMode.disabled;
  String ? title , subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode ,
      child: Column(
        children:  [
          SizedBox(height: 30),
          CustomTextField(hint: "Title" , onSaved: (value){title = value;}),
          SizedBox(height: 10),
          CustomTextField(hint: "Content", maxLine: 6 , onSaved: (value){subTitle = value;}),
          CustomButton(
            onTap: (){
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
              }else{
                autoValidateMode = AutovalidateMode.always;
                setState(() {

                });
              }
            },
            title: 'Save',
          ),
        ],
      ),
    );
  }
}
