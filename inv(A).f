      ! Returns the inverse of a matrix calculated by finding the LU
      ! decomposition.  Depends on LAPACK.
      function inv(A) result(Ainv)
         integer, parameter :: rp = SELECTED_REAL_KIND(15)
         real(kind = rp), dimension(:,:), intent(in) :: A
         real(kind = rp), dimension(size(A,1),size(A,2)) :: Ainv
 
         real(kind = rp), dimension(size(A,1)) :: work  ! work array for LAPACK
         integer, dimension(size(A,1)) :: ipiv   ! pivot indices
         integer :: n, info
 
         ! External procedures defined in LAPACK
         external DGETRF
         external DGETRI

         ! Store A in Ainv to prevent it from being overwritten by LAPACK
         Ainv = A
         n = size(A,1)

         ! DGETRF computes an LU factorization of a general M-by-N matrix A
         ! using partial pivoting with row interchanges.
         call DGETRF(n, n, Ainv, n, ipiv, info)

         if (info /= 0) then
            stop 'Matrix is numerically singular!'
         end if

         ! DGETRI computes the inverse of a matrix using the LU factorization
         ! computed by DGETRF.
         call DGETRI(n, Ainv, n, ipiv, work, n, info)

         if (info /= 0) then
            stop 'Matrix inversion failed!'
         end if
      end function inv

C based on:
C http://fortranwiki.org/fortran/show/Matrix+inversion