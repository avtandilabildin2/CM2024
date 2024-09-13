program machine_epsilon
    use, intrinsic :: ieee_arithmetic
    implicit none
    real(16) :: epsilon16, one_plus_epsilon16
    real(8)  :: epsilon64, one_plus_epsilon64

    epsilon16 = 1.0
    do
        epsilon16 = epsilon16 / 2.0
        one_plus_epsilon16 = 1.0 + epsilon16
        if (one_plus_epsilon16 <= 1.0) then
            epsilon16 = epsilon16 * 2.0  
            exit
        end if
    end do
    epsilon64 = 1.0d0
    do
        epsilon64 = epsilon64 / 2.0d0
        one_plus_epsilon64 = 1.0d0 + epsilon64
        if (one_plus_epsilon64 <= 1.0d0) then
            epsilon64 = epsilon64 * 2.0d0 
            exit
        end if
    end do
    print *, "float16=", epsilon16
    print *, "float64=", epsilon64
end program machine_epsilon
