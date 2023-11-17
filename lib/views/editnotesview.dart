
import 'package:flutter/material.dart';

import '../models/note_model.dart';
import '../widgets/editnotesviewbody.dart';

class editnotesview extends StatelessWidget{
  const editnotesview({super.key,required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
  return Scaffold(
   
  body: SingleChildScrollView(
    child: EditNoteViewBody(note: note,

    ),
  ),
  );
  }

}