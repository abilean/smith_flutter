import 'package:flutter/material.dart';
import 'package:smith/pages/products.dart';
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
  Pages _curPage = Pages.Home;

  void changePage(Pages newPage) {
    setState(() {
      _curPage = newPage;
    });
  }

  Widget getCurPage() {
    switch (_curPage) {
      case Pages.Home:
        return About();
        break;
      case Pages.Products:
        return Products();
        break;
      case Pages.Contact:
        return Contact();
        break;
    }
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
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Navbar(
              changePage: changePage,
            ),
            Expanded(
              child: getCurPage(),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Contact(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
