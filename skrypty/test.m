clc;
clear all;
fcmdata = [1;1;1;2;2;2;3;3;3;4;4;4;5;5;5];

[centers,U] = fcm(fcmdata,5); %srodki grup i membership value
maxU = max(U);
% indeksy liczb nalezacych do pierwszej, drugiej itd grupy
index1 = find(U(1,:) == maxU); 
index2 = find(U(2,:) == maxU);
index3 = find(U(3,:) == maxU);
index4 = find(U(4,:) == maxU);
index5 = find(U(5,:) == maxU);
g1= fcmdata(index1,:); % liczby nalezace do pierwszej grupy
plot(fcmdata(index1,:),0,'oy')
hold on
plot(fcmdata(index2,:),0,'om')
hold on
plot(fcmdata(index3,:),0,'oc')
hold on
plot(fcmdata(index4,:),0,'or')
hold on
plot(fcmdata(index5,:),0,'og')
hold on
plot(centers(1,1),0,'xy','MarkerSize',15,'LineWidth',3)
plot(centers(2,1),0,'xm','MarkerSize',15,'LineWidth',3)
plot(centers(3,1),0,'xc','MarkerSize',15,'LineWidth',3)
plot(centers(4,1),0,'xr','MarkerSize',15,'LineWidth',3)
plot(centers(5,1),0,'xg','MarkerSize',15,'LineWidth',3)
hold off