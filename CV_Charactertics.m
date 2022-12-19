result = [30];
i = 1;
for vgs = -3.0:0.1:0.0
q = 1.6 * (10.^-19);
ns = 9.5 * (10.^16);
vt = -3;
vfb = sqrt(6.7);
num = q*ns*sqrt(abs(vgs - vt)/abs(vfb));
expression = (1 - (vfb/(vgs - vt))^2);
den = (vgs - vt)*sqrt((1 - sqrt(abs(vgs - vt)/abs(vfb))*expression));
C = num / den;
result(i) = C;
i = i + 1;
end
x = -3:0.1:0;
plot(x,result);
xlabel('Voltage(V)');
ylabel('Capacitance(nF/cm2)');
title('C-V characterstics(calculated)')
