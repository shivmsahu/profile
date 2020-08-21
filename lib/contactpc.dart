import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreenPC extends StatelessWidget {
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
          body: Center(
            child: Column(
              children: [
                Container(
                  height: 60,
                  margin: EdgeInsets.fromLTRB(30, 30, 30, 10),
                  child: InkWell(
                    child: Text(
                      'LinkedIn: https://www.linkedin.com/in/shivam-sahu-7baa78168/',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    onTap: _linkedin,
                  ),
                ),
                Container(
                  height: 60,
                  margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: InkWell(
                    child: Text(
                      'Mail: shivam.sahu@unthinkable.co',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    onTap: _mail,
                  ),
                ),
                Container(
                  height: 60,
                  margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: Text(
                    'Call: +91 7015044673',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
