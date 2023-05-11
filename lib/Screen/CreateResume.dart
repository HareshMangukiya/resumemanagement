import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:resumemanagement/Screen/Academic.dart';
import 'package:resumemanagement/Screen/ExprienceScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CreateResume extends StatefulWidget {
  const CreateResume({Key? key}) : super(key: key);

  @override
  State<CreateResume> createState() => _CreateResumeState();
}

class _CreateResumeState extends State<CreateResume> {
  TextEditingController personal = TextEditingController();
  TextEditingController aconding = TextEditingController();
  TextEditingController experience = TextEditingController();
  TextEditingController skils = TextEditingController();
  TextEditingController language = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: personal,
                  decoration: InputDecoration(
                    hintText: 'Personalin formation',
                    labelText: 'Personalin formation',
                    prefixIcon: GestureDetector(
                      onTap: (){},
                        child: Icon(Icons.edit)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: aconding,
                  decoration: InputDecoration(
                    hintText: 'Aconding',
                    labelText: 'Aconding',
                    prefixIcon: GestureDetector(
                        onTap: (){},
                        child: Icon(Icons.edit)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: experience,
                  decoration: InputDecoration(
                    hintText: 'Experience',
                    labelText: 'Experience',
                    prefixIcon: GestureDetector(
                        onTap: (){},
                        child: Icon(Icons.edit)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: skils,
                  decoration: InputDecoration(
                    hintText: 'Skills',
                    labelText: 'Skills',
                    prefixIcon: GestureDetector(
                        onTap: (){},
                        child: Icon(Icons.edit)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: language,
                  decoration: InputDecoration(
                    hintText: 'Language',
                    labelText: 'Language',
                    prefixIcon: GestureDetector(
                        onTap: (){},
                        child: Icon(Icons.edit)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              ElevatedButton(onPressed: ()async{
                var pr = personal.text.toString();
                var ac = aconding.text.toString();
                var exp = experience.text.toString();
                var sk= skils.text.toString();
                var lang= language.text.toString();

                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.setString('personal', pr);
                prefs.setString('aconding', ac);
                prefs.setString('experience', exp);
                prefs.setString('skils', sk);
                prefs.setString('language', lang);




                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>Academic())
                );


              }, child:Text("Sumbit")),

            ],
          ),
        ),
      ),
    );
  }
}
