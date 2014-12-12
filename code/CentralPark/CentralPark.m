load('CentralParkMatrix.mat');
dm = 426; %dim x matrice
dn= 750;
G0 = 0; %condizione iniziale 
Gmax = 1; % massimo calpestato
%G1 = zeros(dm,dn); %struttura terreno
G1=b;
%G2 = zeros(dm,dn); %quanto calpestato 
% load ('A.mat');
G2=a;
G3 = zeros(dm,dn); %presenza persone
G4 = zeros(dm,dn); %potenziale terreno
G5 = zeros(dm,dn); %pendenza
M(:,:,1) = G1;
M(:,:,2) = G2;
M(:,:,3) = G3;
M(:,:,4) = G4;
M(:,:,5) = G5;

E = zeros(dm,dn); % entrate
    E1v = [1,1]; E(E1v(1),E1v(2))=1; 
    E2v = [1,153]; E(E2v(1),E2v(2))=1;
    E3v = [1,430]; E(E3v(1),E3v(2))=1;
    E4v = [1,581]; E(E4v(1),E4v(2))=1;
    E5v = [426,750]; E(E5v(1),E5v(2))=1;
    E6v = [426,496]; E(E6v(1),E6v(2))=1;
    E7v = [426,446]; E(E7v(1),E7v(2))=1;
    E8v = [426,219]; E(E8v(1),E8v(2))=1;
    E9v = [426,25]; E(E9v(1),E9v(2))=1;
    E10v = [166,1]; E(E10v(1),E10v(2))=1;

U = zeros(dm,dn); % uscite
    U1v = [1,1]; U(U1v(1),U1v(2))=1; 
    U2v = [1,153]; U(U2v(1),U2v(2))=1;
    U3v = [1,430]; U(U3v(1),U3v(2))=1;
    U4v = [1,581]; U(U4v(1),U4v(2))=1;
    U5v = [426,750]; U(E5v(1),U5v(2))=1;
    U6v = [426,496]; U(E6v(1),U6v(2))=1;
    U7v = [426,446]; U(E7v(1),U7v(2))=1;
    U8v = [426,219]; U(E8v(1),U8v(2))=1;
    U9v = [426,25]; U(E9v(1),U9v(2))=1;
    U10v = [166,1]; U(E10v(1),U10v(2))=1;
    
T = 5; % durability of trail
I = 30; % intensita impronte
v = 3; %velocita
num_per=0; %numero persone
l=0.8; %parametro dir
sigma = 4;

iter= 8000;
dt = 0.1;

%per_canc = zeros(iter,1); %array che si ricorda persone cancellate

fig = figure('Position',[100 1 1200 1600]);

vidObj = VideoWriter('CentralPark11.avi');
open(vidObj);
h= surf(M(:,:,2)); 
set(h,'LineStyle','none')
view(2)
currFrame = getframe;   % Write each frame to the file.
writeVideo(vidObj,currFrame);

for i=2:iter
    mod_terreno; %modifica terreno
    %if(mod(i,8)==2)
        inser_pers_cp; %inserisci persona
    %end
    direction_pend; % calcola direzione migliore
    spostamento; % sposta la persona
    
    hold off;
    h= surf(M(:,:,2));
    set(h,'LineStyle','none')
    view(2)
    
    currFrame = getframe;   % Write each frame to the file.
    writeVideo(vidObj,currFrame);
    
    i
end
close(vidObj); % Close the file.
clf(fig)

%PR = M(:,:,2);
%save ('prova1.mat','PR');

