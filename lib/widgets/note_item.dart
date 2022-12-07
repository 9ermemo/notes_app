
import 'package:flutter/material.dart';

import 'edite_note_view_body.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>EditeNoteViewBody()));
      },
      child: Container(
        padding: const EdgeInsets.only(left: 16,top: 24 ,bottom: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.yellowAccent,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children:  [
            ListTile(
              title: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Flutter Tips',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              subtitle: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('buid your career with ahraf',
                    style: TextStyle(color: Colors.black)),
              ),
              trailing: IconButton(
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                  ),
                  onPressed: () {}),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 24),
              child: Text('May , 12 , 2020',style: TextStyle(color: Colors.black),),
            ),
          ],
        ),
      ),
    );
  }
}
