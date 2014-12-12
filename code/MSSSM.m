dm = 100; %dim x matrice
dn= 100;
G0 = 0; %condizione iniziale 
Gmax = 1; % massimo calpestato
G1 = zeros(dm,dn); %struttura terreno
G2 = zeros(dm,dn); %quanto calpestato 
% load ('A.mat');
% G2=A;
G3 = zeros(dm,dn); %presenza persone
G4 = zeros(dm,dn); %potenziale terreno
G5 = zeros(dm,dn); %pendenza
M(:,:,1) = G1;
M(:,:,2) = G2;
M(:,:,3) = G3;
M(:,:,4) = G4;
M(:,:,5) = G5;

E = zeros(dm,dn); % entrate
    E1v = [1,50]; E(E1v(1),E1v(2))=1; 
    E2v = [50,1]; E(E2v(1),E2v(2))=1;
    E3v = [100,50]; E(E3v(1),E3v(2))=1;
    E4v = [50,100]; E(E4v(1),E4v(2))=1;

U = zeros(dm,dn); % uscite
    U1v = [1,50]; U(U1v(1),U1v(2))=1; 
    U2v = [50,1]; U(U2v(1),U2v(2))=1;
    U3v = [100,50]; U(U3v(1),U3v(2))=1;
    U4v = [50,100]; U(U4v(1),U4v(2))=1;
    
T = 1; % durability of trail
I = 100; % intensita impronte
v = 3; %velocita
num_per=0; %numero persone
l=0.7; %parametro dir
sigma = 5;

iter= 50;
dt = 0.1;

%per_canc = zeros(iter,1); %array che si ricorda persone cancellate

fig = figure('Position',[100 1 800 800]);

vidObj = VideoWriter('prova1.avi');
open(vidObj);
surf(M(:,:,2)) 
view(2)
currFrame = getframe;   % Write each frame to the file.
writeVideo(vidObj,currFrame);
%colorbar

for i=2:iter
    mod_terreno; %modifica terreno
    if(mod(i,8)==2)
        insert_pers; %inserisci persona
    end
    direction2; % calcola direzione migliore
    spostamento; % sposta la persona
    
    hold off;
    surf(M(:,:,2))
    view(2)
    
    currFrame = getframe;   % Write each frame to the file.
    writeVideo(vidObj,currFrame);
    
    i
end
close(vidObj); % Close the file.
clf(fig)

%PR = M(:,:,2);
%save ('prova1.mat','PR');

b