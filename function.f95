! Chamada pela subrotina bascara para testar se raizes são reais.
!
function testa_disc( coefFunc )
use tipos
implicit none
logical :: testa_disc
! Variaveis mudas:
class(Coeficientes), intent(in) :: coefFunc
if( coefFunc%b * coefFunc%b - 4 * coefFunc%a * coefFunc%c >= 0.0 ) then
    testa_disc = .true.
else
    testa_disc = .false.
end if
return
end function testa_disc
