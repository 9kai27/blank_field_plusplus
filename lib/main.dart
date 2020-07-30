import 'package:flutter/material.dart';
//For make icon package.
import 'package:flutter_launcher_icons/android.dart';
import 'package:flutter_launcher_icons/constants.dart';
import 'package:flutter_launcher_icons/custom_exceptions.dart';
import 'package:flutter_launcher_icons/ios.dart';
import 'package:flutter_launcher_icons/main.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';
//For use url_launcher Package.
import 'package:url_launcher/url_launcher.dart';
//For use NoSQL Database package.
import 'package:shared_preferences/shared_preferences.dart';


//constitution
//main->Myapp->AppMain->_AppMainState
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'blank_field++',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AppMain(title: 'blank_field++'),
    );
  }
}

class AppMain extends StatefulWidget {
  AppMain({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AppMainState createState() => _AppMainState();
}

class _AppMainState extends State<AppMain> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Visibility(
        visible: isLoaded,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text(''),
              Text('blank_field++'),
              Text(''),
              TextField(
                controller: list1,
                onChanged: (text) {
                save('list1', text);
              },
                minLines: 1,
                maxLines: 1,
                maxLength: 50,
                maxLengthEnforced: true,
                decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(),
                hintText: '',
                )
              ),
              TextField(
                controller: list2,
                onChanged: (text) {
                  save('list2', text);
                },
                minLines: 1,
                maxLines: 1,
                maxLength: 50,
                maxLengthEnforced: true,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(),
                  hintText: '',
                )
              ),
              TextField(
                controller: list3,
                onChanged: (text) {
                  save('list3', text);
                },
                minLines: 1,
                maxLines: 1,
                maxLength: 50,
                maxLengthEnforced: true,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(),
                  hintText: '',
                )
              ),
              TextField(
                controller: list4,
                onChanged: (text) {
                  save('list4', text);
                },
                minLines: 1,
                maxLines: 1,
                maxLength: 50,
                maxLengthEnforced: true,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(),
                  hintText: '',
                )
              ),
              TextField(
                controller: list5,
                onChanged: (text) {
                  save('list5', text);
                },
                minLines: 1,
                maxLines: 1,
                maxLength: 50,
                maxLengthEnforced: true,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(),
                  hintText: '',
              )
            ),
              TextField(
                controller: list6,
                onChanged: (text) {
                  save('list6', text);
                },
                minLines: 1,
                maxLines: 1,
                maxLength: 50,
                maxLengthEnforced: true,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(),
                    hintText: '',
                  )
              ),
              TextField(
                controller: list7,
                onChanged: (text) {
                  save('list7', text);
                },
                minLines: 1,
                maxLines: 1,
                maxLength: 50,
                maxLengthEnforced: true,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(),
                  hintText: '',
                )
              ),
              TextField(
                controller: list8,
                onChanged: (text) {
                  save('list8', text);
                },
                minLines: 1,
                maxLines: 1,
                maxLength: 50,
                maxLengthEnforced: true,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(),
                  hintText: '',
                )
            ),
              TextField(
                controller: list9,
                onChanged: (text) {
                  save('list9', text);
                },
                minLines: 1,
                maxLines: 1,
                maxLength: 50,
                maxLengthEnforced: true,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(),
                  hintText: '',
                )
              ),
              TextField(
                controller: list10,
                onChanged: (text) {
                  save('list10', text);
                },
                minLines: 1,
                maxLines: 1,
                maxLength: 50,
                maxLengthEnforced: true,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(),
                  hintText: '',
                )
              ),
              Text(''),
              Text(''),
              //Link
              RaisedButton(
                onPressed: _launchURL,
                child: Text('ABOUT'),
              )
              ]
          )
        )
      )
    );
  }

  //These code is not need after widget.
  //No problem even before the widget.
  //However, do not write it outside of _AppMainState~{}.
  //link configuration https://pub.dev/packages/link
  _launchURL() async {
    const url = 'https://9vox2.netlify.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
    throw 'Could not launch $url';
    }
  }

  //For controll
  final list1 = TextEditingController();
  final list2 = TextEditingController();
  final list3 = TextEditingController();
  final list4 = TextEditingController();
  final list5 = TextEditingController();
  final list6 = TextEditingController();
  final list7 = TextEditingController();
  final list8 = TextEditingController();
  final list9 = TextEditingController();
  final list10 = TextEditingController();
  var isLoaded = false;

  //Preparation for load
  @override
  void initState() {
    super.initState();
    load();
  }

  //For load
  Future<void> load() async {
    final prefs1 = await SharedPreferences.getInstance();
    list1.text = prefs1.getString('list1');
    list2.text = prefs1.getString('list2');
    list3.text = prefs1.getString('list3');
    list4.text = prefs1.getString('list4');
    list5.text = prefs1.getString('list5');
    list6.text = prefs1.getString('list6');
    list7.text = prefs1.getString('list7');
    list8.text = prefs1.getString('list8');
    list9.text = prefs1.getString('list9');
    list10.text = prefs1.getString('list10');
    setState(() {
      isLoaded = true;
    });
  }

  //For save
  Future<void> save(key, text) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, text);
    setState(() {
      isLoaded = true;
    });
  }

  }