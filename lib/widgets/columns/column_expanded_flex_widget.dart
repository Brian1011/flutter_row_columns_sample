import 'package:flutter/material.dart';

class ColumnExpandedFlexWidget extends StatefulWidget {
  const ColumnExpandedFlexWidget({super.key});

  @override
  State<ColumnExpandedFlexWidget> createState() =>
      _ColumnExpandedFlexWidgetState();
}

class _ColumnExpandedFlexWidgetState extends State<ColumnExpandedFlexWidget> {
  @override
  Widget build(BuildContext context) {
    /*
      Expanded is a widget that takes up space given to it by its parent.
      Combining the expanded widget with the flex property allows you to control how much space a child of a column takes up.

      In the example below, the every child has a flex of 1. All the children will occiupy the same space.
      The first child will take up 1/3 of the available space,
      the second child will take up 1/3 of the available space, and
      the third child will take up 1/3 of the available space.

      In the second column, the first child has a flex of 1, the second child has a flex of 2, and the third child has a flex of 3.
      The first child will take up 1/6 of the available space,
      the second child will take up 2/6 of the available space, and
      the third child will take up 3/6 of the available space.
     */
    return SizedBox(
      height: 250,
      child: Row(
        children: [
          // 1st column
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
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
                Expanded(
                  child: Container(
                    color: Colors.green,
                    width: double.infinity,
                    child: const Text(
                      "Flex 1",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Expanded(
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
          // 2nd column
          Expanded(
            child: Column(
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
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.green,
                    height: 100,
                    width: double.infinity,
                    child: const Text(
                      "Flex 2",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.blue,
                    height: 100,
                    width: double.infinity,
                    child: const Text(
                      "Flex 3",
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
        ],
      ),
    );
  }
}
