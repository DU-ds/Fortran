! Harmonic Series

! How We Got From There To Here:
! A Story of Real Analysis
! page 130 - 132

      
      program harSer
         implicit none
         integer :: n
         integer, parameter :: rp = selected_real_kind(15)
         integer :: i
         Real (kind = rp) :: a
         n = 1000000000
         a = 0.0_rp
         do i = 1,n,1
            a = (a + (1.0_rp/i))         
         end do
         print *, a
      end program harSer




