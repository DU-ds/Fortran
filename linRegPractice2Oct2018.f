      program linReg2
      implicit none
      integer, parameter :: rp = SELECTED_REAL_KIND(15)
      integer, parameter :: n = 1000
      real (kind = rp) , dimension(n, 4):: x       ! it's a 1000 row, 4 column matrix
      real (kind = rp) , dimension(n, 1):: y       ! the dv, column vector
      real (kind = rp) , dimension(4, n):: x_T     ! transpose of the 1000 row, 4 column matrix
      real (kind = rp) , dimension(1, n):: y_T     ! the dv, row vector
      real (kind = rp) , dimension(4, 4):: x_Tx    !the product of transpose(x) and x
      real (kind = rp) , dimension(4, 4):: x_Txinv !copy of x_Tx to prevent lapack from mutating it
      real (kind = rp) , dimension(n)   :: work    ! work array for LAPACK
      integer, dimension(n)             :: ipiv    ! pivot indices
      integer :: info


      ! External procedures defined in LAPACK
      external DGETRF
      external DGETRI


      open(file = "R:/DataSets/Matrix-10-18-18.txt", unit = 50)
      read (50,*) x_T
      x = transpose(x_T)

C       print *, y
      open(file = "R:/DataSets/vector-10-18-18.txt", unit = 52)
      read(52,*) y_T
      y = transpose(y_T)
      x_Tx = matmul(x_T, x)
      







      write (*,*) "program works"
      end program linReg2




