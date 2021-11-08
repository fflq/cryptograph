#include <iostream>
#include <cstdio>

using namespace std ;

static int buf[1024] ;
int *x = buf+10, *y = buf+500 ;
static int sa, sb ;

int exgcd(int a, int b, int n=1)
{
	if (!b) {
		printf ("*%d, gcd=%d\n", n, a) ;
		return a ;
	}

	int qn = a/b ;
	int rn = a%b ;
	printf ("*%d\nr[n-2] = qn*r[n-1] + r[n] => %d = %d*%d + %d\n", n, a, qn, b, rn) ;

	x[n] = x[n-2] - qn*x[n-1] ;
	y[n] = y[n-2] - qn*y[n-1] ;
	printf ("r[n] = a*x[n] + b*y[n] => %d = %d*%d + %d*%d\n\n", rn, sa, x[n], sb, y[n]) ;

	return exgcd(b, rn, n+1) ;
}

int main() 
{
	x[-1] = 1, x[0] = 0 ;
	y[-1] = 0, y[0] = 1 ;
	//exgcd(sa=1759, sb=550) ;
	//exgcd(sa=1234, sb=4321) ;
	//exgcd(sa=24140, sb=40902) ;
	//exgcd(sa=550, sb=1769) ;
	exgcd(sa=22, sb=37) ;
	return 0 ;
}
