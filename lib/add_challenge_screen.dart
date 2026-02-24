import 'package:actday/history_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddChallengeScreen extends StatefulWidget {
  const AddChallengeScreen({super.key});

  @override
  State<AddChallengeScreen> createState() => _AddChallengeScreenState();
}

class _AddChallengeScreenState extends State<AddChallengeScreen> {
  String _challenge = "";
  String _description = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add Challenge")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Write challenge here....',
                  labelText: 'Your Challenge',
                ),
                onChanged: (String value) {
                  setState(() {
                    _challenge = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Write description here....',
                  labelText: 'Description',
                ),
                onChanged: (String value) {
                  setState(() {
                    _description = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                child: const Text('Submit'),
                onPressed: () {
                  if (_challenge.isEmpty || _description.isEmpty) return;

                  final newItem = HistoryItem(
                    challenge: _challenge,
                    description: _description,
                    status: "Not Completed Yet",
                    imagePath: "images/image_not_found.jpg",
                  );
                  Navigator.pop(context, newItem);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
