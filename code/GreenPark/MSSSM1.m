dm = 88; %dim x matrix
dn= 111;
G0 = 0; %initial condition
Gmax = 1; % max trail
G1 = zeros(dm,dn); %topology
%G2 = zeros(dm,dn); %trails
% load ('A.mat');
G2=a;
G3 = zeros(dm,dn); %presence of peoples
G4 = zeros(dm,dn); %potenzial of ground
G5 = zeros(dm,dn); %slope
M(:,:,1) = G1;
M(:,:,2) = G2;
M(:,:,3) = G3;
M(:,:,4) = G4;
M(:,:,5) = G5;

E = zeros(dm,dn); % entrance
    E1v = [1,18]; E(E1v(1),E1v(2))=1;
    E2v = [1,43]; E(E2v(1),E2v(2))=1;
    E3v = [44,1]; E(E3v(1),E3v(2))=1;
    E4v = [53,111]; E(E4v(1),E4v(2))=1;
    E5v = [88,101]; E(E5v(1),E5v(2))=1;
    E6v = [88,74]; E(E6v(1),E6v(2))=1;
U = zeros(dm,dn); % exits
    U1v = [1,18]; U(U1v(1),U1v(2))=1;
    U2v = [1,43]; U(U2v(1),U2v(2))=1;
    U3v = [44,1]; U(U3v(1),U3v(2))=1;
    U4v = [53,111]; U(U4v(1),U4v(2))=1;
    U5v = [88,101]; U(U5v(1),U5v(2))=1;
    U6v = [88,74]; U(U6v(1),U6v(2))=1;

T = 1; % durability of trail
I = 30; % intensity of footprints
v = 3; %velocity
num_per=0; %number of peoples
l=0.8; %parameter of direction
sigma = 4; %visibility

iter= 5000;
dt = 0.1;

fig = figure('Position',[100 1 900 900]);

%per_canc = zeros(iter,1); %array che si ricorda persone cancellate

vidObj = VideoWriter('provavideo.avi');
open(vidObj);

for i=2:iter
    mod_terreno; %modify ground
    %if(mod(i,3)==2)
        insert_pers; %insert peoples
    %end
    direction_pend; % calculate best direction
    spostamento; % moves peoples
    
    hold off;
    %subplot(121)
    h= surf(M(:,:,2));
    set(h,'LineStyle','none')
    view(2)
    currFrame = getframe;   % Write each frame to the file.
%     view(2)
%     subplot(122)
%     surf(M(:,:,4))
%     
    writeVideo(vidObj,currFrame);
    i
end

close(vidObj); % Close the file.

%PR1 = M(:,:,4);
%save ('cupola.mat','PR1');