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
  ];

  final _promotional = [
    "Office Accessories",
    "Golf Accessories",
    "Auto Accessories",
    "Writing Instruments",
    "Drinkware",
    "Bags",
    "Awards and More!",
  ];

  final _bindery = [
    "Fold",
    "Number",
    "Perforate",
    "Die Cut",
    "Glue",
    "Saddle Stitch",
    "Spiral",
    "Fastback & GBC"
  ];

  final _mailing = ["Inserting", "Tabbing", "Inkjet Imaging"];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Products and Services",
                style: Theme.of(context).textTheme.title,
              ),
            ),
            Text(
              "Quick Turnaround • Friendly Customer Service!",
              style: Theme.of(context).textTheme.title,
            ),
            for (var item in _productList) Text(item),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Promotional Items:",
                style: Theme.of(context).textTheme.title,
              ),
            ),
            for (var item in _promotional) Text(item),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Complete Bindery:",
                style: Theme.of(context).textTheme.title,
              ),
            ),
            for (var item in _bindery) Text(item),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Mailing Services:",
                style: Theme.of(context).textTheme.title,
              ),
            ),
            for (var item in _mailing) Text(item),
          ],
        ),
      ),
    );
  }
}
