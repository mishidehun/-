#include <stdio.h>

class Ctest
{
	public:
		Ctest(int a):m_counter(a)
		{

		}

		~Ctest()
		{

		}

		void ShowCounter()
		{
			printf("counter: %d\n", m_counter);
		}

	private:
		int m_counter;
};

int main(int argc, char **argv)
{
	Ctest test(5); 
	test.ShowCounter();

	return 0;
}


