/***************************************
Author: zchshen
Date:  20170628
brief: This is a program in <<The Annotated STL Source>> of Page44
*****************************************/
#ifndef __JJALLOC__
#define __JJALLOC__

#include <new>
#include <cstddef>
#include <cstdlib>
#include <climits>
#include <iostream>

namespace JJ
{
	template <class T>
		inline T* _allocate(ptrdiff_t size, T*) // ptrdiff_t 
		{
			set_new_handler(0);
			T* tmp = (T*)(::operator new(size_t)(size * sizeof(T)));
			if (0 == tmp)
			{
				cerr << "out of memory" << endl;
				exit(1);
			}
				return tmp;
		}

	template <class T>
		inline void _deallocator(T* buffer)
		{
			::operator delete(buffer)
		}

	template <class T1, class T2>
		inline void _construct(T1* p, const T2& value)
		{
			new(p) T1(value);
		}

	template <class T>
		inline void _destroy(T* ptr)
		{
			ptr->~T();
		}








} // end of namespace JJ


#endif // end of __JJALLOC__
