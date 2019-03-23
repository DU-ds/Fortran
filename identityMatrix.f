      program identityMatrix
      implicit none
      integer :: col, row
      integer, parameter :: n1 = 10, n2 = n1
      integer, allocatable, dimension(:,:) :: x1 
      do row = 1, n1
        do col = 1, n1
          if (col == row) then
            x1(row, col) = 1
          else
            x1(row, col) = 0
          end if
        end do
      end do
      call printMatrix(x1, n2)
      end program identityMatrix
      subroutine printMatrix(array, n2) ! if this was to print a n x k matrix, I'd put a k on line 3, a k arg
        implicit none !in the subroutine and repalce the second n in the array(n,n) with a k
        integer, intent(in) :: array(n2,n2)  !creating an n x n identity matrix
        integer, intent(in) :: n2 !declaring that it's an input? IDK lol
        integer :: i
        do i = 1,n2
          print*, array(i,:)
        end do
      end subroutine printMatrix
!excercise 5.4, 
!https://www.fortrantutorial.com/arrays-formatted-io/index.php

! subroutine adapted from
! "Reading in a 2D array of numbers into Fortran arrays"
!found here: https://www.math.fsu.edu/~dmandel/Fortran/