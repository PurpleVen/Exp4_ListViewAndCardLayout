import 'package:flutter/material.dart';
import 'package:lab1march/subjectFaculty.dart';

void main() {
  runApp(const MaterialApp(
    home: MyList(),
  ));
}

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  //final List subject = ["MAD-PWA", "Web-X.0", "DMBI", "AI-DS", "EHF", "WT"];

  List<SubjectFaculty> subjects = [
    SubjectFaculty(
        "Mobile Application Development-PWA", "Prof. Nilesh Ghavate", "M-T-W"),
    SubjectFaculty("Web-X.0", "Prof. Vaishali", "M-T-F"),
    SubjectFaculty(
        "Data Mining & Business Intelligence", "Prof. Aruna Kubalkar", "T-F-F"),
    SubjectFaculty("Artificial Intelligence & Data Science",
        "Prof. Prasad Padalkar & Prof. Sunantha Krishnan", "M-T-F"),
    SubjectFaculty(
        "Ethical Hacking & Forensics", "Prof. Janhavi Baikerakar", "M-T-F"),
    SubjectFaculty("Wireless Technology", "Prof. Tayyabali Sayyed", "M-T-F"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TE IT Subject List"),
        backgroundColor: Colors.deepPurple,
        //foregroundColor: Colors.black, //colour of the text in the navbar
        centerTitle: true,
      ),
      body: Column(
        children: subjects.map((sub) {
          return SubjectTemplate(sub);
          //return Text("${sub.subject}==>${sub.faculty}");
        }).toList(),
      ),
    );
  }
}

Widget SubjectTemplate(sub) {
  return Card(
    margin: EdgeInsets.all(10.0),
    color: Colors.deepPurple[100],
    child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              sub.subject,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              children: [
                Text(
                  sub.faculty,
                  style: TextStyle(fontSize: 15.0, color: Colors.indigo),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  sub.subSchedule,
                  style:
                      TextStyle(fontSize: 15.0, color: Colors.deepOrangeAccent),
                ),
              ],
            )
          ],
        )),
  );
}
