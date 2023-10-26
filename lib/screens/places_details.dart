import 'package:flutter/material.dart';

class PlacesDetails extends StatefulWidget {
  const PlacesDetails({super.key});

  @override
  State<PlacesDetails> createState() {
    return _PlacesDetailsState();
  }
}

class _PlacesDetailsState extends State<PlacesDetails> {
  final _titleController = TextEditingController();
  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add new Place',
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
                decoration: const InputDecoration(labelText: 'Title'),
                controller: _titleController,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onBackground,
                )),
            ElevatedButton.icon(
              onPressed: () {},
              label: const Text(
                'add',
              ),
              icon: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
