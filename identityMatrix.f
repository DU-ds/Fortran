      function identityM(n)
      integer, intent(in) :: n !input to the function
      integer, dimension(n,n) :: x1 !output - n x n identity matrix
      integer :: col, row
      do row = 1, n
        do col = 1, n
          if (col == row) then
            x1(row, col) = 1
          else
            x1(row, col) = 0
          end if
        end do
      end do
      end function identityM

      program identityMatrix
      implicit none
      integer :: col, row
      integer, parameter :: n1 = 10, n2 = n1 !I'd like to go back to n instead of n1, n2
      integer,  dimension(n1,n1) :: x1 
      do row = 1, n1
        do col = 1, n1
          if (col == row) then
            x1(row, col) = 1
          else
            x1(row, col) = 0
          end if
        end do
      end do
      end program identityMatrix
      !so this part of the identity matrix program isnt working :/