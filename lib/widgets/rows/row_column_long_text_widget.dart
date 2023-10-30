import 'package:flutter/material.dart';

class RowColumnLongTextWidget extends StatefulWidget {
  const RowColumnLongTextWidget({super.key});

  @override
  State<RowColumnLongTextWidget> createState() =>
      _RowColumnLongTextWidgetState();
}

class _RowColumnLongTextWidgetState extends State<RowColumnLongTextWidget> {
  @override
  Widget build(BuildContext context) {
    // with long text in row, the text will overflow and will not be visible
    // to fix this, wrap the text widget with Expanded widget
    return const Row(
      children: [
        Expanded(
          child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
              "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
              "when an unknown printer took a galley of type and scrambled it to make a type specimen book. "
              "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. "
              "It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum "
              "passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
        )
      ],
    );
  }
}
