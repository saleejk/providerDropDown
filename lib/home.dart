import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer<DropDown>(builder: (context, pro, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(pro.selectedValue == 'one'
                  ? '1111'
                  : pro.selectedValue == 'two'
                      ? '2222'
                      : '3333'),
              DropdownButton(
                items: [
                  DropdownMenuItem(value: 'one', child: Text('1')),
                  DropdownMenuItem(value: 'two', child: Text('2')),
                  DropdownMenuItem(value: 'three', child: Text('3'))
                ],
                onChanged: (value) => pro.changeValue(value),
              )
            ],
          );
        }),
      ),
    );
  }
}
