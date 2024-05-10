import 'package:flutter/material.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:notes/services/note_service.dart';
import 'package:notes/widgets/note_dialog.dart';

class NoteListScreen extends StatefulWidget {
  const NoteListScreen({super.key});

  @override
  State<NoteListScreen> createState() => _NoteListScreenState();
}

class _NoteListScreenState extends State<NoteListScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
      ),
      body: NoteList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return const NoteDialog();
              });
        },
        tooltip: 'Add Note',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class NoteList extends StatelessWidget {
  const NoteList({super.key});

  @override
  Widget build(BuildContext context) {
    // return StreamBuilder(
    //     stream: FirebaseFirestore.instance.collection('notes').snapshots(), jika menggunakan stream (1)
    return StreamBuilder(
        stream: NoteService.getNoteList(), //jika menggunakan stream (2)
        // return FutureBuilder(
        //     future: NoteService.retrieveNote(), //jika menggunakan future
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return const Center(
                child: CircularProgressIndicator(),
              );
            default:
              return ListView(
                padding: const EdgeInsets.only(bottom: 80),
                //children: snapshot.data!.docs.map((document) { awal
                children: snapshot.data!.map((document) {
                  return Card(
                    child: ListTile(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return NoteDialog(note: document);
                            });
                      },
                      leading: document.imageUrl != null ? CircleAvatar(
                        backgroundImage: NetworkImage(document.imageUrl!),) : 
                        const CircleAvatar(backgroundColor: Colors.grey,
                        child: Icon(Icons.image),),
                        
                      title: Text(document.title),
                      subtitle: Text(document.description),
                      trailing: InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text('Delete Notes??'),
                                  actions: [
                                    ElevatedButton(
                                        onPressed: () {
                                          NoteService.deleteNote(document)
                                              .whenComplete(() =>
                                                  Navigator.of(context).pop());
                                        },
                                        child: Text('Yes')),
                                    ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('No')),
                                  ],
                                );
                              });
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Icon(Icons.delete),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              );
          }
        });
  }
}
