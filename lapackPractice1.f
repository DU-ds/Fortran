      program lapackpractice1
        integer, parameter :: rp = selected_real_kind(15)
         integer, parameter :: nxn = 5
        real ( kind = rp ), dimension(nxn, nxn) :: x
        real ( kind = rp ), dimension(nxn, nxn) :: xinv
         ! double precision :: x
         ! double precision :: xinv


!           external DGETRF
!           external DGETRI
!           external inv

         open( file = "R:/DataSets/5x5Matrix.txt", unit = 34)

         read(34, *) x
         print *, x
         xinv = x


         xinv = inv(xinv)
         xinv =  matmul(x, xinv)
         print *, xinv

      end program lapackpractice1



