import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/views/home_view.dart';

void main() async {
  // initial hive 
  await Hive.initFlutter();
  await Hive.openBox<NoteModel>('noteBox');

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      home:const HomeView(),
    );
  }
}

