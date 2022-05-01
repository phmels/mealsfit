import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  const TransactionForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final valueController = TextEditingController();
    return Card(
      color: const Color.fromARGB(255, 214, 211, 214),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                labelText: 'Alimento',
              ),
            ),
            TextField(
              controller: valueController,
              decoration: const InputDecoration(
                labelText: 'Peso',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    print(titleController.text);
                    print(valueController.text);
                  },
                  child: const Text('Novo Alimento'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
