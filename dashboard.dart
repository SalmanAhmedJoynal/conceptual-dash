import 'package:flutter/material.dart';
import 'package:pr/cardwidget.dart';
import 'package:pr/components/appbar.dart';
import 'package:pr/config/colors.dart';
import 'package:pr/config/size.dart';
import 'package:pr/expenseswidget.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);

    return Scaffold(
      body: Container(
        color: AppColors.primaryWhite,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: height / 8,
                child: const CustomAppBar(),
              ),
              const Expanded(
                child: CardWidget(),
              ),
              const Expanded(child: ExpensesWidget())
            ],
          ),
        ),
      ),
    );
  }
}
