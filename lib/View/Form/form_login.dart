import 'package:apk_mata/globals.dart';
import 'package:flutter/material.dart';

class FormLogin extends StatelessWidget {
  const FormLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //
    Size size = MediaQuery.of(context).size;
    //
    final logo = Container(
      width: 150,
      height: 150,
      child: Image.asset('assets/images/logo.png'),
    );
    //
    final boxdecor = BoxDecoration(
      color: Colors.red,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(60),
      ),
    );
    //
    final formUsername = TextField(
      decoration: InputDecoration(
          hintText: "Email or Phone number",
          hintStyle: TextStyle(color: Colors.grey),
          border: InputBorder.none),
    );

    final nama = Card(
      color: Colors.white70,
      child: new Container(
        padding: EdgeInsets.all(10.0),
        child: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                new Expanded(
                    child: new Text(
                  "Bemerkung",
                )),
                new Expanded(
                  child: new TextField(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 50),
                  child: logo,
                ),
              ],
            ),
            Container(
              height: size.height * 0.8,
              width: size.width,
              decoration: boxdecor,
              child: Column(
                children: [nama],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
