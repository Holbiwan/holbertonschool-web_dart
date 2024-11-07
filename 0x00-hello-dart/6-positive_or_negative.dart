void main(List<String> args) {
  var number = int.parse(args[0]);
  print(
      '$number is ${number == 0 ? 'zero' : number > 0 ? 'positive' : 'negative'}');
}
