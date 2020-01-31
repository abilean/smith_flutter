import 'package:flutter/material.dart';

enum Pages { Home, Products, Contact }

class Navbar extends StatelessWidget {
  final Function(Pages) changePage;

  Navbar({@required this.changePage});

  Widget getLogo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Image.asset("assets/images/logo.png"),
    );
  }

  Widget getMenu(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.title,
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 1.0),
                child: Text(
                  "Serving South Carolina since 1975!",
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 8, 8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: FlatButton(
                    onPressed: () {
                      changePage(Pages.Home);
                    },
                    child: Text("Home"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: FlatButton(
                    onPressed: () {
                      changePage(Pages.Products);
                    },
                    child: Text("Products"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: FlatButton(
                    onPressed: () {
                      changePage(Pages.Contact);
                    },
                    child: Text("Contact Us"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              getLogo(),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: getMenu(context),
              ),
            ],
          );
        } else {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              getLogo(),
              getMenu(context),
            ],
          );
        }
      },
    ));
  }
}
