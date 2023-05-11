import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resumemanagement/Screen/Academic.dart';
import 'package:resumemanagement/Screen/CreateResume.dart';
import 'package:resumemanagement/Screen/ExprienceScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Personlinformation extends StatefulWidget {
  const Personlinformation({Key? key}) : super(key: key);

  @override
  State<Personlinformation> createState() => _PersonlinformationState();
}

class _PersonlinformationState extends State<Personlinformation> {
  TextEditingController name = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController linkdine = TextEditingController();
  TextEditingController birth = TextEditingController();
  ImagePicker picker = ImagePicker();

  File? selectedimage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personlinformation"),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: (selectedimage == null)
                      ? NetworkImage(
                    "https://cdn.pixabay.com/photo/2023/05/03/18/05/great-crested-grebe-7968287_960_720.jpg",
                  )
                      : FileImage(
                    selectedimage!,
                  )as ImageProvider,
                  radius: 70,
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: GestureDetector(
                    onTap: () async {
                      XFile? photo =
                          await picker.pickImage(source: ImageSource.gallery);
                      setState(() {
                        selectedimage = File(photo!.path);
                      });
                    },
                    child: Icon(
                      Icons.add_a_photo,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              controller: name,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Name',
                labelText: 'Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              controller: address,
              keyboardType: TextInputType.streetAddress,
              decoration: InputDecoration(
                hintText: 'Address',
                labelText: 'Address',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              controller: phone,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: 'MobileNumber',
                labelText: 'MobileNumber',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              controller: email,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Email',
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              controller: linkdine,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'LinkedIn',
                labelText: 'LinkedIn',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              controller: birth,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Date of Birth',
                labelText: 'Date of Birth',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () async {
                var nm = name.text.toString();
                var ad = address.text.toString();
                var mobile = phone.text.toString();
                var mail = email.text.toString();
                var link = linkdine.text.toString();
                var datebirth = birth.text.toString();
                var profile = selectedimage?.path.toString();

                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.setString('name', nm);
                prefs.setString('address', ad);
                prefs.setString('phone', mobile);
                prefs.setString('linkdine', link);
                prefs.setString('email', mail);
                prefs.setString('birth', datebirth);
                prefs.setString('seletedimage', profile ?? "");

                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CreateResume()));
              },
              child: Text("Next")),
        ]),
      ),
    );
  }
}
