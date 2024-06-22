class Notes {
  final int id;
  final String text;
  final DateTime timestamp;

  Notes({required this.id, required this.text, required this.timestamp});

  @override
  String toString() {
    return 'Notes{id: $id, text: $text, timestamp: $timestamp}';
  }
}

List<Notes> notesList = [
  Notes(
      id: 1,
      text: 'Meeting with team at 10 AM',
      timestamp: DateTime.now().subtract(Duration(hours: 2))),
  Notes(
      id: 2,
      text: 'Lunch with client',
      timestamp: DateTime.now().subtract(Duration(hours: 1))),
  Notes(
      id: 3,
      text: 'Submit project report',
      timestamp: DateTime.now().subtract(Duration(days: 1))),
  Notes(
      id: 4,
      text: 'Call with project manager',
      timestamp: DateTime.now().subtract(Duration(minutes: 30))),
  Notes(
      id: 5,
      text: 'Weekly team sync-up',
      timestamp: DateTime.now().subtract(Duration(days: 3))),
  Notes(
      id: 6,
      text: 'Review pull requests',
      timestamp: DateTime.now().subtract(Duration(hours: 5))),
  Notes(
      id: 7,
      text: 'Update project documentation',
      timestamp: DateTime.now().subtract(Duration(minutes: 10))),
  Notes(
      id: 8,
      text: 'Fix critical bugs',
      timestamp: DateTime.now().subtract(Duration(days: 2))),
  Notes(
      id: 9,
      text: 'Plan next sprint tasks',
      timestamp: DateTime.now().subtract(Duration(hours: 6))),
  Notes(
      id: 10,
      text: 'Code review with peers',
      timestamp: DateTime.now().subtract(Duration(days: 4))),
  Notes(
      id: 11,
      text: 'Prepare for client demo',
      timestamp: DateTime.now().subtract(Duration(minutes: 15))),
  Notes(
      id: 12,
      text: 'Team outing plans',
      timestamp: DateTime.now().subtract(Duration(hours: 3))),
  Notes(
      id: 13,
      text: 'Update app design',
      timestamp: DateTime.now().subtract(Duration(days: 5))),
  Notes(
      id: 14,
      text: 'Check server status',
      timestamp: DateTime.now().subtract(Duration(hours: 7))),
  Notes(
      id: 15,
      text: 'Research new technologies',
      timestamp: DateTime.now().subtract(Duration(minutes: 45))),
  Notes(
      id: 16,
      text: 'Lunch with client',
      timestamp: DateTime.now().subtract(Duration(hours: 1))),
  Notes(
      id: 17,
      text: 'Submit project report',
      timestamp: DateTime.now().subtract(Duration(days: 1))),
  Notes(
      id: 18,
      text: 'Call with project manager',
      timestamp: DateTime.now().subtract(Duration(minutes: 30))),
  Notes(
      id: 19,
      text: 'Weekly team sync-up',
      timestamp: DateTime.now().subtract(Duration(days: 3))),
  Notes(
      id: 20,
      text: 'Review pull requests',
      timestamp: DateTime.now().subtract(Duration(hours: 5))),
  Notes(
      id: 21,
      text: 'Meeting with team at 10 AM',
      timestamp: DateTime.now().subtract(Duration(hours: 2))),
];
