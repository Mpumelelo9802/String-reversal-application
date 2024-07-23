# String Reversal & Palindrome Checker

This Flutter application takes a string as input and returns the reversed string while checking if the input string is a palindrome. It provides a simple User Interface (UI) to input a string, submit it, and view the results.

## Features

- Reverse a given string.
- Check if the given string is a palindrome.
- Simple and intuitive User Interface (UI).
- Error handling for empty input.

## Getting Started

### Prerequisites

To run this application, you need to have the following installed on your machine:

- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)
- Dart SDK (comes with Flutter)
- An IDE like Visual Studio Code, Android Studio, or any code editor of your choice.

### Installation

1. **Clone the repository:**

    ```bash
    git clone https://github.com/yourusername/string_reversal_app.git
    cd string_reversal_app
    ```

2. **Install dependencies:**

    ```bash
    flutter pub get
    ```

### Running the Application

1. **Connect a device or start an emulator:**

    Ensure you have a connected device or an emulator running.

2. **Run the application:**

    ```bash
    flutter run
    ```

### Usage

1. **Open the application** on your device or emulator.
2. **Enter a string** in the text field.
3. **Click the "Submit" button** to view the reversed string and check if it is a palindrome.
4. **Click the "Clear Results" button** to reset the input and results.

### Code Explanation

- `main.dart`: Entry point of the application.
- `string_reversal_home.dart`: Contains the main logic and UI for reversing the string and checking for palindromes.
- **Methods:**
  - `reverseString(String input)`: Reverses the input string.
  - `isPalindrome(String input)`: Checks if the input string is a palindrome.
  - `_onSubmit()`: Handles the submission of the input string.
  - `_showErrorDialog()`: Displays an error dialog for empty input.
  - `_clearResults()`: Clears the input and results.

### Dependencies

- `flutter/cupertino.dart`: For Cupertino style widgets.
- `flutter/material.dart`: For Material design widgets.

### Contact

For any questions, please contact me at Mpumelelo9802@gmail.com
