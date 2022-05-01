import 'package:flutter/material.dart';
import 'package:mealfit/src/components/transaction_form.dart';

class MealsHome extends StatefulWidget {
  const MealsHome({Key? key}) : super(key: key);

  @override
  State<MealsHome> createState() => _MealsHomeState();
}

class _MealsHomeState extends State<MealsHome> {
  _openTransactionForm(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return const TransactionForm();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 214, 211, 214),
      body: const Center(
        child: Text('Meals home'),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 152, 110, 224),
        onPressed: () {
          _openTransactionForm(context);
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
