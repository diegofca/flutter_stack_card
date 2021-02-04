import 'package:flutter/material.dart';
import 'package:flutter_stack_card/flutter_stack_card.dart';
import 'package:pay_out/app/general/constants/constants.dart';
import 'package:pay_out/app/general/ui/poppins_button.dart';

const list = ["1", "2", "3", "4", "5"];
const colors = [Colors.blue, Colors.grey, Colors.red, Colors.cyan, Colors.amber];
class CardRegisterWid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final stack = StackCard.builder(
      itemCount: 3,
      stackOffset: Offset(50, 80),
      onSwap: (index) {
        print("Page change to $index");
      },
      itemBuilder: (context, index) {
        return eleCard(context, index);
      },
    );
    stack.pageController.nextPage(duration: Duration(seconds: 5), curve: null);
    return stack;
  }

  Widget eleCard(BuildContext context, int index) {
    final double bottom = 30;
    double bottomMargin = bottom / index;
    if (bottomMargin == double.infinity) {
      bottomMargin = bottom*1.4;
    }

    return Container(
      margin: EdgeInsets.only(bottom: 50),
      child: Container(
          margin: EdgeInsets.only(bottom: bottomMargin),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(25.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: PayPOutColors.PrimaryColor.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 20,
                  offset: Offset(0, 10), // changes position of shadow
                ),
              ]
          )
      ),
    );
  }
}
