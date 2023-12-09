import 'package:flutter/cupertino.dart';

class CurrencyCovertorCupertinoPage extends StatefulWidget {
  const CurrencyCovertorCupertinoPage({super.key});

  @override
  State<CurrencyCovertorCupertinoPage> createState() =>
      _CurrencyCovertorCupertinoPageState();
}

class _CurrencyCovertorCupertinoPageState
    extends State<CurrencyCovertorCupertinoPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey3,
        middle: Text(
          'Currency Convertor',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: CupertinoColors.systemGrey3,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // int - string integervalue.toString()
              // string - int int.parse(stringvalue)
              Text(
                'INR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
                style: const TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              CupertinoTextField(
                controller: textEditingController,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                ),
                placeholder: 'Please enter the amount in USD',
                prefix: const Icon(CupertinoIcons.money_dollar),
                style: const TextStyle(
                    color: CupertinoColors.black, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 10,
              ),
              CupertinoButton(
                color: CupertinoColors.black,
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 81;
                  });
                },
                child: const Text('Convert'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
