import 'package:flutter/material.dart';

class RowsMainAxisAlignment extends StatefulWidget {
  const RowsMainAxisAlignment({super.key});

  @override
  State<RowsMainAxisAlignment> createState() => _RowsMainAxisAlignmentState();
}

class _RowsMainAxisAlignmentState extends State<RowsMainAxisAlignment> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // places the children as close to the start of the row
        CustomRowWidget(
          mainAxisAlignment: MainAxisAlignment.start,
        ),

        // places the children as close to the center of the row
        CustomRowWidget(
          mainAxisAlignment: MainAxisAlignment.center,
        ),

        // places the free space evenly between the children,
        // you can use the spaceEvenly, spaceBetween, or spaceAround values for the mainAxisAlignment property
        // to control the spacing between the children.
        CustomRowWidget(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        ),

        // places the children as close to the end of the main axis as possible.
        CustomRowWidget(
          mainAxisAlignment: MainAxisAlignment.end,
        ),
      ],
    );
  }
}

class CustomRowWidget extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  const CustomRowWidget({super.key, required this.mainAxisAlignment});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: mainAxisAlignment,
          children: [
            Container(
              color: Colors.red,
              height: 100,
              width: 100,
            ),
            Container(
              color: Colors.green,
              height: 100,
              width: 100,
            ),
            Container(
              color: Colors.blue,
              height: 100,
              width: 100,
            ),
          ],
        ),
        const SizedBox(height: 5),
      ],
    );
  }
}
