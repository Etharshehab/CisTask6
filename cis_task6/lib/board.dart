import 'package:flutter/material.dart';
import 'model/listview.dart';

class Board extends StatefulWidget {
  const Board({super.key});

  @override
  State<Board> createState() => _BoardState();
}

class _BoardState extends State<Board> {
  TextEditingController name = TextEditingController();
  TextEditingController comment = TextEditingController();
  final mykey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const Padding(
        padding: EdgeInsets.all(1.0),
        child: Icon(Icons.arrow_back_ios, color: Colors.white),
      )),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromARGB(255, 27, 27, 27),
        margin: const EdgeInsets.only(top: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(board[0].img),
            const SizedBox(
              height: 10,
            ),
            Text(board[0].time,
                style: const TextStyle(
                  color: Color.fromARGB(255, 143, 139, 139),
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(
              height: 10,
            ),
            Text(board[0].text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(height: 10),
            Text(board[0].post,
                textAlign: TextAlign.end,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                )),
            const SizedBox(height: 10),
            Form(
              key: mykey,
              child: Container(
                margin: const EdgeInsets.only(left: 10.0),
                child: Column(
                  children: [
                    TextFormField(
                      controller: name,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'name is required';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        fillColor: Color.fromARGB(255, 143, 139, 139),
                        filled: true,
                        hintText: 'your name',
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: comment,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'comment is required';
                        }
                        return null;
                      },
                      maxLines: 3,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 143, 139, 139),
                        hintText: 'Write a comment',
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(300, 50),
                            backgroundColor: Colors.teal,
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                          ),
                          onPressed: () {
                            if (mykey.currentState.validate()) {
                              return;
                            } else {
                              print("name required");
                            }
                          },
                          child: const Text('submit',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
