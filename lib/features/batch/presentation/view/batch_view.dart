import 'package:flutter/material.dart';

class BatchView extends StatefulWidget {
  const BatchView({super.key});

  @override
  _BatchViewState createState() => _BatchViewState();
}

class _BatchViewState extends State<BatchView> {
  final _batchNameController = TextEditingController();
  final List<String> _batches = [];

  void _addBatch() {
    final batchName = _batchNameController.text.trim();
    if (batchName.isNotEmpty) {
      setState(() {
        _batches.add(batchName);
      });
      _batchNameController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Batch'),
        automaticallyImplyLeading: false, //removes the arrow
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _batchNameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Batch Name',
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _addBatch,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: const Text('Add Batch'),
            ),
            const SizedBox(height: 20),
            const Text(
              'List of Batches',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _batches.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_batches[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
