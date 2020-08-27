void main() {
  var x = 11;
  var y = 0;

  try {
    var z = x ~/ y;
    print(z);
  } on IntegerDivisionByZeroException {
    print("u r sending 0 , ...");
  } catch (e) {
    print("not supported");
    print(e);
  }
}
