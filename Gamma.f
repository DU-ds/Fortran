! Harmonic Series
! 
! How We Got From There To Here:
! A Story of Real Analysis
! page 130 - 132

      
      program Gamma
         implicit none
         integer :: n
         integer, parameter :: rp = selected_real_kind(15)
         integer :: i
         Real (kind = rp) :: a, gama, nPlusOne
         n = 1000000000
         nPlusOne = n + 1.0_rp
         a = 0.0_rp
         do i = 1,n,1
            a = (a + (1.0_rp/i))   
         end do
         print *, a
         gama = a - log(nPlusOne)
         print *, "N + 1 = ", nPlusOne
         print *, "Gamma is approx: " , gama
      end program Gamma




