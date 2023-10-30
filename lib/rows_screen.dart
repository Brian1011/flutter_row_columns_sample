import 'package:flutter/material.dart';
import 'package:rows_columns_spacer/widgets/rows/rows_expanded_flex_widget.dart';
import 'package:rows_columns_spacer/widgets/rows/rows_spacer_flex_widget.dart';

import 'widgets/rows/row_column_long_text_widget.dart';
import 'widgets/rows/rows_main_axis_alignment.dart';

class RowsScreen extends StatefulWidget {
  const RowsScreen({super.key});

  @override
  State<RowsScreen> createState() => _RowsScreenState();
}

class _RowsScreenState extends State<RowsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rows'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: const [
            Text(
              "Rows with main axis alignment",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            // align children on row axis (horizontal)
            RowsMainAxisAlignment(),
            Divider(),
            Text(
              "Rows with expanded and flex children",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),

            // arrange children with flex and expanded
            RowsExpandedFlexWidget(),
            Divider(),
            Text("Rows with spacer and flex children",
                style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
            RowsSpacerFlexWidget(),
            Divider(),
            Text("Handle long / overflow text in rows",
                style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
            RowColumnLongTextWidget(),
          ],
        ),
      ),
    );
  }
}
