import 'package:flutter/material.dart';

class ColumnsMainAxisAlignment extends StatefulWidget {
  const ColumnsMainAxisAlignment({super.key});

  @override
  State<ColumnsMainAxisAlignment> createState() =>
      _ColumnsMainAxisAlignmentState();
}

class _ColumnsMainAxisAlignmentState extends State<ColumnsMainAxisAlignment> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 250,
      child: Row(
        children: [
          // Column with main axis alignment.
          // The main axis alignment property is used to align the children of a column on the vertical axis.
          // The default value is MainAxisAlignment.start, which places the children at the top of the column.
          // The other values are MainAxisAlignment.center, MainAxisAlignment.end, and MainAxisAlignment.spaceBetween.
          Expanded(
              child: CustomColumnWidget(
            mainAxisAlignment: MainAxisAlignment.start,
            color: Colors.red,
            text: "Start",
          )),
          Expanded(
              child: CustomColumnWidget(
            mainAxisAlignment: MainAxisAlignment.center,
            color: Colors.green,
            text: "Center",
          )),
          Expanded(
              child: CustomColumnWidget(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            color: Colors.grey,
            text: "SpaceBetween",
          )),
          Expanded(
              child: CustomColumnWidget(
            mainAxisAlignment: MainAxisAlignment.end,
            color: Colors.blue,
            text: "End",
          )),
        ],
      ),
    );
  }
}

class CustomColumnWidget extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  final Color color;
  final String text;
  const CustomColumnWidget(
      {super.key,
      required this.mainAxisAlignment,
      required this.color,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: color,
      height: 200,
      child: Column(
        mainAxisAlignment: mainAxisAlignment,
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 16, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          const Text(
            "Main Axis",
            style: TextStyle(fontSize: 16, color: Colors.white),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
