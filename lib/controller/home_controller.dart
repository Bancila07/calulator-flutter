import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';


class HomeController extends GetxController{

  var equation = "".obs;
  var result = "".obs;
  var expression = "".obs;
  var equationFontSize = 50.0.obs;
  var resultFontSize = 50.0.obs;

  void buttonPressed(String buttonText) {

    if(buttonText == "C"){

      equation.value = "";
      result.value = "";
      equationFontSize.value = 50;
      resultFontSize.value = 50;

    }else if(buttonText == "⌫"){

      equationFontSize.value = 50;
      resultFontSize.value = 50;
      equation.value = equation.value.substring(0, equation.value.length-1);

      if(equation.value == ""){
        equation.value = "0";
      }

    }else if(buttonText == "="){

        equationFontSize.value = 50;
        resultFontSize.value = 50;

        expression.value = equation.value;
        expression.value = expression.value.replaceAll("÷", "/");
        expression.value = expression.value.replaceAll("×", "*");

      try{
        Parser p = Parser();
        Expression exp = p.parse(expression.value);
        ContextModel cm = ContextModel();

        result.value = '${exp.evaluate(EvaluationType.REAL, cm)}';

      }catch(e){
        result.value = "Error";
      }

    }else{
      if(equation.value == "0"){
        equation.value = buttonText;
      }else {
        equation.value = equation.value + buttonText;
      }
    }

  }

}