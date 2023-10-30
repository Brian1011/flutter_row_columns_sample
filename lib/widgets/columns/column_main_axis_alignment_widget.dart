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
    return Container(
      height: 600,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
            ),
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
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
          )
          // places the children as close to the start of the row
          /*CustomColumnWidget(
            mainAxisAlignment: MainAxisAlignment.start,
          ),

          // places the children as close to the center of the row
          CustomColumnWidget(
            mainAxisAlignment: MainAxisAlignment.center,
          ),

          // places the free space evenly between the children,
          // you can use the spaceEvenly, spaceBetween, or spaceAround values for the mainAxisAlignment property
          // to control the spacing between the children.
          CustomColumnWidget(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),

          // places the children as close to the end of the main axis as possible.
          CustomColumnWidget(
            mainAxisAlignment: MainAxisAlignment.end,
          ),*/
        ],
      ),
    );
  }
}

class CustomColumnWidget extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  const CustomColumnWidget({super.key, required this.mainAxisAlignment});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Row(
        children: [
          Column(
            mainAxisAlignment: mainAxisAlignment,
            children: [
              Container(
                color: Colors.red,
                width: 100,
              ),
              Container(
                color: Colors.green,
                width: 100,
              ),
              Container(
                color: Colors.blue,
                width: 100,
              ),
            ],
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
