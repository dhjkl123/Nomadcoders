String sayHello(String name, int age, [String? country = 'usa']) =>
  "Hello $name, you are $age, you come from $country";

// Optional Positional Parameters func([String? str = 'str'])

void main() {
  
  sayHello('ksw',10);

}