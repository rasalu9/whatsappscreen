import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:whatsappscreen/whatsappsecond.dart';

class Chatscreen extends StatefulWidget {
  const Chatscreen({super.key});

  @override
  State<Chatscreen> createState() => _ChatscreenState();
}

class _ChatscreenState extends State<Chatscreen> {
  var person_type = 1;
  var time = "";
  var amessage = "";

  var list = <MessageObject>[];
  var chatcontroller = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Chat"),
        ),
        body: Column(children: [
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: list.length,
                itemBuilder: (context, index) {
                  var message = list[index];
                  return Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                        // padding: const EdgeInsets.all(10),
                        color:
                            message.personType == 1 ? Colors.teal : Colors.lime,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                  child: Column(
                                      crossAxisAlignment:
                                          message.personType == 1
                                              ? CrossAxisAlignment.end
                                              : CrossAxisAlignment.start,
                                      children: [
                                        CircleAvatar(
                                          backgroundImage: AssetImage(
                                              "assets/images/image1.png"),
                                        ),
                                        Text(
                                          message.personType == 1
                                              ? "Jass"
                                              : "Aash",
                                          style: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          message.message ?? "",
                                          style: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          message.dateTime ?? "",
                                          style: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                      ])),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }),
          ),
          Row(children: [
            Expanded(
                child: TextField(
              controller: chatcontroller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.0, color: Colors.black)),
                hintText: "Enter message",
              ),
              style: TextStyle(color: Colors.black),
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: ButtonStyle(
                      foregroundColor: WidgetStateProperty.all(Colors.black),
                      backgroundColor: WidgetStateProperty.all(
                          const Color.fromARGB(255, 41, 160, 148))),
                  onPressed: () {
                    if (chatcontroller.text.isEmpty) {
                      Fluttertoast.showToast(msg: "Enter message first");
                    } else {
                      amessage = chatcontroller.text.toString();
                      person_type = 1;

                      setState(() {});
                      list.add(MessageObject(
                          message: amessage,
                          personType: person_type,
                          dateTime: time));
                    }
                  },
                  child: Text("Jass")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: ButtonStyle(
                      foregroundColor: WidgetStateProperty.all(Colors.black),
                      backgroundColor: WidgetStateProperty.all(Colors.lime)),
                  onPressed: () {
                    if (chatcontroller.text.isEmpty) {
                      Fluttertoast.showToast(msg: "Enter message first");
                    } else {
                      amessage = chatcontroller.text.toString();
                      person_type = 2;

                      setState(() {});
                      list.add(MessageObject(
                          message: amessage,
                          personType: person_type,
                          dateTime: time));
                    }
                  },
                  child: Text("Aash")),
            )
          ]),
        ]));
  }
}
