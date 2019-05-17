! Harmonic Series

! How We Got From There To Here:
! A Story of Real Analysis
! page 130 - 132
! https://en.wikipedia.org/wiki/Euler%E2%80%93Mascheroni_constant

      
      program EMConst
C          implicit none
C https://gcc.gnu.org/onlinedocs/gfortran/Fortran-Dialect-Options.html
C https://stackoverflow.com/questions/10884260/how-can-gfortran-tell-if-i-am-compiling-f90-or-f95-code
         use ISO_FORTRAN_ENV 
C          https://stackoverflow.com/questions/3170239/fortran-integer4-vs-integer4-vs-integerkind-4#3170438
         integer(kind=int32) :: n
         integer, parameter :: rp = selected_real_kind(15)
         integer (kind = int32) :: i
         Real (kind = rp) :: b
         Real (kind = rp) :: a
         n = huge(n) ! https://stackoverflow.com/questions/9569756/fortran-the-largest-and-the-smallest-integer
         a = 0.0_rp
         do i = 1,(n-1),1
            a = (a + (1.0_rp/i))         
         end do
         b = log(real(n)) !https://gcc.gnu.org/onlinedocs/gfortran/REAL.html
         print *, a - b
      end program EMConst


C gfortran EMConst.f -o EMConst.out
C ./EMConst.out

