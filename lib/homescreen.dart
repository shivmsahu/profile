import 'package:flutter/material.dart';
import 'contact.dart';

class HomeScreen extends StatelessWidget {
  List<String> education = [
    'Bachelor of Computer Applications:\nSeth Jai Parkash Mukand Lal Institute of Engineering & Technology\n2020',
    '12th:\n New Happy Sr. Sec. School\n2017',
    '10th:\n New Happy Sr. Sec. School\n2015'
  ];
  Widget showEdu(edu) {
    return Container(
        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: ShowCard(element: edu));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'My Portfolio App',
          ),
        ),
        body: ListView(children: [
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: Text(
              'Hi there!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 0,
                fontFamily: 'indieflower',
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
              ),
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Center(
            child: CircleAvatar(
              radius: 160.0,
              backgroundColor: Colors.grey[700],
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/profile-min.jpg'),
                radius: 130.0,
              ),
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(children: [
                      TextSpan(
                          text: 'I\'m\n',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          )),
                      TextSpan(
                        text: 'Shivam\nSahu',
                        style: TextStyle(
                          color: Colors.green[300],
                          letterSpacing: 0,
                          //fontFamily: 'indieflower',
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0,
                        ),
                      )
                    ]),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: RichText(
                    textAlign: TextAlign.right,
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'I am a Trainee Flutter Developer working at\n',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: 'Unthinkable Solutions LLP',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 5),
            child: Text(
              'Technical Skills:',
              style: TextStyle(
                  color: Colors.green[300],
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 25, right: 20),
            child: Text(
              'C\nC++\nPython\nDart\nBootstrap\nFlutter',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
            child: Text(
              'Education:',
              style: TextStyle(
                  color: Colors.green[300],
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            children: education.map((edu) => showEdu(edu)).toList(),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 5),
            child: Text(
              'Project:',
              style: TextStyle(
                  color: Colors.green[300],
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 25, right: 20),
            child: Text(
              'Blog Website using Django and Bootstrap :',
              style: TextStyle(
                  color: Colors.green[100],
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 25, right: 20),
            child: Text(
              'The main objective of this project was to create the post and display them in a list view and in detailed view. Django framework of Python language is used for backend, sqlite is used for database and Bootstrap framework is used for the front end of website.',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          // RaisedButton(
          //   onPressed: () {
          //     Navigator.of(context).push(
          //         MaterialPageRoute(builder: (context) => ContactScreen()));
          //   },
          //   child: Text('Contact Me'),
          // ),

          Container(
            height: 60,
            margin: EdgeInsets.fromLTRB(30, 30, 30, 10),
            child: Material(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(30),
              child: InkWell(
                child: Center(
                  child: Text(
                    'Contact Me',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ContactScreen()));
                },
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class ShowCard extends StatelessWidget {
  final String element;
  ShowCard({this.element});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              element,
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
