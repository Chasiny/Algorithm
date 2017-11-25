#include <iostream>
#include <vector>

using namespace std;

#define TEST_NUM 11

//芯片结构体
struct Chip {
    int id;
    bool isok;
};

//测试芯片答案结构体，ans1为第一个芯片检测第二个芯片的结果，ans2相反
struct Ans {
    bool ans1;
    bool ans2;
};

//简单的初始化芯片函数
void Init(vector<Chip> *initVector) {
    for (int i = 0; i < TEST_NUM; i++) {
        Chip testChip;
        testChip.id = i;
        if (i % 2 == 1) {
            testChip.isok = false;
        } else {
            testChip.isok = true;
        }
        initVector->push_back(testChip);
    }
}

//显示容器内容
void Show(vector<Chip> showVector) {
    for (int i = 0; i < showVector.size(); i++) {
        cout << showVector[i].id << "|" << showVector[i].isok << endl;
    }
}

//测试芯片，内有两个bool
Ans CheckChip(Chip c1, Chip c2) {
    Ans ans;
    if (c1.isok) {
        ans.ans2 = c2.isok;
    } else {
        ans.ans2 = rand() % 2;
    }
    if (c2.isok) {
        ans.ans1 = c1.isok;
    } else {
        ans.ans1 = rand() % 2;
    }
    return ans;
}

int main() {
    //定义两个容器，用于存放当前的芯片以及通过的芯片
    vector<Chip> testVector[2];

    //初始化
    Init(&(testVector[0]));

    //用于保存结果的芯片在哪个容器
    int ansPos;

    //开始二分检测
    for (int i = 0;; i++) {

        //定义当前的容器以及另外一个容器的下标
        int pos = i % 2;
        int otherPos = (i + 1) % 2;

        //两两组合检测
        for (int j = 0; j < testVector[pos].size(); j = j + 2) {

            //检测结果都是好的，将其中一个加到另外一个容器
            if (j == testVector[pos].size() - 1) {
                testVector[otherPos].push_back(testVector[pos][j]);
            } else {
                //其余情况都抛弃
                Ans ans = CheckChip(testVector[pos][j], testVector[pos][j + 1]);
                if (ans.ans1 && ans.ans2) {
                    testVector[otherPos].push_back(testVector[pos][j]);
                }
            }
        }

        //清除当前容器
        testVector[pos].clear();

        //判断是否完成
        if (testVector[otherPos].size() <= 1) {
            ansPos = otherPos;
            break;
        }
    }
    cout << "ans" << endl;
    Show(testVector[ansPos]);
    return 0;
}