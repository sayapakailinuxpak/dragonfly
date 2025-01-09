import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String label;
  final Function clicked;
  
  const PrimaryButton({required this.label, required this.clicked, super.key});
  
  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {
        clicked();
      }, 
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