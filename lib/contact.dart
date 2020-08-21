import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  _linkedin() async {
    const url = 'https://www.linkedin.com/in/shivam-sahu-7baa78168/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _mail() async {
    const url = 'mailto:shivam.sahu@unthinkable.co';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not mail $url';
    }
  }

  _call() async {
    const url = 'tel:+917015044673';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Contact Me',
            ),
          ),
          body: Column(
            children: [
              Container(
                height: 60,
                margin: EdgeInsets.fromLTRB(30, 30, 30, 10),
                child: Material(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        'LinkedIn',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    onTap: _linkedin,
                  ),
                ),
              ),
              Container(
                height: 60,
                margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: Material(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(30),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        'Mail',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    onTap: _mail,
                  ),
                ),
              ),
              Container(
                height: 60,
                margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: Material(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        'Call',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    onTap: _call,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
