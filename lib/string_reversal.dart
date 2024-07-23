import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class StringReversalHome extends StatefulWidget {
  const StringReversalHome({super.key});

  @override
  _StringReversalHomeState createState() => _StringReversalHomeState();
}

class _StringReversalHomeState extends State<StringReversalHome> {
  final TextEditingController _controller = TextEditingController();
  
  String _reversedString = '';
  bool _isPalindrome = false;
  bool _showResults = false;

  String reverseString(String input) {
    return input.split('').reversed.join('');
  }

  bool isPalindrome(String input) {
    String cleanedInput = input.replaceAll(RegExp(r'[\W_]+'), '').toLowerCase();
    return cleanedInput == reverseString(cleanedInput);
  }

  void _onSubmit() {
    if (_controller.text.isEmpty) {
      _showErrorDialog();
    } else {
      setState(() {
        _reversedString = reverseString(_controller.text);
        _isPalindrome = isPalindrome(_controller.text);
        _showResults = true;
      });
    }
  }

  void _showErrorDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Theme.of(context).platform == TargetPlatform.iOS
            ? CupertinoAlertDialog(
                title: const Text('ERROR'),
                content: const Text(
                  'Please enter a string value',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
                actions: <Widget>[
                  CupertinoDialogAction(
                    child: const Text('OK'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              )
            : AlertDialog(
                title: const Text('ERROR'),
                content: const Text(
                  'Please enter a string value',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
                actions: <Widget>[
                  TextButton(
                    child: const Text('OK'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
      },
    );
  }

  void _clearResults() {
    setState(() {
      _showResults = false;
      _reversedString = '';
      _isPalindrome = false;
      _controller.clear();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 2, 3, 67),
        title: const Text(
          'Input String Reversal & Palindrome Checker',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 24,
            fontFamily: 'Arial',
          ),
        ),
      ),
      body: Container(
        color: const Color.fromARGB(255, 183, 183, 185),
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300, // Adjust width as needed
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText:  _controller.text.isNotEmpty
                        ? ''
                        : 'Enter a number or word',
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 300, // Same width for both buttons
                child: ElevatedButton(
                  onPressed: _onSubmit,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Submit'),
                ),
              ),
              const SizedBox(height: 20),
              if (_showResults) ...[
                const Text(
                  'Reversed word or number: '
                ), Text(
                  _reversedString,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Word or number is a Palindrome: ',
                ),
                Text(
                  _isPalindrome ? 'True' : 'False',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: 300, // Same width for both buttons
                  child: ElevatedButton(
                    onPressed: _clearResults,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('Clear Results'),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
