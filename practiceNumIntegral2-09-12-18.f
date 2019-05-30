      program numintgrl2
      implicit none
      integer, parameter :: rp =  Selected_real_kind(15)
      integer :: i, n
      real (kind = rp) :: a, b, x_i, deltaX, sum, f
      sum = 0.0_rp
      print *, "input the lower bound"
      read *, a
      print *, "input the upper bound"
      read *, b
      print *, "input the number of sections"
      read *, n
      deltaX = (b-a)/n

      do i = 0, n-1, 1 !left riemann sum
        x_i = a + (i * deltaX)
        sum = sum + (deltaX * f(x_i))
      end do
      write (*,*) sum
      end program numintgrl2



      function f(x1) 
      integer, parameter :: rp =  Selected_real_kind(15)
      real ( kind = rp) ,intent (in) :: x1
      real (kind = rp) :: f 
      f = (x1 ** 2 )/3
      return
      end function f
!edit f to (approx) integrate a different function
