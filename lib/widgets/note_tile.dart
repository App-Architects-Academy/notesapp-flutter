import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:notes/data/notes.dart';
import 'package:notes/widgets/common.dart';

class NoteTile extends StatelessWidget {
  final Notes note;

  const NoteTile({Key? key, required this.note}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      color: getTileColor(note.id),
      child: Flexible(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                note.text,
                style: TextStyle(fontSize: 16, color: Colors.white),
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 4),
              Text(
                DateFormat('yyyy-MM-dd – kk:mm').format(note.timestamp),
                style: TextStyle(fontSize: 12, color: Colors.white70),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
