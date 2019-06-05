function[wynik]=raport(n,order)
en= 10:n
%nOnes = ones(n, 1) ;
%A = diag(4 * nOnes, 0) - diag(nOnes(1:n-1), -1) - diag(nOnes(1:n-1), 1)-diag(nOnes(1:n-2), 2)-diag(nOnes(1:n-2), -2)
%B=2*ones(n,1)
i=1
for c=10:n
    nOnes = ones(c, 1) ;
    A = diag(4 * nOnes, 0) - diag(nOnes(1:c-1), -1) - diag(nOnes(1:c-1), 1)-diag(nOnes(1:c-2), 2)-diag(nOnes(1:c-2), -2)
    b=2*ones(c,1)
    xreal = A\b
    t=cputime
    rozwiazanie=iteruj(A,b,order)
    czas_iteruj(i)=cputime-t
    norm_r(i)=norm(rozwiazanie-xreal)
    i=i+1
end
i=1
for c=10:n
    nOnes = ones(c, 1) ;
    A = diag(4 * nOnes, 0) - diag(nOnes(1:c-1), -1) - diag(nOnes(1:c-1), 1)-diag(nOnes(1:c-2), 2)-diag(nOnes(1:c-2), -2)
    b=2*ones(c,1)
    xreal = A\b
    t=cputime
    rozwiazanie=cgs(A,b)
    czas_cgs(i)=cputime-t
    norm_cg(i)=norm(rozwiazanie-xreal)
    i=i+1
end
roznica=czas_iteruj-czas_cgs
%plot(en,roznica,en,czas_iteruj,en,czas_cgs)

figure1 = figure;
axes1 = axes('Parent',figure1)
hold(axes1,'all');
plot(en,roznica,en,czas_iteruj,en,czas_cgs)
title('zaleznosc czasu od rozmiaru macierz')
legend({'y = roznica','y = czas iteruj','y = czas cgs'},'Location','northwest')
saveas(figure1,'wykres_czas.jpg')

roznica_norm=norm_r-norm_cg
figure2 = figure;
axes2 = axes('Parent',figure2)
hold(axes2,'all');
plot(en,roznica_norm,en,norm_r,en,norm_cg)
title('zaleznosc normy od rozmiaru macierz')
legend({'y = roznica','y = norm iteruj','y = norm cg'},'Location','northwest')
saveas(figure2,'wykres_dokladnosc.jpg')

disp(table(en',czas_iteruj',czas_cgs',norm_r',norm_cg', 'VariableNames',{'rozmiar_macierzy', 'czas_f_iteruj','czas_f_cg','norma_iteruj','norma_cg'}))

end
    