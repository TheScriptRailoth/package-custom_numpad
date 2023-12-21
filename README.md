# Custom NumPad Widget

A Flutter package that provides a customizable numeric pad widget for integration into various screens, such as payment interfaces.

## Overview

The Custom NumPad Widget is designed to offer a customizable numeric pad interface that can be seamlessly integrated into Flutter applications, particularly in scenarios requiring numeric input, such as payment forms.

### Features

- Customizable button dimensions
- Adjustable row and column spacing
- Control over button colors and text style
- Easy integration with TextEditingController

## Usage

To use this widget in your Flutter application, follow these steps:

1. Add the dependency to your `pubspec.yaml` file:

   ```yaml
   dependencies:
     custom_numpad: ^1.0.0  # Replace with the latest version
   
2. Import the package in your Dart code:
    
    ```dart
    import 'package:custom_numpad/custom_numpad.dart';

3. Use the CustomNumPad widget in your UI:

    ```dart
   CustomNumPad(
        buttonHeight: 50,
        buttonWidth: 70,
        rowSpacing: 5,
        columnSpacing: 5,
        // Add other required parameters for your CustomNumPad widget    
   )

### Parameters

| Parameter       | Required | Default     | Type                  | Description                                      |
|-----------------|----------|-------------|-----------------------|--------------------------------------------------|
| buttonHeight    | No       | 75          | double                | Height of the numeric pad buttons                |
| buttonWidth     | No       | 65          | double                | Width of the numeric pad buttons                 |
| rowSpacing      | No       | 5           | double                | Vertical spacing between rows of buttons         |
| columnSpacing   | No       | 5           | double                | Horizontal spacing between columns of buttons    |
| buttonRadius    | No       | 0.0         | double                | Radius for button corners                        |
| buttonColor     | No       | F5F6FA      | Color                 | Background color for buttons                     |
| bgColor         | No       | Transparent | Color                 | Background color for the numeric pad             |
| cornerRadius    | No       | 0.0         | double                | Corner radius for the entire numeric pad         |
| controller      | No       | null        | TextEditingController? | Controller for the text input field              |
| buttonTextStyle | No       | TextStyle() | TextStyle             | Text style for the numeric pad buttons           |


## Examples

1. Customized:

    ```dart
    CustomNumPad(
         buttonHeight: 60,
         buttonWidth: 120,
         rowSpacing: 10,
         columnSpacing: 10,
         buttonRadius: 20,
         buttonColor: Colors.red,
         bgColor: Colors.yellow,
         // Add other required parameters for your CustomNumPad widget
      )

2. Basic:

    ```dart
    CustomNumPad()

## Screenshots

Here's a visual representation of the CustomNumPad widget in action:

<p float="left">
  <img src="https://imgur.com/a/5CO1LaJ" alt="Image 1" width="300" />
  <img src="https://imgur.com/a/cpQjLtQ" alt="Image 2" width="300" />
</p>


   
For more information visit [GitHub](https://github.com/TheScriptRailoth/package-custom_numpad)

      

