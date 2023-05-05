void main() {

  var player = {
    'name' : 'kse',
    'xp' : 19.99,
    'superpower' : false,
  }; // Map<String, Object> -> Object은 어떤 자료형이던 올 수 있다는 의미
  
  
  Map<int,bool> player2 = {
    1 : false,
    2 : true,
    3 : false,
  }; 
  
    Map<List<int>,bool> player3 = {
    [1,2,3] : false,
    [1,2,4] : true,
    [1,2] : false,
  }; 

}

