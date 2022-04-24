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
      width: 100,
      height: 100,
      child: Image.asset('assets/images/logo_semata.png'),
    );
    //
    final boxdecor = BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(60),
      ),
    );
    //
    final formUsername = Container(
        child: TextFormField(
      decoration: InputDecoration(
          hintText: "Masukkan Username",
          // contentPadding: EdgeInsets.symmetric(vertical: 1),
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
          border: InputBorder.none),
    ));
    final formPassword = Container(
        child: TextFormField(
      decoration: InputDecoration(
          hintText: "Masukkan Password",
          // contentPadding: EdgeInsets.symmetric(vertical: 1),
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
          border: InputBorder.none),
    ));

    final cardUsername = Card(
      child: Column(children: [
        ListTile(
          title: Text(
            "Username",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          subtitle: formUsername,
        ),
      ]),
    );
    final cardPassword = Card(
      child: Column(children: [
        ListTile(
          title: Text(
            "Password",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          subtitle: formPassword,
        ),
      ]),
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
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: logo,
                ),
              ],
            ),
            Container(
              height: size.height * 0.8,
              width: size.width,
              decoration: boxdecor,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    cardUsername,
                    SizedBox(
                      height: 10,
                    ),
                    cardPassword,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: null,
                            child: Text(
                              'Lupa Password ?',
                              style: TextStyle(color: Colors.black),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Login"),
                      style: ElevatedButton.styleFrom(
                          primary: clrButton,
                          // padding:
                          //     EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                          fixedSize: Size(281, 50)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Belum punya akun ?'),
                        TextButton(
                          onPressed: null,
                          child: Text(
                            'Daftar',
                            style: TextStyle(color: background),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
