import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String label;
  
  const PrimaryButton({super.key, required this.label});
  
  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {}, 
      style: ButtonStyle(
        textStyle: MaterialStatePropertyAll(Theme.of(context).textTheme.labelLarge),
        backgroundColor: MaterialStatePropertyAll(Theme.of(context).primaryColor),
        padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0)),
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0))
          )
        )
      ),
      child: Text(
        label,
      )
    );
  }  
}