void main() {
  print("started");

  var x = "1.2";

  // print(x + 5.2);

  var y;

  try {
    y = double.parse(x);
    print(y + 5);
  } catch (e) {
    print("somefailed....");
    print(e);
  } finally {
    print("my app finally");
  }

  print("ended");
}
