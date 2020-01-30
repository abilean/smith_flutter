import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final _productList = [
    "Single to Full-Color Printing",
    "Graphic Design",
    "Business Cards",
    "Letterhead",
    "Envelopes",
    "Business Forms",
    "Carbonless Forms",
    "Business Checks",
    "High-Volume Copies",
    "Flyers & Sell Sheets",
    "Brochures",
    "Folders",
    "Postcards & Mailers",
    "Newsletters",
    "Notepads",
    "Sticky Notes",
    "Stickers & Labels",
    "Magnets & Decals",
    "Rubber Stamps",
    "Menus",
    "Banners",
    "Posters",
    "Notecards",
    "Invitations & Announcements",
    "Booklets",
    "Manuals",
    "Programs",
    "T-shirts & Apparel",
    "Promotional Items: Office Accessories, Golf Accessories, Auto Accessories, Writing Instruments, Drinkware, Bags, Awards and More!"
        "Complete Bindery: Fold, Number, Perforate, Die Cut, Glue, Saddle Stitch, Spiral, Fastback & GBC",
    "Mailing Services: Inserting, Tabbing, Inkjet Imaging",
  ];

  // Widget productList() {
  //   return ListView.builder(
  //     itemBuilder: (context, item) {
  //       return Text(_productList[item]);
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
              "Today’s market is competitive, and it’s important your business stands out. Let the professionals handle your next job; call us today!  803-783-5730"),
          Text("Products and Services"),
          Text("Quick Turnaround • Friendly Customer Service!"),
          for (var item in _productList) Text(item),
        ],
      ),
    );
  }
}
