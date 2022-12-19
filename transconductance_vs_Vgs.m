result = (30);
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
% plot(result);

gmvec = (30);
j = 1;
for vgs = -3.0:0.1:0.0
w = 2 * (10^-6);
L = 10^-6;
u = 150;
k = 9 * 10^9;
vt = -3;
gm = (k*(4/3)*w*(result(j))*u*(vgs - vt)^(1/3))/(2*L);
gmvec(j) = gm;
j = j+1;
end
x = -3:0.1:0;
plot(x,gmvec);
xlabel('Voltage(V)');
ylabel('Transconductance(mS/mm)');
title('Transconductance vs Gate-Source Voltage');