void main(){

Person person = new Person();

person.name="Shuvo Sonjoy";
person.age=22;
person.address="Lamabazar";

print(person.name);
print(person.age);
print(person.address);

person.meThod();
}
class Person{
  String name="";
  int age=0 ;
  String address="";
  String gender ="";

  Person(){
    print("Instance created");//automatically called
  }

  void meThod(){   //behaviour
    print("hey $name, this is a method");
  }
}