      program identityMatrix
      implicit none
      integer :: col, row
      integer, parameter :: n = 3
      integer, dimension(n,n) :: x1 

      do row = 1, n
        do col = 1, n
          if (col == row) then
            x1(row, col) = 1
          else
            x1(row, col) = 0
          end if
        end do
      end do
      print *, x1
      end program identityMatrix