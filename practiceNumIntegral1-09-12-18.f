      program numintgrl1
      implicit none
      integer , parameter :: rp = selected_real_kind(15)
      real (kind = rp) :: sum = 0.0_rp
      integer :: i, n
      real (kind = rp) :: a, b, deltaX 
      real (kind = rp) :: x_i = 0.0_rp
      write (*,*) 'input the lower bound'
      read (*,*)  a
      write (*,*) 'input the upper bound'
      read (*,*) b
      write (*,*)  'input the number of sections in the approx.'
      read (*,*) n
      deltaX = (b-a)/n
      do i = 1, n, 1
        x_i = a + i * deltaX 
!Right Riemann sum 
        sum = sum + ((x_i ** 3)/2 * deltaX)
      end do
      print *, sum
      end program numintgrl1



! compile attempt (for l8r):      
C $ cd \R:

C Kenneth Collins@DESKTOP-7A1A76L /cygdrive/r
C $ pwd
C /cygdrive/r

C Kenneth Collins@DESKTOP-7A1A76L /cygdrive/r
C $ gfortran R:/Fortran_wd/practiceNumIntegral1-09-12-18.f -o practiceNumIntegral1-09-12-18.exe
