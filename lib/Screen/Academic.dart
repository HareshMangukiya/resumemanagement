import 'package:flutter/material.dart';
import 'package:resumemanagement/Screen/CreateResume.dart';
import 'package:resumemanagement/Screen/ExprienceScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Academic extends StatefulWidget {
  const Academic({Key? key}) : super(key: key);

  @override
  State<Academic> createState() => _AcademicState();
}

class _AcademicState extends State<Academic> {
  TextEditingController name10 = TextEditingController();
  TextEditingController  perctage10 = TextEditingController();
  TextEditingController passout10 = TextEditingController();
  TextEditingController name12 = TextEditingController();
  TextEditingController perctage12 = TextEditingController();
  TextEditingController  passout12= TextEditingController();
  TextEditingController nameuni = TextEditingController();
  TextEditingController perctageclg = TextEditingController();
  TextEditingController  passoutclg= TextEditingController();
  TextEditingController  clg= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Academic"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Education-Std=10"),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: name10,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'School Name',
                  labelText: 'School Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: perctage10,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: '%',
                  labelText: '%',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: passout10,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Passout',
                  labelText: 'Passout',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Text("Education-Std=12"),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: name12,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'School Name',
                  labelText: 'School Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: perctage12,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: '%',
                  labelText: '%',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: passout12,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Passout',
                  labelText: 'Passout',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Text("Education-Collage"),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: nameuni,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'University Name',
                  labelText: 'University Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller:clg ,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Collage Name',
                  labelText: 'Collage Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: perctageclg,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: '%',
                  labelText: '%',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: passoutclg,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Passout',
                  labelText: 'Passout',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            ElevatedButton(
                onPressed:()async{
                  var nm10 = name10.text.toString();
                  var pr10 =perctage10 .text.toString();
                  var sc10 = passout10.text.toString();
                  var nm12= name12.text.toString();
                  var pr12= perctage12.text.toString();
                  var sc12= passout12.text.toString();
                  var clgnameuni= nameuni.text.toString();
                  var clgname= clg.text.toString();
                  var prcclg = perctageclg.text.toString();
                  var passclg = passoutclg.text.toString();


                  SharedPreferences prefs = await SharedPreferences.getInstance();
                  prefs.setString('name10', nm10);
                  prefs.setString('perctage10', pr10);
                  prefs.setString('passout10', sc10);
                  prefs.setString('name12', nm12);
                  prefs.setString('perctage12', pr12);
                  prefs.setString('passout12', sc12);
                  prefs.setString('nameuni', clgnameuni);
                  prefs.setString('clg', clgname);
                  prefs.setString('perctageclg', prcclg);
                  prefs.setString('passoutclg', passclg);



                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=>ExprienceScreen())
                  );
                },
                child: Text("Next")),
          ],
        ),
      ),
    );
  }
}
