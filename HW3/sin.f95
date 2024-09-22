program sinus
    implicit none
    integer, parameter :: n = 1000
    double precision :: l1, l2, delta, sum, x
    integer :: i

    l1 = 3.14    
    l2 = 1.5 * l1                  
    delta = (l2 - l1) / n
    sum = 0.0

    do i = 0, n-1
        x = l1 + (i + 0.5) * delta
        sum = sum + sin(x) * delta
    end do

    write(*,*) 'integral of sin(x) from pi to 3pi/2 is =', sum
end program sinus