import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../add_note_cubit/add_note_cubit.dart';
import '../cubits/notes_cubit.dart';
import 'addnoteform.dart';



class addnote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (BuildContext context) => AddNotesCubit() ,
      child: BlocConsumer<AddNotesCubit,AddNotesState>
            ( listener:(context, state) {
            if (state is AddNotesFailure) {}
            if (state is AddNotesSuccess) {
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            }
          },
              builder: (context, state) {
                return AbsorbPointer(
                    absorbing: state is AddNotesLoading ? true : false,
                    child: Padding(
                      padding:  EdgeInsets.only(
                          left: 16,
                          right: 16,
                          bottom: MediaQuery.of(context).viewInsets.bottom
                      ),
                      child: const SingleChildScrollView(child: AddNoteForm()),
                    ));
          }
          )
    );
  }
}

