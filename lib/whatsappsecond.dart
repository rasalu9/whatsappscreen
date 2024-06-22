import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("chat"),
        actions: const [
          Icon(Icons.search),
        ],
        centerTitle: false,
      ),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: 12,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 31, 162, 141),
                  radius: MediaQuery.of(context).size.width * 0.050,
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: Text("Jass"),
                ),
                Spacer(),
                Text('6284475711')
              ]),
            );
          }),
    );
  }
}
