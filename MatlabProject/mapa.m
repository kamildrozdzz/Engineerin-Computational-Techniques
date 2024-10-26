load('TO_DUPNY_mapa.mat')
figure, hold on
mapshow(Mx,My,Mz,'DisplayType','surface')
demcmap(Mz);
axis tight
axis equal