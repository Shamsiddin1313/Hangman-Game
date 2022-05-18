import 'package:flutter/material.dart';
import 'package:hangman/image.dart';
import 'package:hangman/letter.dart';
import 'package:hangman/logic.dart';

class Game extends StatefulWidget {
  const Game({Key? key}) : super(key: key);

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  String word = "Amity";
  List<String> alphabet = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L",
    "M",
    "N",
    "O",
    "P",
    "Q",
    "R",
    "S",
    "T",
    "U",
    "V",
    "W",
    "X",
    "Y",
    "Z",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade800,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Stack(
                children: [
                  image(Logic.attempt >= 0, "assets/hang.png"),
                  image(Logic.attempt >= 1, "assets/head.png"),
                  image(Logic.attempt >= 2, "assets/body.png"),
                  image(Logic.attempt >= 3, "assets/ra.png"),
                  image(Logic.attempt >= 4, "assets/la.png"),
                  image(Logic.attempt >= 5, "assets/rl.png"),
                  image(Logic.attempt >= 6, "assets/ll.png"),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: word
                  .split("")
                  .map((e) => letter(e.toUpperCase(),
                      Logic.selectedChar.contains(e.toUpperCase())))
                  .toList(),
            ),
            SizedBox(
              width: double.infinity,
              height: 250,
              child: GridView.count(
                crossAxisCount: 7,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                padding: const EdgeInsets.all(8),
                children: alphabet.map((e) {
                  return RawMaterialButton(
                    onPressed: Logic.selectedChar.contains(e)
                        ? null
                        : () {
                            setState(() {
                              Logic.selectedChar.add(e);
                              if (!word.split("").contains(e.toUpperCase())) {
                                Logic.attempt++;
                              }
                            });
                          },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      e,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    fillColor: Logic.selectedChar.contains(e)
                        ? Colors.black87
                        : Colors.blue,
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
