import 'package:flutter/material.dart';
import 'package:resumemanagement/Screen/Personlinformation.dart';
import 'package:resumemanagement/Screen/ViewResume.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomeScreen"),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtRX7ck15aWkND-6Z2fXDHn5wlTUDTS5pidw&usqp=CAU"),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Personlinformation()));
                  },
                  child: Container(
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Colors.blue,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.network(
                          "https://apprecs.org/gp/images/app-icons/300/9c/com.superapp.resume.jpg",
                          fit: BoxFit.cover,height: 50,
                        ),
                        Text("Create Resume"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ViewResume()));
                  },
                  child: Container(
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Colors.blue,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.network(
                          "https://play-lh.googleusercontent.com/6d0URXxFDuw9jcfD31ulFdUgsKiocnogHDwxuX2ttkGPHx3ZkSvvmZnN2xhpslLyc-g",
                          fit: BoxFit.cover,
                          height: 50.0,
                        ),
                        Text("ViewResume"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
