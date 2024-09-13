program machine_infinity
    implicit none
    real :: i, temp
    i = 1.0
    do
        temp = 2.0 * i
        if (temp > i) then
            exit
        end if
        i = i * 2.0
    end do
    print *, "Machine infinity=", i
end program machine_infinity