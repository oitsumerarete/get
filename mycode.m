data = importdata("data.txt")'
scale = importdata("settings.txt")'

dV = scale(1)
dt = scale(2)

V = data * dV
t = (1:length(data)) * dt;
[m i] = max(V)
[tFul j] = max(t)


tCharge = i*dt
tObr = tFul - tCharge

plot(t,V, "ro-", "LineWidth", 2, "MarkerSize", 8, "MarkerIndices",1:25:length(V) )
grid on
title(["Зависимость напряжения"; "на конденсаторе в RC-цепочке"; "в зависимости от времени"])
ylabel("Напряжение, В")
xlabel("Время, с")
legend("U(t)")
text(6,2, "Время заряда: "+ tCharge)
text(6, 1.5 , "Время разряда: " + tObr)

set(gcf,'Visible', 'on')
saveas(gcf, "Capacitor.png")
saveas(gcf, "Мария Иванова.svg")