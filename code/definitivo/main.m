G0 = 0;
G3 = zeros(dm,dn); % presence of peoples
G4 = zeros(dm,dn); % potenzial of ground
G5 = zeros(dm,dn); % slope of ground
M(:,:,1) = G1;
M(:,:,2) = G2;
M(:,:,3) = G3;
M(:,:,4) = G4;
M(:,:,5) = G5;

E = zeros(dm,dn); % entrance
E(E1v(1),E1v(2))=1;
E(E2v(1),E2v(2))=1;
E(E3v(1),E3v(2))=1;
E(E4v(1),E4v(2))=1;

U = zeros(dm,dn); % exits
U(U1v(1),U1v(2))=1;
U(U2v(1),U2v(2))=1;
U(U3v(1),U3v(2))=1;
U(U4v(1),U4v(2))=1;

num_per=0; % Number of peoples

fig = figure('Position',[100 1 900 900]);

 
vidObj = VideoWriter(video_name);
open(vidObj);

for i=2:iter
    
    change_ground; %modify ground
   
    if(mod(i,4)==2) %insert peoples
        if (num_ent==1)
            insert_person_1_entrance_1_exit;
        end
        if (num_ent==2)
            insert_person_2_entrance_2_exit;
        end
        if (num_ent==3)
            insert_person_3_entrance_3_exit;
        end
        if (num_ent==4)
            insert_person_4_entrance_4_exit;
        end
    end
    
    direction_pend; % calculate best direction
    move_person; % moves peoples
    
    hold off;
    %subplot(121)
    view(2)    
   % surf(E)
   % surf(U)
    surf(M(:,:,2))

    view(2)
    currFrame = getframe;   % Write each frame to the file.
    %hold off;
%     subplot(122)
%     surf(M(:,:,4))
%     
    writeVideo(vidObj,currFrame);
    [N,i]
end

close(vidObj); % Close the file.
close all
PR1 = M(:,:,2);
save (trail_name,'PR1'); 