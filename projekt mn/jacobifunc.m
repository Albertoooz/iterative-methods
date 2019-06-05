## Copyright (C) 2019 Albert
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} jacobifunc (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Albert <Albert@DESKTOP-KGDTLB1>
## Created: 2019-05-19

function wynik = jacobifunc (A, b)
resJ(1) = norm(b);
roznica = 999;
xJ = zeros(n,1);
k = 2;
A1 = diag(1./diag(A)) * (diag(diag(A))-A);
b1 = b ./ diag(A);
while ((k < maxiter) && (roznica > dokl))
  y = b1 + A1*xJ;
  resJ(k) = norm(b-A*y);
  roznica = norm(y-xJ);
  xJ = y;
  k++;
  wynik=xJ;
endwhile
endfunction
