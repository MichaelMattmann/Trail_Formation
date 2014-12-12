dm = 80; %dim x matrix
dn= 298;
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

E1v=[63,1];
U1v=E1v;

E2v=[34,1];
U2v=E2v;

E3v=[1,3];
U3v=E3v;

E4v=[1,70];
U4v=E4v;

E5v=[1,122];
U5v=E5v;

E6v=[1,179];
U6v=E6v;

E7v=[1,296];
U7v=E7v;

E8v=[74,297];
U8v=E8v;

E9v=[79,180];
U9v=E9v;

E10v=[79,93];
U10v=E10v;


E = zeros(dm,dn); % entrance
%     E1v = [1,1]; E(E1v(1),E1v(2))=1;
%     E2v = [50,50]; E(E2v(1),E2v(2))=1;
%     E3v = [1,50]; E(E3v(1),E3v(2))=1;
%     E4v = [50,1]; E(E4v(1),E4v(2))=1;

U = zeros(dm,dn); % exits
%     U1v = [1,1]; U(U1v(1),U1v(2))=1;
%     U2v = [50,50]; U(U2v(1),U2v(2))=1;
%     U3v = [1,50]; U(U3v(1),U3v(2))=1;
%     U4v = [50,1]; U(U4v(1),U4v(2))=1;

T = 1; % durability of trail
I = 30; % intensity of footprints
v = 3; %velocity
num_per=0; %number of peoples
l=0.8; %parameter of direction
sigma = 4; %visibility

iter= 10000;
dt = 0.1;

fig = figure('Position',[100 1 2900 500]);

%per_canc = zeros(iter,1); %array che si ricorda persone cancellate

vidObj = VideoWriter('Joyce_Park.avi');
open(vidObj);

for i=2:iter
    mod_terreno; %modify ground
    %if(mod(i,3)==2)
        insert_person_Joyce_Park; %insert peoples
    %end
    direction_pend; % calculate best direction
    spostamento; % moves peoples
    
    hold off;
    %subplot(121)
    view(2)
    surf(M(:,:,2))
    view(2)
    currFrame = getframe;   % Write each frame to the file.
    writeVideo(vidObj,currFrame);
    i
end

close(vidObj); % Close the file.

%PR1 = M(:,:,4);
%save ('cupola.mat','PR1');