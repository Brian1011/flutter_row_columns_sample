import 'package:flutter/material.dart';

class ColumnSpacerFlexWidget extends StatefulWidget {
  const ColumnSpacerFlexWidget({super.key});

  @override
  State<ColumnSpacerFlexWidget> createState() => _ColumnSpacerFlexWidgetState();
}

class _ColumnSpacerFlexWidgetState extends State<ColumnSpacerFlexWidget> {
  @override
  Widget build(BuildContext context) {
    /*
      Spacer is a widget that takes up space proportional to its flex value.
      In the example below, the first child of the column has a flex value of 1 and the second child has a flex value of 1
      The first child will take up 1/2 of the available space and the second child will take up 1/2 of the available space.
      The spacer widget is used to create space between the children of a column.
     */
    return SizedBox(
      height: 250,
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                    width: double.infinity,
                    child: const Text(
                      "Flex 1",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const Spacer(),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.blue,
                    width: double.infinity,
                    child: const Text(
                      "Flex 1",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.red,
                    width: double.infinity,
                    child: const Text(
                      "Flex 2",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const Spacer(),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.blue,
                    width: double.infinity,
                    child: const Text(
                      "Flex 1",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
