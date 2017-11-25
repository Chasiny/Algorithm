#include <iostream>
using namespace std;
#define MAX_SIZE 1000

long long powerMap[MAX_SIZE];

void InitMap(int a){
    for(int i=2;i<MAX_SIZE;i++){
        powerMap[i]=0;
    }
    powerMap[0]=1;
    powerMap[1]=a;
}

void SetPowerN(int a,int n){
    if(n%2==0){
        if(powerMap[n/2]<=0){
            SetPowerN(a,n/2);
        }
        powerMap[n]=powerMap[n/2]*powerMap[n/2];
    } else{
        if(powerMap[n/2]<=0){
            SetPowerN(a,n/2);
        }
        powerMap[n]=powerMap[n/2]*powerMap[n/2]*powerMap[1];
    }
}

long long GetPowerN(int a,int n){
    if(powerMap[n]>0){
        return powerMap[n];
    }
    SetPowerN(a,n);
    return powerMap[n];
}

int main() {
    int a,n;
    cin>>a>>n;
    InitMap(a);
    cout<<GetPowerN(a,n)<<endl;
    return 0;
}