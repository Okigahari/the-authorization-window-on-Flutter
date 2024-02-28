import 'package:flutter/material.dart';
import 'package:blurrycontainer/blurrycontainer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/111.jpg"), fit: BoxFit.cover),
        ),
        child: BlurryContainer(
          blur: 3,
          width: 200,
          height: 200,
          elevation: 300,
          color: Color.fromARGB(31, 89, 99, 245),
          padding: const EdgeInsets.all(1),
          borderRadius: const BorderRadius.all(Radius.circular(1)),
          child: Column(children: [
            SizedBox(
              width: 350,
              height: 80,
            ),
            Container(
              width: 220,
              height: 220,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/222.jpg"), fit: BoxFit.cover),
                border: Border.all(
                    width: 2, color: Color.fromARGB(248, 60, 114, 231)),
                boxShadow: [
                  BoxShadow(
                    blurStyle: BlurStyle.outer,
                    color: Color.fromARGB(255, 3, 127, 230).withOpacity(0.5),
                    spreadRadius: 10,
                    blurRadius: 7,
                    offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                gradient: LinearGradient(colors: [
                  Color.fromARGB(179, 128, 177, 241),
                  Color.fromARGB(235, 58, 56, 196)
                ]),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 190),
              width: 245,
              height: 45,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(209, 72, 82, 226),
                  Color.fromARGB(92, 255, 255, 255),
                  Color.fromARGB(242, 42, 51, 180)
                ]),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(
                    width: 0.5, color: Color.fromARGB(183, 182, 175, 223)),
                boxShadow: [
                  BoxShadow(
                    blurStyle: BlurStyle.normal,
                    color: Color.fromARGB(174, 66, 39, 218).withOpacity(0.5),
                    spreadRadius: 8,
                    blurRadius: 30,
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(5),
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Icon(
                      Icons.discord,
                      size: 35,
                      color: Color.fromARGB(255, 250, 250, 250),
                    ),
                    SizedBox(width: 25),
                    Text('Join in discord',
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 18)),
                  ],
                ),
              ),
            ), // дискорд кнопка
            Container(
              margin: const EdgeInsets.only(top: 15),
              width: 245,
              height: 45,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(117, 241, 242, 245),
                  Color.fromARGB(76, 233, 109, 109),
                  Color.fromARGB(61, 164, 241, 164),
                  Color.fromARGB(94, 164, 169, 241),
                  Color.fromARGB(241, 217, 218, 236)
                ]),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(
                    width: 0.5, color: Color.fromARGB(183, 182, 175, 223)),
                boxShadow: [
                  BoxShadow(
                    blurStyle: BlurStyle.normal,
                    color: Color.fromARGB(129, 226, 19, 88).withOpacity(0.5),
                    spreadRadius: 8,
                    blurRadius: 30,
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(6),
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Image.asset(
                      "images/google.png",
                      height: 30,
                      width: 30,
                    ),
                    SizedBox(width: 13),
                    Text('Continue with Google',
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 18)),
                  ],
                ),
              ),
            ), //гугл кнопка
            Container(
              margin: const EdgeInsets.only(top: 15),
              width: 245,
              height: 45,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(228, 255, 255, 255),
                  Color.fromARGB(74, 75, 75, 75),
                  Color.fromARGB(241, 217, 218, 236)
                ]),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(
                    width: 0.5, color: Color.fromARGB(183, 182, 175, 223)),
                boxShadow: [
                  BoxShadow(
                    blurStyle: BlurStyle.normal,
                    color: Color.fromARGB(129, 252, 252, 252).withOpacity(0.5),
                    spreadRadius: 8,
                    blurRadius: 30,
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(1),
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Icon(
                      Icons.apple_outlined,
                      size: 42,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    SizedBox(width: 8),
                    Text('Continue with Apple',
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 18)),
                  ],
                ),
              ),
            ) //эпл кнопка
          ]),
        ),
      ),
    );
  }
}
