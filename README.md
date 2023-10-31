# Flutter Rows & Columns Samples with Flex, Expanded and Spacer Widgets
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
* At the beginning of the row (MainAxisAlignment.start) This is the default arrangement of row items if no alignment is specified.
* At the middle of the row (MainAxisAlignment.center)
* Evenly spaced along the row (MainAxisAlignment.spaceEvenly)
* At the end of the row (MainAxisAlignment.end)

[![Rows on main axis](https://github.com/Brian1011/flutter_row_columns_sample/blob/main/images/rows_main_axis_alignment.png)]

Source code: [rows_expanded_flex.dart](https://github.com/Brian1011/flutter_row_columns_sample/blob/main/lib/widgets/rows/rows_main_axis_alignment.dart)

### 2. Rows with Expanded widgets
The expanded widget is used to fill the available space in a row or column.
Here is a screenshot

[![Rows with spacer and expanded widgets](https://github.com/Brian1011/flutter_row_columns_sample/blob/main/images/rows_expanded_flex.png)]

Source code: [rows_expanded_flex_widget.dart](https://github.com/Brian1011/flutter_row_columns_sample/blob/main/lib/widgets/rows/rows_expanded_flex_widget.dart)

### 3. Rows with Spacer widgets
The spacer widget is used to fill the available space in a row or column.
Here is a screenshot

[![Rows with spacer and expanded widgets](https://github.com/Brian1011/flutter_row_columns_sample/blob/main/images/row_spacer_flex.png)]

Source code: [rows_spacer_flex_widget.dart](https://github.com/Brian1011/flutter_row_columns_sample/blob/main/lib/widgets/rows/rows_spacer_flex_widget.dart)

## Columns


