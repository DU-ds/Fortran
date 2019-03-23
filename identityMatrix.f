

      program identityMatrix
      implicit none
      integer :: n1
      integer, allocatable :: array1(:,:)
      print *, "How large an identity matrix do you want?"
      read *, n1
      allocate(array1( n1, n1))
      identM(n1, array1)
      call printMatrix( array1, n1)

      end program identityMatrix

      function identM(n, matrix1)
      integer, intent(in) :: n !input to the function
      integer, dimension(n,n)   :: x1 !n x n identity matrix
      integer, dimension(n,n), intent(out) :: matrix1 
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
      matrix1 = x1
      end function identM

      subroutine printMatrix(array, n2) ! if this was to print a n x k matrix, I'd put a k on line 3, a k arg
        implicit none !in the subroutine and repalce the second n in the array(n,n) with a k
        integer, intent(in) :: array(n2,n2)  !creating an n x n identity matrix
        integer, intent(in) :: n2 !declaring that it's an input? IDK lol
        integer :: i
        do i = 1, n2
          print*, array(i,:)
        end do
      end subroutine printMatrix