import 'package:flutter/material.dart';

class Whatsappscreen extends StatefulWidget {
  const Whatsappscreen({super.key});

  @override
  State<Whatsappscreen> createState() => _WhatsappscreenState();
}

class _WhatsappscreenState extends State<Whatsappscreen> {
  int _counter = 0;
  void _incrementcounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Whatsapp Screen"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 17, 157, 134),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          const TextField(
            decoration: InputDecoration(
              icon: Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Icon(Icons.search),
              ),
              hintText: "Search",
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: 6,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 17, 157, 134),
                      radius: MediaQuery.of(context).size.width * 0.055,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(30, 50, 0, 0),
                      child: Text(
                        "Rasalu \n hello!",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Spacer(),
                    const Text(
                      "Yesterday",
                      style: TextStyle(color: Colors.black),
                    ),
                  ]),
                );
              }),
        ])),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 46, 150, 133),
          onPressed: _incrementcounter,
          child: Icon(Icons.add),
        ));
  }
}
