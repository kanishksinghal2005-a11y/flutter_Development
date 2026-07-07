import "package:flutter/material.dart";
// import "package:fluppy/screens/Buttons/stateful_buttons.dart";
// import "package:fluppy/screens/Buttons/stateless_buttons.dart";
// import "package:fluppy/screens/Navigation/home_screen.dart";
import "package:fluppy/screens/Navigation/push_navigation.dart";
import "package:fluppy/screens/Navigation/screen1.dart";
import "package:fluppy/screens/Navigation/screen2.dart";
import "package:fluppy/screens/Navigation/screen3.dart";
// import "package:fluppy/screens/align_widget.dart";
// import "package:fluppy/screens/asset_image.dart";
// import "package:fluppy/screens/card_widget.dart";
// import "package:fluppy/screens/container_widget.dart";
// import "package:fluppy/screens/expanded_widget.dart";
// import "package:fluppy/screens/flexible_widget.dart";
// import "package:fluppy/screens/inkwell_widget.dart";
// import "package:fluppy/screens/listtileview.dart";
// import "package:fluppy/screens/listview_widget.dart";
// import "package:fluppy/screens/row_column_widgets.dart";
// import "package:fluppy/screens/safearea_widget.dart";
// import "package:fluppy/screens/spacer.dart";
// import "package:fluppy/screens/stack_widget.dart";
// import "package:fluppy/screens/statefull_widget.dart";
// import "package:fluppy/screens/stateless_widget.dart";
// import "package:fluppy/screens/wrap_widget.dart";

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home:ContainerWidget()
      // home:SafeAreaWidget()
      // home:RowColumnWidgets()
      // home:StackWidget()
      // home:SpacerWidget()
      // home:AlignWidget()
      // home:WrapWidget()
      // home:ExpandedWidget()
      // home:FlexibleWidget()
      // home:ListViewWidget()
      // home:ListTileWidget()
      // home:CardWidget()
      // home:InkWellWidget()
      // home:ImageWidget()
      // home:StatelessButtonsWidget()
      // home:StatefulButtons()
      // home:HomeScreen(),
      home:PushNvaigation1(),
      routes: {
        'S1':(context) => Screen1(),
        'S2':(context) => Screen2(),
        'S3':(context) => Screen3(),
      },
    );
  }
}