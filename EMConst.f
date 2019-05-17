! Harmonic Series

! How We Got From There To Here:
! A Story of Real Analysis
! page 130 - 132
! https://en.wikipedia.org/wiki/Euler%E2%80%93Mascheroni_constant

      
      program EMConst
         implicit none
         integer :: n
         integer, parameter :: rp = selected_real_kind(15)
         integer :: i
         Real (kind = rp) :: b
         Real (kind = rp) :: a
         n = 1000000000
         a = 0.0_rp
         do i = 1,n,1
            a = (a + (1.0_rp/i))         
         end do
         b = log(real(n)) !https://gcc.gnu.org/onlinedocs/gfortran/REAL.html
         print *, a - b
      end program EMConst






C gfortran EMConst.f -o EMConst.out
C ./EMConst.out

