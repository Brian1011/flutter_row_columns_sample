import 'package:flutter/material.dart';
import 'package:rows_columns_spacer/widgets/columns/column_main_axis_alignment_widget.dart';

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
              "Rows with expanded and flex children",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            // arrange children with flex and expanded
            //RowsExpandedFlexWidget(),
            Divider(),
            Text("Rows with spacer and flex children",
                style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
            // RowsSpacerFlexWidget(),
            Divider(),
            Text("Handle long / overflow text in rows",
                style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
            // RowColumnLongTextWidget(),
          ],
        ),
      ),
    );
  }
}
