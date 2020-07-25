import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'models/transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'New shoes',
      amount: 60.0,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Groceries',
      amount: 50.0,
      date: DateTime.now(),
    ),
  ];

  // String titleInput;
  // String amountInput;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              child: Text('Chart'),
            ),
          ),
          Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Title',
                    ),
                    controller: titleController,
                    // onChanged: (value) {
                    //   titleInput = value;
                    // },
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Amount',
                    ),
                    controller: amountController,
                    // onChanged: (value) {
                    //   amountInput = value;
                    // },
                  ),
                  FlatButton(
                    child: Text(
                      'Add transaction',
                    ),
                    textColor: Colors.purple,
                    onPressed: () {
                      print(titleController.text);
                    },
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: transactions.map((txn) {
              return Card(
                child: Row(
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.all(10.0),
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 15.0),
                        child: Text(
                          '\$${txn.amount}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.purple,
                          ),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.purple,
                            width: 2.0,
                          ),
                        )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          txn.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          DateFormat.yMMMEd().add_jm().format(txn.date),
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
