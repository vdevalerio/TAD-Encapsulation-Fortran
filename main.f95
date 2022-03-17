! Calcula as raizes reais de um polinomio de grau 2.
module tipos
TYPE :: Coeficientes
   real :: a , b , c
END TYPE

TYPE :: Raizes
    real :: r1, r2
END TYPE
end module tipos

program bascara3

use tipos
TYPE (Coeficientes) coefProg
TYPE (Raizes) raizesProg

logical :: controle

INTERFACE
    subroutine bascara( coefSub , raizes_reais , raizesSub )
    use tipos
    class(Coeficientes), intent (in) :: coefSub
    logical, intent (out) :: raizes_reais
    class(Raizes), intent (out) :: raizesSub
end subroutine bascara
END INTERFACE
!
do
    print*, "Entre com os valores dos coeficientes( a , b , c ),"
    print*, "onde a∗x∗∗2 + b∗x + c."
    read*, coefProg%a , coefProg%b , coefProg%c
    call bascara( coefProg, controle , raizesProg )
    if(controle) then
        print*, "As raizes(reais) são : "
        print*, "x1= " , raizesProg%r1
        print*, "x2= " , raizesProg%r2
        exit
    else
        print*, "As raizes são complexas. Tente novamente."
    end if
end do
end program bascara3
