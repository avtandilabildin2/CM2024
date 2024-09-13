program machine_zero
    implicit none
    real :: z, temp
    z = 1.0
    do
        temp = 2.0 * z
        if (temp <= z) then
            z = z / 2.0 
            exit
        end if
        z = z / 2.0
    end do
    print *, "Machine zero=", z
end program machine_zero