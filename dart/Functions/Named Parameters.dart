String sayHello_named_required({required String name, required int age, required String country})
{
  return "Hello $name, you arr $age, and you come from $country";
}

String sayHello_named_default({String name = 'anon', int age = 19, String country = 'usa'})
{
  return "Hello $name, you arr $age, and you come from $country";
}

String sayHello_named({String name, int age, String country})
{
  return "Hello $name, you arr $age, and you come from $country";
}

String sayHello(String name, int age, String country)
{
  return "Hello $name, you arr $age, and you come from $country";
}


void main() {
  print(sayHello('ksw',20,'korea'));
  
  print(sayHello_named(age:12,
                country:'korea',
                name:'ksw'));
  
   print(sayHello_named_default(
                name:'ksw'));
  
  print(sayHello_named_required(age:12,
                country:'korea',
                name:'ksw'));
}

