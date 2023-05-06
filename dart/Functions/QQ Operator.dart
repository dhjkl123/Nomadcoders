
// ??  left ?? right (left가 null 이면 right 반환, left가 null이 아니면 left 반환)
// ?=

String capitalizeName(String name) => name.toUpperCase();

String capitalizeName_null(String? name)
{
  if (name != null){
    return name.toUpperCase();
  }
  return 'anon';
}

String capitalizeName_null_fatarrow(String? name) => 
  name != null ? name.toUpperCase() : 'anon';

String capitalizeName_QQ(String? name) => 
    name?.toUpperCase() ?? 'anon';

void main() {
  
  capitalizeName('ksw');
  capitalizeName_null(null);
  capitalizeName_QQ(null);
  capitalizeName_QQ('ksw');
  
  String? name;
  name ??= 'name'; // name이 null 이면 값을 할당해라
  name = null;
  name ??= 'another';

}