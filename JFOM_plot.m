Eb = 4.9;
JFOM=(12);
i = 1;
for vg = 0:0.5:5
    JFOM(i) = (Eb^2 * vg^2)/(4*pi^2);
    i = i + 1;
end
plot(JFOM);
title('Johnson Figure of Merit');
ylabel('JFOM (MW/cm^2)');
xlabel('Vg(V)');