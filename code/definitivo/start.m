
%...................................................
%.................First simulation..................
%...................................................

clear;
clc;
N=1; % Number of simulation

%......... Dimension of matrix

dm = 50; % x dimension
dn = 50; % y dimension

%......... Initial ground condition

G1 = zeros(dm,dn); % Topology

G2 = zeros(dm,dn); % Initial trails
% load ('Trail_1.mat'); % If you want initial presence of trails
% G2=Trail_1;

%.......... Entrance and exits

num_ent=4; % Number of entrance/exits (min N=1 ; max N=4)

% Coordinate have to be between 1 and dm for x, 1 and dn for y

E1v = [1,1]; % Coordinates entrance 1
E2v = [1,49]; % Coordinates entrance 2
E3v = [49,49]; % Coordinates entrance 3
E4v = [49,1]; % Coordinates entrance 4

U1v = [1,1]; % Coordinates exit 1
U2v = [1,49]; % Coordinates exit 2
U3v = [49,49]; % Coordinates exit 3
U4v = [49,1]; % Coordinates exit 4

%.......... Parameters

T = 1; % durability of trail
I = 30; % Intensity of footprints
v = 3; % Velocity
l=0.8; % Parameter of direction
sigma = 4; % Visibility
iter= 2000; % Number of iteration
dt = 0.1; % Unit of time

%........... Save video and final trails

video_name='Quadrato_1__I30-si4-l0.8-it2000.avi'; % Video name
trail_name='Quadrato_1__I30-si4-l0.8-it2000.mat'; % Name of the final matrix of trails

main % start simulation



%...................................................
%.................Second simulation..................
%...................................................

clear;
clc;
N=2; % Number of simulation

%......... Dimension of matrix

dm = 70; % x dimension
dn = 70; % y dimension

%......... Initial ground condition

G1 = zeros(dm,dn); % Topology

G2 = zeros(dm,dn); % Initial trails
% load ('Trail_1.mat'); % If you want initial presence of trails
% G2=Trail_1;

%.......... Entrance and exits

num_ent=4; % Number of entrance/exits (min N=1 ; max N=4)

% Coordinate have to be between 1 and dm for x, 1 and dn for y

E1v = [35,70]; % Coordinates entrance 1
E2v = [35,1]; % Coordinates entrance 2
E3v = [1,35]; % Coordinates entrance 3
E4v = [70,35]; % Coordinates entrance 4

U1v = [35,70]; % Coordinates exit 1
U2v = [35,1]; % Coordinates exit 2
U3v = [1,35]; % Coordinates exit 3
U4v = [70,35]; % Coordinates exit 4

%.......... Parameters

T = 1; % durability of trail
I = 10; % Intensity of footprints
v = 3; % Velocity
l=0.8; % Parameter of direction
sigma = 4; % Visibility
iter= 2000; % Number of iteration
dt = 0.1; % Unit of time

%........... Save video and final trails

video_name='Quadrato_2__I10-si4-l0.8-it2000.avi'; % Video name
trail_name='Quadrato_2__I10-si4-l0.8-it2000.mat'; % Name of the final matrix of trails

main % start simulation

%...................................................
%.................Third simulation..................
%...................................................

clear;
clc;
N=3; % Number of simulation

%......... Dimension of matrix

dm = 70; % x dimension
dn = 70; % y dimension

%......... Initial ground condition

G1 = zeros(dm,dn); % Topology
%G1 = PR1;

G2 = zeros(dm,dn); % Initial trails
% load ('Trail_1.mat'); % If you want initial presence of trails
% G2=Trail_1;

%.......... Entrance and exits

num_ent=3; % Number of entrance/exits (min N=1 ; max N=4)

% Coordinate have to be between 1 and dm for x, 1 and dn for y

E1v = [2,70]; % Coordinates entrance 1
E2v = [2,1]; % Coordinates entrance 2
E3v = [70,35]; % Coordinates entrance 3
E4v = [90,45]; % Coordinates entrance 4

U1v = [2,70]; % Coordinates exit 1
U2v = [2,1]; % Coordinates exit 2
U3v = [70,35]; % Coordinates exit 3
U4v = [90,45]; % Coordinates exit 4

%.......... Parameters

T = 5; % durability of trail
I = 30; % Intensity of footprints
v = 3; % Velocity
l=0.8; % Parameter of direction
sigma = 4; % Visibility
iter= 2000; % Number of iteration
dt = 0.1; % Unit of time

%........... Save video and final trails

video_name='Triangolo_1__I10-si4-l0.8-it2000.avi'; % Video name
trail_name='Triangolo_1__I10-si4-l0.8-it2000.mat'; % Name of the final matrix of trails

main % start simulation

%...................................................
%.................Fourth simulation..................
%...................................................

clear;
clc;
N=4; % Number of simulation

%......... Dimension of matrix

dm = 70; % x dimension
dn = 70; % y dimension

%......... Initial ground condition

%G1 = zeros(dm,dn); % Topology
G1= PR1;

G2 = zeros(dm,dn); % Initial trails
%load ('cupola.mat'); % If you want initial presence of trails
%G2=PR1;

%.......... Entrance and exits

num_ent=2; % Number of entrance/exits (min N=1 ; max N=4)

% Coordinate have to be between 1 and dm for x, 1 and dn for y

E1v = [1,25]; % Coordinates entrance 1
E2v = [1,45]; % Coordinates entrance 2
E3v = [1,45]; % Coordinates entrance 3
E4v = [90,45]; % Coordinates entrance 4

U1v = [90,45]; % Coordinates exit 1
U2v = [90,25]; % Coordinates exit 2
U3v = [1,45]; % Coordinates exit 3
U4v = [90,45]; % Coordinates exit 4

%.......... Parameters

T = 1; % durability of trail
I = 10; % Intensity of footprints
v = 3; % Velocity
l=0.8; % Parameter of direction
sigma = 4; % Visibility
iter= 2000; % Number of iteration
dt = 0.1; % Unit of time

%........... Save video and final trails

video_name='Parallele_1pend.avi'; % Video name
trail_name='Parallele_1pend.mat'; % Name of the final matrix of trails

main % start simulation