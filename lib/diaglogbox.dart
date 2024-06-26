import 'package:flutter/material.dart';

class Diaglogbox extends StatefulWidget {
  const Diaglogbox({super.key});

  @override
  State<Diaglogbox> createState() => _DiaglogboxState();
}

class _DiaglogboxState extends State<Diaglogbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog box"),
      ),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("This is title"),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("this is content"),
                            OutlinedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("Back"))
                          ],
                        ),
                      );
                    });
              },
              child: Text("Dialog Box"))
        ],
      ),
    );
  }
}
