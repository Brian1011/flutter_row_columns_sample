import 'package:flutter/material.dart';

class RowsSpacerFlexWidget extends StatefulWidget {
  const RowsSpacerFlexWidget({super.key});

  @override
  State<RowsSpacerFlexWidget> createState() => _RowsSpacerFlexWidgetState();
}

class _RowsSpacerFlexWidgetState extends State<RowsSpacerFlexWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.red,
                height: 100,
              ),
            ),
            // spacer widget adds a flexible empty space between row children
            const Spacer(),
            Expanded(
              child: Container(
                color: Colors.blue,
                height: 100,
              ),
            ),
          ],
        )
      ],
    );
  }
}
