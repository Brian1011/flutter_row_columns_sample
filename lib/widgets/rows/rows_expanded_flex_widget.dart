import 'package:flutter/material.dart';

class RowsExpandedFlexWidget extends StatefulWidget {
  const RowsExpandedFlexWidget({super.key});

  @override
  State<RowsExpandedFlexWidget> createState() => _RowsExpandedFlexWidgetState();
}

class _RowsExpandedFlexWidgetState extends State<RowsExpandedFlexWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /*
           Expanded widget expands the child to fill the available space.
           Flex property is used to control the ratio of space that each child occupies.
           if flex is not specified, the child expands to fill the available space
           if flex is specified, the child expands to fill the available space
           and the remaining space is divided among the children according to the flex factor.
           if flex is specified for all children, the remaining space is divided among the children
           according to their flex factor.

           ----------------------------------------------------------

           In the first case no flex is specified, so the child expands to fill the available space.
           By default the flex factor is 1.
           All the widgets will have a flex factor of 1 hence occupying equal space.

           ----------------------------------------------------------

           On the 2nd case the flex factor is specified for each child.
            The first child has a flex factor of 1, the second child has a flex factor of 2,
            and the third child has a flex factor of 3.

          The first child will occupy 1/6 of the available space,
          the second child will occupy 2/6 of the available space,
          and the third child will occupy 3/6 of the available space.

          The total of 1/6 + 2/6 + 3/6 = 1, which is the total available space.
         */

        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.red,
                height: 100,
                child: const Text(
                  "1",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.green,
                height: 100,
                child: const Text(
                  "1",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                height: 100,
                child: const Text(
                  "1",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.red,
                height: 100,
                child: const Text(
                  "1",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.green,
                height: 100,
                child: const Text(
                  "2",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.blue,
                height: 100,
                child: const Text(
                  "3",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
