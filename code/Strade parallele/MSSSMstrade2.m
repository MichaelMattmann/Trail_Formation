dm = 70; %dim x matrix
dn= 70;
G0 = 0; %initial condition
Gmax = 1; % max trail
%G1 = zeros(dm,dn); %topology
G1 = PR1;
G2 = zeros(dm,dn); %trails
% load ('A.mat');
%G2=PR1;
G3 = zeros(dm,dn); %presence of peoples
G4 = zeros(dm,dn); %potenzial of ground
G5 = zeros(dm,dn); %slope
M(:,:,1) = G1;
M(:,:,2) = G2;
M(:,:,3) = G3;
M(:,:,4) = G4;
M(:,:,5) = G5;

E = zeros(dm,dn); % entrance
    E1v = [1,25]; E(E1v(1),E1v(2))=1;
    E2v = [1,45]; E(E2v(1),E2v(2))=1;
    %E3v = [50,15]; E(E3v(1),E3v(2))=1;
    %E4v = [50,35]; E(E4v(1),E4v(2))=1;

U = zeros(dm,dn); % exits
    %U1v = [1,15]; U(U1v(1),U1v(2))=1;
    %U2v = [1,35]; U(U2v(1),U2v(2))=1;
    U3v = [70,25]; U(U3v(1),U3v(2))=1;
    U4v = [70,45]; U(U4v(1),U4v(2))=1;

T = 5; % durability of trail
I = 30; % intensity of footprints
v = 3; %velocity
num_per=0; %number of peoples
l=0.8; %parameter of direction
sigma = 4; %visibility

iter= 5000;
dt = 0.1;

fig = figure('Position',[100 1 800 800]);

%per_canc = zeros(iter,1); %array che si ricorda persone cancellatesurf()
 
vidObj = VideoWriter('conpendenza_semitubo1.avi');
open(vidObj);

for i=2:iter
    mod_terreno; %modify ground
    if(mod(i,4)==2)
        insert_persstrade; %insert peoples
    end
    direction_pend; % calculate best direction
    spostamento; % moves peoples
    
    hold off;
    %subplot(121)
    view(2)
    surf(M(:,:,2))
    view(2)
    currFrame = getframe;   % Write each frame to the file.
    %subplot(122)
    %surf(M(:,:,1))
%     
    writeVideo(vidObj,currFrame);
    i
end

close(vidObj); % Close the file.

close all
%PR1 = M(:,:,2);
%save ('diritta.mat','PR1');