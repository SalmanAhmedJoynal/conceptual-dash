import 'package:flutter/material.dart';
import 'package:pr/components/arrowbutton.dart';
import 'package:pr/config/colors.dart';
import 'package:pr/config/size.dart';
import 'package:pr/config/strings.dart';
import 'package:pr/piechart/piechart.dart';

class ExpensesWidget extends StatefulWidget {
  const ExpensesWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ExpensesWidgetState createState() => _ExpensesWidgetState();
}

class _ExpensesWidgetState extends State<ExpensesWidget> {
  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);
    double fontSize(double size) {
      return size * width / 414;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: height / 14,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(left: width / 20),
                  child: Text(
                    "Monthly Expenses",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: fontSize(20)),
                  )),
              Container(
                width: width / 3.5,
                margin: EdgeInsets.only(right: width / 30),
                child: Row(
                  children: <Widget>[
                    ArrowButton(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 6),
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: fontSize(17),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: width / 50)),
                    ArrowButton(
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        size: fontSize(17),
                      ),
                      margin: const EdgeInsets.all(0),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: category.map((data) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                  color: AppColors
                                      .pieColors[category.indexOf(data)],
                                  shape: BoxShape.circle),
                            ),
                            Text(
                              data['name'],
                              style: TextStyle(
                                fontSize: fontSize(16),
                              ),
                            )
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              const Expanded(
                flex: 6,
                child: Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: PieChart(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
