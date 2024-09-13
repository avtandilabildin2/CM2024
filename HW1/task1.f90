program machine_epsilon
    implicit none
    real(8) :: epsilon
    epsilon = 1.0d0
    do while (1.0d0 + epsilon > 1.0d0)
        epsilon = epsilon / 2.0d0
    end do
    epsilon = epsilon * 2.0d0
    print *, "epsilon=",epsilon
end program machine_epsilon
