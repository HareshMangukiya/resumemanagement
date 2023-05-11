import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:resumemanagement/Screen/Academic.dart';
import 'package:resumemanagement/Screen/HomeScreen.dart';
import 'package:resumemanagement/Screen/ViewResume.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ExprienceScreen extends StatefulWidget {
  const ExprienceScreen({Key? key}) : super(key: key);

  @override
  State<ExprienceScreen> createState() => _ExprienceScreenState();
}

class _ExprienceScreenState extends State<ExprienceScreen> {
  TextEditingController company = TextEditingController();
  TextEditingController technology = TextEditingController();
  TextEditingController joindate = TextEditingController();
  TextEditingController enddate = TextEditingController();
  TextEditingController detalis = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ExprienceScreen"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Text(
              "Exprience",
              style: TextStyle(fontSize: 30.0, color: Colors.blue),
            )),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: company,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Company Name',
                  labelText: 'Company Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: technology,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Technology',
                  labelText: 'Technology ',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: joindate,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'join Date',
                  labelText: 'join Date ',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: enddate,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'End Date',
                  labelText: 'End Date ',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: detalis,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Detalis',
                  labelText: 'Detalis ',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  var cn = company.text.toString();
                  var teg = technology.text.toString();
                  var join = joindate.text.toString();
                  var end = enddate.text.toString();
                  var det = detalis.text.toString();
                  SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  var pnm = prefs.getString('name').toString();
                  var add = prefs.getString('address').toString();
                  var mobilenumber = prefs.getString('phone').toString();
                  var linkdi = prefs.getString('linkdine').toString();
                  var emailaddress = prefs.getString('email').toString();
                  var birth = prefs.getString('datebirth').toString();
                  var personamex = prefs.getString('personal').toString();
                  var acondingx = prefs.getString('aconding').toString();
                  var expricelatte = prefs.getString('experience').toString();
                  var skil = prefs.getString('skils').toString();
                  var lang = prefs.getString('language').toString();
                  var scl10 = prefs.getString('name10').toString();
                  var per10 = prefs.getString('perctage10').toString();
                  var pass10 = prefs.getString('passout10').toString();
                  var scl12 = prefs.getString('name12').toString();
                  var per12 = prefs.getString('perctage12').toString();
                  var pass12 = prefs.getString('passout12').toString();
                  var nmuni = prefs.getString('nameuni').toString();
                  var clgnm = prefs.getString('clg').toString();
                  var perclg = prefs.getString('perctageclg').toString();
                  var passclg = prefs.getString('passoutclg').toString();



                  await FirebaseFirestore.instance
                      .collection("Resumedata")
                      .add({
                    "name": pnm,
                    "address": add,
                    "phone": mobilenumber,
                    "linkdine": linkdi,
                    "email": emailaddress,
                    "datebirth": birth,
                    "personal": personamex,
                    "aconding": acondingx,
                    "experience": expricelatte,
                    "skils": skil,
                    "language": lang,
                    "name10": scl10,
                    "perctage10": per10,
                    "passout10": pass10,
                    "name12": scl12,
                    "perctage12": per12,
                    "passout12": pass12,
                    "nameuni": nmuni,
                    "clg": clgnm,
                    "perctageclg": perclg,
                    "passoutclg": passclg,
                    "company": cn,
                    "technology": teg,
                    "joindate": join,
                    "enddate": end,
                    "detalis": det,
                  }).then(
                    (value) async {
                      prefs.clear();
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ViewResume()));
                    },
                  );
                },
                child: Text("Sumbit")),
          ],
        ),
      ),
    );
  }
}
