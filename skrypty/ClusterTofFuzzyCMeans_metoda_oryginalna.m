clc;
clear all;
load fcmdata_metoda_oryginalna.dat
options = [2.0 1000 1e-5 1];
numberOfClusters = 100;
[centers,U] = fcm(fcmdata_metoda_oryginalna(:,2),numberOfClusters, options);

maxU = max(U);

i=1;
while i <= numberOfClusters
    index=find(U(i,:) == maxU);
    ageC=fcmdata_metoda_oryginalna(index, 1);
    avAgeC(i,1)=sum(ageC)/ size(ageC,1);
    i=i+1;
end
age2center = cat(2, avAgeC, centers);