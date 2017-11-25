#include <iostream>
#include <cstring>

using namespace std;
#define MAX_SIZE 1000

//二维矩阵类
class Marix {
public:
    Marix(){};
    Marix(int x1,int x2,int y1,int y2){ value[0][0]=x1;value[0][1]=x2;value[1][0]=y1;value[1][1]=y2;};
    int value[2][2];
    bool isSetValue;
    void Show(){cout<<value[0][0]<<"\t"<<value[0][1]<<endl<<value[1][0]<<"\t"<<value[1][1]<<endl;};
};

//矩阵乘法
Marix Mult(Marix m1,Marix m2){
    Marix ans;
    ans.value[0][0]=m1.value[0][0]*m2.value[0][0]+m1.value[0][1]*m2.value[1][0];
    ans.value[0][1]=m1.value[0][0]*m2.value[0][1]+m1.value[0][1]*m2.value[1][1];
    ans.value[1][0]=m1.value[1][0]*m2.value[0][0]+m1.value[1][1]*m2.value[1][0];
    ans.value[1][1]=m1.value[1][0]*m2.value[0][1]+m1.value[1][1]*m2.value[1][1];
    return ans;
}

//用于保存计算过的幂的值
Marix powerMap[MAX_SIZE];

//初始化表
void InitMap(Marix a)
{
    for(int i=2;i<MAX_SIZE;i++)
    {
        //memset(powerMap[i].value, 0x0, 4 * sizeof(int));
        powerMap[i].isSetValue=false;
    }
    powerMap[1]=a;
    powerMap[1].isSetValue=true;
}

//设置指数为n的值
void SetPowerN(Marix a,int n)
{
    if(n%2==0)
    {
        if(!powerMap[n/2].isSetValue)
        {
            SetPowerN(a,n/2);
        }
        powerMap[n]=Mult(powerMap[n/2],powerMap[n/2]);
    }
    else
    {
        if(!powerMap[n/2].isSetValue)
        {
            SetPowerN(a,n/2);
        }
        powerMap[n]=Mult(Mult(powerMap[n/2],powerMap[n/2]),powerMap[1]);
    }
}

//获取指数n的值，不存在就调用SetPowerN
long long GetPowerN(Marix a,int n)
{
    if(powerMap[n].isSetValue>0)
    {
        return powerMap[n].value[1][1];
    }
    SetPowerN(a,n);
    return powerMap[n].value[1][1];
}

int main() {
    Marix a(1,1,1,0);
    int n;
    cin>>n;
    InitMap(a);
    cout<<GetPowerN(a,n)<<endl;
    return 0;
}