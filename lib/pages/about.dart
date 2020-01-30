import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                "Smith Printing, Inc. was founded in 1975 by Jerry Smith. Jerry knew that the business was only as good as its employees, so he committed to hiring qualified employees and maintaining the highest standards of service. As a result, we have gained a reputation for our attention to detail and excellent customer service."),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                "You can count on Smith Printing when first impressions count! As a full-service business printer, we offer a wide range of prepress, printing and finishing operations. We emphasize advanced technical capabilities along with  superior customer service, allowing us to consistently deliver high-quality results in a timely fashion."),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                "Smith Printing builds relationships with customers using over 42 years experience to offer suggestions and help customers choose the best options for their projects. By focusing on desired project results and asking the right questions, we take the fear out of the planning process, making it easy for even novice print buyers to find solutions that meet their deadline, price and quality expectations."),
          ),
        ],
      ),
    );
  }
}
