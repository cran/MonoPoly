      subroutine transf(c, m, n, scl, mid)
      implicit none
      integer m, n, i, j, jj, nn
      double precision c(m, *), scl, mid
      do j=1,n-1
         nn = n-j
         jj = 1
         do i=j+1,n
            c(i,j) = c(i-1,j) * nn * mid / jj
            jj = jj+1
            nn = nn-1
         enddo
      enddo
      do j=2,n
         do i=1,n
            c(i,1) = c(i,1)*scl + c(i,j)
         enddo
      enddo
      return
      end
