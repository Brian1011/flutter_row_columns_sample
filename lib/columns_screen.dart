import 'package:flutter/material.dart';
import 'package:rows_columns_spacer/widgets/columns/column_main_axis_alignment_widget.dart';

import 'widgets/columns/column_expanded_flex_widget.dart';
import 'widgets/columns/column_spacer_flex_widget.dart';

class ColumnsScreen extends StatefulWidget {
  const ColumnsScreen({super.key});

  @override
  State<ColumnsScreen> createState() => _ColumnsScreenState();
}

class _ColumnsScreenState extends State<ColumnsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Columns'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: const [
            Text(
              "Columns with main axis alignment",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            ColumnsMainAxisAlignment(),
            // align children on column axis (vertical)
            Divider(),
            Text(
              "Columns with expanded and flex children",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            ColumnExpandedFlexWidget(),
            // arrange children in column with expanded and flex
            Divider(),
            Text("Column with spacer and flex children",
                style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
            ColumnSpacerFlexWidget(),
            // RowColumnLongTextWidget(),
          ],
        ),
      ),
    );
  }
}
