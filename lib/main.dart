import 'package:flutter/material.dart';

void main() {
  runApp(const Hangman());
}

class Hangman extends StatefulWidget {
  const Hangman({Key? key}) : super(key: key);

  @override
  State<Hangman> createState() => _HangmanState();
}

class _HangmanState extends State<Hangman> {
  int count = 0;
  bool head = false;
  bool body = false;
  bool lha = false;
  bool rha = false;
  bool lle = false;
  bool rle = false;
  bool j1 = false;
  bool j2 = false;
  bool j3 = false;
  bool j4 = false;
  bool j5 = false;
  bool j6 = false;

  design(String a) {
    return InkWell(
      onTap: () {
        setState(() {
          setState(() {
            if (a == 'B') {
              j1 = true;
            } else if (a == 'E') {
              j2 = true;
            } else if (a == 'R') {
              j3 = true;
            } else if (a == 'L') {
              j4 = true;
            } else if (a == 'I') {
              j5 = true;
            } else if (a == 'N') {
              j6 = true;
            } else {
              count = count + 1;
              if (count == 1) {
                head = true;
              } else if (count == 2) {
                body = true;
              } else if (count == 3) {
                rha = true;
              } else if (count == 4) {
                lha = true;
              } else if (count == 5) {
                rle = true;
              } else if (count == 6) {
                lle = true;
              }
            }
          });
        });
      },
      child: Container(
          color: Colors.black12,
          height: 40,
          child: Center(
            child: Text(
              a,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          )),
    );
  }

  letter(String a, bool k) {
    return Container(
      color: Colors.black,
      height: 20,
      child: Center(
        child: Visibility(
          visible: k,
          child: Text(
            a,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.deepPurple,
            appBar: AppBar(
              backgroundColor: Colors.black12,
              title: Center(
                child: Text(
                  'HANGMAN GAME',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      color: Colors.black),
                ),
              ),
            ),
            body: SizedBox(height: 20,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 400,
                      child: Stack(
                        children: [
                          Image.asset('pics/hang.png'),
                          Visibility(
                              visible: head, child: Image.asset('pics/head.png')),
                          Visibility(
                              visible: body, child: Image.asset("pics/body.png")),
                          Visibility(
                              visible: rha, child: Image.asset('pics/ra.png')),
                          Visibility(
                              visible: lha, child: Image.asset('pics/la.png')),
                          Visibility(
                              visible: rle, child: Image.asset('pics/rl.png')),
                          Visibility(
                              visible: lle, child: Image.asset('pics/ll.png')),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: GridView.count(
                        shrinkWrap: true,
                        crossAxisCount: 6,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                        children: [
                          letter('B', j1),
                          letter('E', j2),
                          letter('R', j3),
                          letter('L', j4),
                          letter('I', j5),
                          letter('N', j6),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: GridView.count(
                        shrinkWrap: true,
                        crossAxisCount: 7,
                        mainAxisSpacing:20,
                        crossAxisSpacing: 4,
                        children: [
                          design('A'),
                          design('B'),
                          design('C'),
                          design('D'),
                          design('E'),
                          design('F'),
                          design('G'),
                          design('H'),
                          design('I'),
                          design('J'),
                          design('K'),
                          design('L'),
                          design('M'),
                          design('N'),
                          design('O'),
                          design('P'),
                          design('Q'),
                          design('R'),
                          design('S'),
                          design('T'),
                          design('U'),
                          design('V'),
                          design('W'),
                          design('X'),
                          design('Y'),
                          design('Z'),
                        ],
                      ),
                    ),
                  ]),
            )));
  }
}
