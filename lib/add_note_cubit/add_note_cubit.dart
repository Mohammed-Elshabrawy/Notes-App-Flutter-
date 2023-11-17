import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';
class AddNotesCubit extends Cubit<AddNotesState>{
  AddNotesCubit() : super(AddNotesInitial());
  Color color = const Color(0xffAC3931);
  addnote(NoteModel note) async {
    note.color = color.value;
    emit(AddNotesLoading());
    try{
  var notesBox = Hive.box<NoteModel>('notes_box');
  await notesBox.add(note);
  emit(AddNotesSuccess());
    } catch(e){
        emit(AddNotesFailure(e.toString()));
    }
  }
}