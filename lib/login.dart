import 'package:flutter/material.dart';
import 'package:hangman/game.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 50),
            child: Text(
              "The",
              style: TextStyle(
                  color: Colors.blue.shade500,
                  fontSize: 50,
                  fontWeight: FontWeight.w900),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              "Hangman",
              style: TextStyle(
                  color: Colors.pink.shade400,
                  fontSize: 50,
                  fontWeight: FontWeight.w900),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: SizedBox(
              height: 300,
              width: 500,
              child: Image.asset("assets/hanq.png"),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Game()));
              },
              child: Container(
                height: 80,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.purple),
                child: const Center(
                    child: Text(
                  "Start",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
              ),
            ),
          )
        ],
      )),
    );
  }
}
