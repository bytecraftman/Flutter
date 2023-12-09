import 'package:flutter/material.dart';

// Create a variable that stores the converted currency value
// Create a function that multiples the value given by the texfield.
// store the value that we created in variable
// dislay the variable

class CurrencyConvertorMaterialPage extends StatefulWidget {
  const CurrencyConvertorMaterialPage({super.key});

  @override
  State<CurrencyConvertorMaterialPage> createState() =>
      _CurrencyCovertorMaterialPage();
}

class _CurrencyCovertorMaterialPage
    extends State<CurrencyConvertorMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(width: 2.0, style: BorderStyle.solid),
      borderRadius: BorderRadius.circular(5),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          'Currency Convertor',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // int - string integervalue.toString()
              // string - int int.parse(stringvalue)
              Text(
                '\u{20B9} ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
                style: const TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              TextField(
                controller: textEditingController,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  hintText: "Please enter a amount in USD",
                  hintStyle: const TextStyle(color: Colors.black),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 81;
                  });
                },
                style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll(
                    Colors.black,
                  ),
                  elevation: const MaterialStatePropertyAll(15),
                  foregroundColor: const MaterialStatePropertyAll(Colors.white),
                  minimumSize: const MaterialStatePropertyAll(
                    Size(double.infinity, 50),
                  ),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                child: const Text('Convert'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
