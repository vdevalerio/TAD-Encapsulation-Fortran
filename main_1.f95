program bascara1
implicit none
logical :: controle
real :: a , b , c
real :: x1 , x2 ! Raizes reais.
!
do
    print*, "Entre com os valores dos coeficientes ( a , b , c ) , "
    print*, "onde a∗x∗∗2 + b∗x + c . "
    read*, a , b , c
    call bascara( a , b , c , controle , x1 , x2 )
    if(controle) then
        print*, "As raizes( r e a i s ) sao : "
        print*, "x1= " , x1
        print*, "x2= " , x2
        exit
    else
        print*, "As raizes sao complexas. Tente novamente."
    end if
end do
CONTAINS
    subroutine bascara ( a2 , a1 , a0 , raizes_reais , r1 , r2 )
! Variaveis mudas :
    real, intent(in) :: a0 , a1 , a2
    logical, intent(out) :: raizes_reais
    real, intent(out) :: r1 , r2
! Variaveis locais :
    real :: disc
!
    raizes_reais= testa_disc( a2 , a1 , a0 )
    if(.not. raizes_reais)return
    disc= a1 * a1 - 4 * a0 * a2
    r1= 0.5*( -a1 - sqrt(disc)) / a2
    r2= 0.5*( -a1 + sqrt(disc)) / a2
    return
    end subroutine bascara
!
    function testa_disc ( c2 , c1 , c0 )
    logical :: testa_disc
! Variaveis mudas :
    real, intent(in) :: c0 , c1 , c2
    if(c1 * c1 -4 * c0 * c2 >= 0.0 )then
        testa_disc= .true.
    else
        testa_disc= .false.
    end if
    return
    end function testa_disc
end program bascara1