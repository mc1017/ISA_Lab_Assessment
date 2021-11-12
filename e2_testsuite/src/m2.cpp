

#include <iostream>
int main(){
  double a,b,c;
  a =1;
  b=2;
  c= a +b;
  std::cout << c << std::endl;
  //this will print 3

  a=2;
  std::cout << c << std::endl;
  //this will print c which is still 3

  c = a +b;
  std::cout << c << std::endl;
  //this will now print 4 as c = 2 +2 now
}