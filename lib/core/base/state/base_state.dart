import 'package:flutter/material.dart';
import '../../init/setup.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> {
  double get height => MediaQuery.of(context).size.height;
  double get width => MediaQuery.of(context).size.width;

  double get extendedAppBarSize => dynamicHeight(50);
  double dynamicHeight(double value) => height / ApplicationSetup.APP_HEIGHT * value;
  double dynamicWidth(double value) => width / ApplicationSetup.APP_WIDTH * value;
}

abstract class BaseStateless extends StatelessWidget {
  const BaseStateless({Key? key}) : super(key: key);

  double height(BuildContext context) => MediaQuery.of(context).size.height;
  double width(BuildContext context) => MediaQuery.of(context).size.width;

  double dynamicHeight(BuildContext context, double value) => height(context) / ApplicationSetup.APP_HEIGHT * value;
  double dynamicWidth(BuildContext context, double value) => width(context) / ApplicationSetup.APP_WIDTH * value;
}
