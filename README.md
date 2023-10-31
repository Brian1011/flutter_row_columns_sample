# Flutter Rows & Columns Samples with Expanded, Flex and Spacer Widgets
## About
This project is a collection of Flutter Row and Column samples with Flex, Expanded and Spacer widgets.
It offers explanation and code samples for the following widgets:
* Row
* Column
* Flex
* Expanded
* Spacer

## Rows and Columns
Rows and Columns are the most basic layout widgets in Flutter.
They are used to arrange children widgets in a horizontal or vertical way.

Rows arrange their children horizontally and columns arrange them vertically.
Rows and Columns can be nested to create more complex layouts.

## Rows
### 1. Rows on main axis alignment (horizontal)
Row children can be aligned in the following ways:
* At the beginning of the row (MainAxisAlignment.start) This is the default arrangement of row items if no alignment is specified. Indicated by the 1st row in the image below.
* At the middle of the row (MainAxisAlignment.center). Indicated by the 2nd row in the image below.
* Evenly spaced along the row (MainAxisAlignment.spaceEvenly). Indicated by the 3rd row in the image below.
* At the end of the row (MainAxisAlignment.end). Indicated by the 4th row in the image below.

[![Rows on main axis](https://github.com/Brian1011/flutter_row_columns_sample/blob/main/images/rows_main_axis_alignment.png)]

Source code: [rows_expanded_flex.dart](https://github.com/Brian1011/flutter_row_columns_sample/blob/main/lib/widgets/rows/rows_main_axis_alignment.dart)

### 2. Rows with Expanded widgets
The expanded widget is used to fill the available space in a row or column.

Flex values are used to determine how much space each child occupies in the row or column.

As shown below on the first row the expanded widget when applied to row children / widgets without flex specified all the children will occupy the same space.
The default flex value is 1. 

In the 2nd row the expanded widget is applied to all three children but with different flex values. 
The first child has a flex value of 1, the second child has a flex value of 2 and the third child has a flex value of 3. 

This means that the first child will occupy 1/6 of the available space, the second child will occupy 2/6 of the available space and the third child will occupy 3/6 of the available space.

[![Rows with spacer and expanded widgets](https://github.com/Brian1011/flutter_row_columns_sample/blob/main/images/rows_expanded_flex.png)]

Source code: [rows_expanded_flex_widget.dart](https://github.com/Brian1011/flutter_row_columns_sample/blob/main/lib/widgets/rows/rows_expanded_flex_widget.dart)

### 3. Rows with Spacer widgets
The spacer widget is used to fill the available space in a row or column.
The spacer widget is similar to the expanded widget but it does not require a flex value.

As show below the spacer widget will occupy the space between the first and last widgets in the row.

[![Rows with spacer and expanded widgets](https://github.com/Brian1011/flutter_row_columns_sample/blob/main/images/row_spacer_flex.png)]

Source code: [rows_spacer_flex_widget.dart](https://github.com/Brian1011/flutter_row_columns_sample/blob/main/lib/widgets/rows/rows_spacer_flex_widget.dart)

## Columns
### 1. Columns on main axis alignment (vertical)
Column children can be aligned in the following ways:
1. At the beginning of the column (MainAxisAlignment.start) This is the default arrangement of column items if no alignment is specified. Indicated by the 1st column in the image below.

## How to run the project
1. Clone the project
2. Use flutter version 3.13.3 or higher
3. Run flutter pub get
4. Run flutter run
5. Enjoy!
