import 'package:flutter/material.dart';
import 'package:whatsappscreen/whatsappsecond.dart';

class Whatsappscreen extends StatefulWidget {
  const Whatsappscreen({super.key});

  @override
  State<Whatsappscreen> createState() => _WhatsappscreenState();
}

class _WhatsappscreenState extends State<Whatsappscreen> {
  var a = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Whatsapp "),
          centerTitle: false,
          actions: [
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: IconButton(
                  onPressed: () {}, icon: Icon(Icons.qr_code_scanner)),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: IconButton(
                  onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
            ),
            IconButton(
                onPressed: () {
                  setState(() {});
                },
                icon: Icon(Icons.more_vert)),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            TextField(
              decoration: InputDecoration(
                icon: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Icon(Icons.search),
                ),
                // focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                hintText: "Search",
              ),
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: a,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://placehold.co/600x400/EEE/31343C",
                              scale: 1.0),
                          backgroundColor: Color.fromARGB(255, 17, 157, 134),
                          radius: MediaQuery.of(context).size.width * 0.055,
                        ),
                        const Column(children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                            child: Text(
                              "Rasalu",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text(
                              "Hii!",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ]),
                        Spacer(),
                        const Text(
                          "Yesterday",
                          style: TextStyle(color: Colors.black),
                        ),
                      ]));
                }),
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 46, 150, 133),
          onPressed: () {
            a++;
            setState(() {});
          },
          child: Icon(Icons.chat),
        ));
  }
}
