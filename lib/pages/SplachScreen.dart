import 'package:flutter/material.dart';
import 'package:number_note/pages/HomePage.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({super.key});

  @override
  State<SplachScreen> createState() => _HomePageState();
}

class _HomePageState extends State<SplachScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset(
                    "assets/images/notebook.png",
                    width: 200,
                    height: 300,
                  ),
                ),
              ],
            ),
            Text(
              "Save Time for Smater Work",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => HomePage()));
              },
              child: Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 214, 211, 216),
                    borderRadius: BorderRadius.circular(20)),
                child: Image.asset(
                  "assets/images/gobtn.png",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
