#include <iostream>
using namespace std;


class A1
{
protected:
    int a1;
public:
    A1(int v1 = 0)
    {
        cout << "\nClass A1 constructor";
        a1 = v1;
    }
    virtual void show() const
    {
        cout << "\na1 = " << a1;
    }
    virtual void print() const
    {
        cout << "A1";
    }
};
class A2
{
protected:
    int a2;
public:
    A2(int v1 = 0)
    {
        cout << "\nClass A2 constructor";
        a2 = v1;
    }
    virtual void show() const
    {
        cout << "\na2 = " << a2;
    }
    virtual void print() const
    {
        cout << "A2";
    }
};

class B1 :public virtual A1,public virtual A2
{
protected:
    int b1;
public:
    B1(const int v1 = 0, const  int v2 = 0, const  int v3 = 0) :A1(v2), A2(v3)
    {
        cout << "\nClass B1 constructor";
        b1 = v1;
    }
    void show() const
    {
        cout << "\nb1 = " << b1;
        cout << "\na1 = " << a1;
        cout << "\na2 = " << a2;
    }
    void print() const
    {
        cout << "B1";
    }
};
class B2 : public virtual A1, public virtual A2
{
protected:
    int b2;
public:
    B2(const int v1 = 0, const  int v2 = 0, const  int v3 = 0) :A1(v2), A2(v3)
    {
        cout << "\nClass B2 constructor";
        b2 = v1;
    }
    void show() const
    {
        cout << "\nb2 = " << b2;
        cout << "\na1 = " << a1;
        cout << "\na2 = " << a2;
    }
    void print() const
    {
        cout << "B2";
    }
};

class C1 :public virtual B1, public virtual B2
{
protected:
    int c1;
public:
    C1(const int v1 = 0, const int v2 = 0, const  int v3 = 0) :B1(v2), B2(v3)
    {
        cout << "\nClass C1 constructor";
        c1 = v1;
    }
    void show() const
    {
        cout << "\nc1 = " << c1;
        cout << "\nb1 = " << b1;
        cout << "\nb2 = " << b2;
    }
    void print() const
    {
        cout << "C1";
    }
};
class C2 :public virtual B1, public virtual B2
{
protected:
    int c2;
public:
    C2(const int v1 = 0, const  int v2 = 0, const  int v3 = 0) :B1(v2), B2(v3)
    {
        cout << "\nClass C2 constructor";
        c2 = v1;
    }
    void show() const
    {
        cout << "\nc2 = " << c2;
        cout << "\nb1 = " << b1;
        cout << "\nb2 = " << b2;
    }
    void print() const
    {
        cout << "C2";
    }
};



int main()
{
    B2* a = new C1(1, 1, 1);
    a->show();
}
