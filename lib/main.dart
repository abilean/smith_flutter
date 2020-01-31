import 'package:flutter/material.dart';
import 'package:smith/pages/products.dart';
import 'package:google_fonts/google_fonts.dart';
import './navbar/navbar.dart';
import './pages/about.dart';
import './pages/contact.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          title: GoogleFonts.sacramento(
            fontSize: 24.0,
          ),
          body1: GoogleFonts.alice(),
          button: GoogleFonts.alice(),
        ),
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget _curPage = About();

  void changePage(Pages newPage) {
    setState(() {
      switch (newPage) {
        case Pages.Home:
          _curPage = About();
          break;
        case Pages.Products:
          _curPage = Products();
          break;
        case Pages.Contact:
          _curPage = Contact();
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(84, 79, 74, .3),
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Navbar(
              changePage: changePage,
            ),
            Expanded(
              child: DefaultTextStyle(
                style: Theme.of(context).textTheme.body1,
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 500),
                  child: _curPage,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Contact(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
