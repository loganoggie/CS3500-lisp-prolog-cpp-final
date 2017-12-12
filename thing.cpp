// a thing

#include <iostream>
using namespace std;

int sum357()
{
    int sum = 0;
    for(int i = 1; i <= 1000; i++)
        if(((i%3) == 0) || ((i%5) == 0) || ((i%7) == 0))
            sum = sum +i;
    return(sum);
}

int main()
{
    int sum = sum357();
    cout << sum << endl;
}
