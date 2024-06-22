import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:notes/data/notes.dart';
import 'package:notes/widgets/note_tile.dart';

// dart
void main() {
  // client, di, db, abcd,
  // flutter
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
  }

  void _incrementCounter() {
    _counter++;
    print('counter:$_counter');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 3,
          mainAxisSpacing: 3,
          crossAxisSpacing: 4,
          children: List.generate(notesList.length, (index) {
            final note = notesList[index];
            // Adjusting the tile size based on the note text length
            final int crossAxisCellCount = (index % 5 == 0) ? 2 : 1;
            final double mainAxisCellCount = (note.text.length > 50) ? 2 : 1;
            return StaggeredGridTile.count(
              crossAxisCellCount: crossAxisCellCount,
              mainAxisCellCount: mainAxisCellCount,
              child: NoteTile(note: note),
            );
          }),
        ),
      ),
      drawer: Container(
        color: Colors.red,
        width: 100,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
