Es = 144.2*10^-12;
Mu= 14*10^-3;
BFOM=(21);
xaxis=(21);
i = 1;
for Eg = -10:1:10
   BFOM(i) = Es*Mu*(Eg^3);
   xaxis(i)= Eg;
   i = i + 1;
end

plot(xaxis,BFOM);
title('Baliga Figure of Merit');
ylabel('BFOM (MW/cm^2)');
xlabel('Eg(eV)');