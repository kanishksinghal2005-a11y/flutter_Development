import "package:flutter/material.dart";
// import "package:fluppy/screens/align_widget.dart";
// import "package:fluppy/screens/container_widget.dart";
// import "package:fluppy/screens/row_column_widgets.dart";
// import "package:fluppy/screens/safearea_widget.dart";
// import "package:fluppy/screens/spacer.dart";
// import "package:fluppy/screens/stack_widget.dart";
// import "package:fluppy/screens/stateful_widget.dart";
// import "package:fluppy/screens/stateless_widget.dart";
import "package:fluppy/screens/wrap_widget.dart";

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
      home:WrapWidget()
    );
  }
}