import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class EditTaskPage extends StatefulWidget {
  final Map task;

  EditTaskPage({required this.task});

  @override
  _EditTaskPageState createState() => _EditTaskPageState();
}

class _EditTaskPageState extends State<EditTaskPage> {
  final supabase = Supabase.instance.client;
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.text = widget.task['title'];
  }

  Future<void> updateTask() async {
    final updatedTitle = _controller.text.trim();

    if (updatedTitle.isNotEmpty) {
      await supabase
          .from('tasks')
          .update({'title': updatedTitle})
          .eq('id', widget.task['id']);
      Navigator.pop(context, true); // Return true to refresh
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Edit Task')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: 'Edit Task'),
            ),
            SizedBox(height: 20),
            ElevatedButton(child: Text('Update'), onPressed: updateTask),
          ],
        ),
      ),
    );
  }
}
