import 'package:cgk/select_questions.dart';
import 'package:cgk/timer.dart';
import 'package:flutter/material.dart';
import 'statistics.dart';

class menu extends StatefulWidget {
  const menu({Key? key}) : super(key: key);

  @override
  _menu createState() => _menu();
}

class _menu extends State<menu> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    //Звук
    bool? sound = false;
    //Вибрация
    bool? vib = false;
    return Scaffold(
      backgroundColor: const Color(0xff4397de),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 1 / 20 * height),

            Row(
              children: [
                  SizedBox(width: 1 / 10 * width),
                //вместо иконки
                  SizedBox(
                  width: width * 1/3,
                  height: width * 1/3,
                  // Inkwell
                  child: InkWell(
                    radius: 100,
                    // display a snackbar on tap
                    onTap: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(


                            content: new SizedBox(
                              height: height * 22/100,
                              width: width / 5,
                              child: Column(
                                children: [
                                    Row(
                                        children: [
                                          SizedBox( width: 100,  height: 100, child: InkWell(
                                            radius: 50,
                                            // изменение картинки профиля
                                            onTap: () => (),
                                            child: Ink.image(
                                              fit: BoxFit.cover,
                                              image: const NetworkImage(
                                                  'https://www.kindacode.com/wp-content/uploads/2022/07/bottle.jpeg'),
                                            ),
                                          )),
                                          SizedBox(width: 10,),
                                          SizedBox(
                                              height: 100,
                                              width: 120,

                                              child: Align(
                                                  alignment: Alignment.center,
                                                  child: Text("Имя Фамилия",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 26))
                                              ),
                                          ),

                                        ]
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                        child: Text('Взятых вопросов:', style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20))),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child : Text('Среднее время:',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20))),

                                  ],

                              )
                            ),
                            actions: <Widget>[
                            TextButton(

                                    onPressed: () => Navigator.pop(context, 'Готово'),
                                    child: const Text('Готово',
                                        style: TextStyle(fontSize: 20)),
                              ),


                      ]
                    ),
                    ),
                    // implement the image with Ink.image
                    child: Ink.image(
                      fit: BoxFit.cover,
                      image: const NetworkImage(
                          'https://www.kindacode.com/wp-content/uploads/2022/07/bottle.jpeg'),
                    ),
                  ),
                ),
                SizedBox(
                  height: width * 1/3,
                  width: width * 17/30,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Имя Фамилия',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,

                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 1 / 25 * height),
            ElevatedButton(
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(
                    Size(8 / 9 * width, 1 / 12 * height)),
                backgroundColor:
                    MaterialStateProperty.all(Color.fromRGBO(57, 135, 200, 1)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(width: 1.5, color: Colors.black),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SelectQuestion()),
                );
              },
              child: Text(
                'Играть',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(height: 1 / 20 * height),
            ElevatedButton(
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(
                    Size(8 / 9 * width, 1 / 12 * height)),
                backgroundColor:
                    MaterialStateProperty.all(Color.fromRGBO(57, 135, 200, 1)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(width: 1.5, color: Colors.black),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => stat()),
                );
              },
              child: Text(
                'Статистика',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(height: 1 / 20 * height),
            ElevatedButton(
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(
                    Size(8 / 9 * width, 1 / 12 * height)),
                backgroundColor:
                    MaterialStateProperty.all(Color.fromRGBO(57, 135, 200, 1)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(width: 1.5, color: Colors.black),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StateTimerPage()),
                );
              },
              child: Text(
                'Таймер',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(height: 1 / 20 * height),
            ElevatedButton(
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(
                    Size(8 / 9 * width, 1 / 12 * height)),
                backgroundColor:
                    MaterialStateProperty.all(Color.fromRGBO(57, 135, 200, 1)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(width: 1.5, color: Colors.black),
                  ),
                ),
              ),
              onPressed: () {
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    backgroundColor: Color(0xff4397de),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(width: 1.5, color: Colors.black)),
                    content: SizedBox(
                      width: 3 / 4 * width,
                      height: 1 / 7 * height,
                      child: Column(
                        children: [
                          StatefulBuilder(builder:
                              (BuildContext context, StateSetter setState) {
                            return CheckboxListTile(
                              checkColor: Colors.white,
                              activeColor: Colors.black,
                              side: BorderSide(width: 1.5, color: Colors.black),
                              title: Text(
                                'Звук',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 27,
                                ),
                              ),
                              value: sound,
                              onChanged: (newBool) {
                                setState(() {
                                  sound = newBool;
                                });
                              },
                            );
                          }),
                          StatefulBuilder(builder:
                              (BuildContext context, StateSetter setState) {
                            return CheckboxListTile(
                              checkColor: Colors.white,
                              activeColor: Colors.black,
                              side: BorderSide(width: 1.5, color: Colors.black),
                              title: Text(
                                'Вибрация',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 27,
                                ),
                              ),
                              value: vib,
                              onChanged: (newBool) {
                                setState(() {
                                  vib = newBool;
                                });
                              },
                            );
                          }),
                        ],
                      ),
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Назад'),
                        child: Text(
                          'Назад',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: width / height * 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              child: Text(
                'Настройки',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
