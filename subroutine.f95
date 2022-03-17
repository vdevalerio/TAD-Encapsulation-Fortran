! Calcula as raizes reais, caso existam, de um polinomio de grau 2.
! Usa funo testa_ disc.
!
subroutine bascara( coefSub , raizes_reais , raizesSub )
use tipos
implicit none
! Variaveis mudas:
class(Coeficientes), intent (in) :: coefSub
logical, intent (out) :: raizes_reais
class(Raizes), intent (out) :: raizesSub
! Variaveis locais:
real :: disc
INTERFACE
    function testa_disc( coefFunc )
    use tipos
    logical :: testa_disc
    class(Coeficientes), intent(in) :: coefFunc
    end function testa_disc
END INTERFACE
!
raizes_reais = testa_disc( coefSub )
if ( .not. raizes_reais) return
disc = coefSub%b * coefSub%b - 4 * coefSub%a * coefSub%c
raizesSub%r1= 0.5 * (-coefSub%b - sqrt(disc)) / coefSub%a
raizesSub%r2= 0.5 * (-coefSub%b + sqrt(disc)) / coefSub%a
return
end subroutine bascara
