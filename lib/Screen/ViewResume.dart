import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ViewResume extends StatefulWidget {
  const ViewResume({Key? key}) : super(key: key);

  @override
  State<ViewResume> createState() => _ViewResumeState();
}

class _ViewResumeState extends State<ViewResume> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ViewResume"),
      ),
      body: StreamBuilder(
          stream:
              FirebaseFirestore.instance.collection("Resumedata").snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasData) {
              if (snapshot.data!.size <= 0) {
                return Center(
                  child: Text("No Data"),
                );
              } else {
                return ListView(
                  children: snapshot.data!.docs.map((documemt) {
                    return Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Name:-",
                                  style: TextStyle(
                                      fontSize: 25.0, color: Colors.black)),
                              Text(
                                documemt["name"],
                                style: TextStyle(
                                    fontSize: 25.0, color: Colors.black),
                              ),

                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Email:-",
                                  style: TextStyle(
                                      fontSize: 25.0, color: Colors.black)),
                              Text(
                                documemt["email"],
                                style: TextStyle(
                                    fontSize: 20.0, color: Colors.black),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Mobile:-",
                                  style: TextStyle(
                                      fontSize: 25.0, color: Colors.black)),
                              Text(
                                documemt["phone"],
                                style: TextStyle(
                                    fontSize: 20.0, color: Colors.black),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Address:- ${documemt["address"]}",maxLines: 3,
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black,overflow: TextOverflow.ellipsis
                                  )),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                  "School School ste-10:- ${documemt["name10"]}",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black,
                                  )),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                  "Perctage std-10:- ${documemt["perctage10"]}",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.black,
                                      overflow: TextOverflow.ellipsis)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                  "Passout std-10:- ${documemt["passout10"]}",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.black,
                                      overflow: TextOverflow.ellipsis)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                  "school std-12:- ${documemt["name12"]}",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.black,
                                      overflow: TextOverflow.ellipsis)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                  "passout std-12:- ${documemt["passout12"]}",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.black,
                                      overflow: TextOverflow.ellipsis)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                  "perctage%:- ${documemt["perctage12"]}",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.black,
                                      overflow: TextOverflow.ellipsis)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                  "Univercity:- ${documemt["nameuni"]}",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.black,
                                      overflow: TextOverflow.ellipsis)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                  "CollageName:- ${documemt["clg"]}",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.black,
                                      overflow: TextOverflow.ellipsis)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                  "perctage:- ${documemt["perctageclg"]}",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.black,
                                      overflow: TextOverflow.ellipsis)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                  "perctage:- ${documemt["perctageclg"]}",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.black,
                                      overflow: TextOverflow.ellipsis)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                  "Technology:- ${documemt["technology"]}",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.black,
                                      overflow: TextOverflow.ellipsis)),
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                  "Experience:- ",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.black,
                                      overflow: TextOverflow.ellipsis)),
                              Column(
                                children: [
                                  Text(
                                    documemt["experience"],
                                    style: TextStyle(
                                        fontSize: 20.0, color: Colors.black),
                                  ),


                                ],
                              ),

                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                  "Language:- ${documemt["language"]}",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.black,
                                      overflow: TextOverflow.ellipsis)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                  "Skill:- ${documemt["skils"]}",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.black,
                                      overflow: TextOverflow.ellipsis)),
                            ],
                          ),


                        ],
                      ),
                    );
                  }).toList(),
                );
              }
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
