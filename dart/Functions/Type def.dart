typedef ListOfInts = List<int>;

ListOfInts reverseListOfNumvers(ListOfInts list){
  var reversed = list.reversed;
  return reversed.toList();
}

typedef UserInfo = Map<String,String>;

String sayHi(UserInfo userInfo)
{
  return 'Hi ${userInfo['name']}';
}

void main() {
  
  print(reverseListOfNumvers([1,2,3]));
  sayHi({'name':'ksw'});
  

}