import 'package:cloud_firestore/cloud_firestore.dart';

class Note {
  String? id;
  final String title;
  final String description;
  Timestamp? createdAt;
  Timestamp? updatedAt;

  Note ({
    this.id,
    required this.title,
    required this.description,
    this.createdAt,
    this.updatedAt
  });

  factory Note.fromDocument(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    return Note (
      id: doc.id,
      title: data['title'],
      description: data['description'],
      createdAt: data['createdAt'] as Timestamp,
      updatedAt: data['updatedAt'] as Timestamp,
    );
  }

  Map<String, dynamic> toDocument() {
    return {
      'title' : title,
      'description' : description,
      'createdAt' : createdAt,
      'updatedAt' : updatedAt
    };
  }
}