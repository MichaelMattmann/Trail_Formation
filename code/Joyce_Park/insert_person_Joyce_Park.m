h = rand;
o = rand;
num_per= num_per +1;
% E1v=[63,1];
% U1v=E1V;
% 
% E2v=[34,1];
% U2v=E2V;
% 
% E3v=[1,3];
% U3v=E3V;
% 
% E4v=[1,70];
% U4v=E4V;
% 
% E5v=[1,122];
% U5v=E5V;
% 
% E6v=[1,179];
% U6v=E6V;
% 
% E7v=[1,296];
% U7v=E7V;
% 
% E8v=[74,297];
% U8v=E8V;
% 
% E9v=[79,180];
% U9v=E9V;
% 
% E10v=[79,93];
% U10v=E10V;

if (h<=0.09) %Entrance 1
    M(E1v(1),E1v(2),3)=1;
    if (o<=0.1)
        P(num_per,:)=[E1v(1),E1v(2),U10v(1),U10v(2),0];
    end
    if (o>0.1 && o<=0.2)
        P(num_per,:)=[E1v(1),E1v(2),U4v(1),U4v(2),0];
    end
    if (o>0.2 && o<=0.3)
        P(num_per,:)=[E1v(1),E1v(2),U5v(1),U5v(2),0];
    end
    if (o>0.3 && o<=0.45)
        P(num_per,:)=[E1v(1),E1v(2),U6v(1),U6v(2),0];
    end
    if (o>0.45 && o<=0.6)
        P(num_per,:)=[E1v(1),E1v(2),U9v(1),U9v(2),0];
    end
    if (o>0.6 && o<=0.8)
        P(num_per,:)=[E1v(1),E1v(2),U7v(1),U7v(2),0];
    end
    if (o>0.8)
        P(num_per,:)=[E1v(1),E1v(2),U8v(1),U8v(2),0];
    end
end


if (h>0.09 && h<=0.18) %Entrance 2
    M(E1v(1),E1v(2),3)=1;
    if (o<=0.1)
        P(num_per,:)=[E2v(1),E2v(2),U10v(1),U10v(2),0];
    end
    if (o>0.1 && o<=0.2)
        P(num_per,:)=[E2v(1),E2v(2),U4v(1),U4v(2),0];
    end
    if (o>0.2 && o<=0.3)
        P(num_per,:)=[E2v(1),E2v(2),U5v(1),U5v(2),0];
    end
    if (o>0.3 && o<=0.45)
        P(num_per,:)=[E2v(1),E2v(2),U6v(1),U6v(2),0];
    end
    if (o>0.45 && o<=0.6)
        P(num_per,:)=[E2v(1),E2v(2),U9v(1),U9v(2),0];
    end
    if (o>0.6 && o<=0.8)
        P(num_per,:)=[E2v(1),E2v(2),U7v(1),U7v(2),0];
    end
    if (o>0.8)
        P(num_per,:)=[E2v(1),E2v(2),U8v(1),U8v(2),0];
    end
end




if (h>0.18 && h<=0.27) %Entrance 3
    M(E1v(1),E1v(2),3)=1;
    if (o<=0.1)
        P(num_per,:)=[E3v(1),E3v(2),U10v(1),U10v(2),0];
    end
    if (o>0.1 && o<=0.2)
        P(num_per,:)=[E3v(1),E3v(2),U1v(1),U1v(2),0];
    end
    if (o>0.2 && o<=0.3)
        P(num_per,:)=[E3v(1),E3v(2),U5v(1),U5v(2),0];
    end
    if (o>0.3 && o<=0.45)
        P(num_per,:)=[E3v(1),E3v(2),U6v(1),U6v(2),0];
    end
    if (o>0.45 && o<=0.6)
        P(num_per,:)=[E3v(1),E3v(2),U9v(1),U9v(2),0];
    end
    if (o>0.6 && o<=0.8)
        P(num_per,:)=[E3v(1),E3v(2),U7v(1),U7v(2),0];
    end
    if (o>0.8)
        P(num_per,:)=[E3v(1),E3v(2),U8v(1),U8v(2),0];
    end
end


if (h>0.27 && h<=0.36) %Entrance 4
    M(E1v(1),E1v(2),3)=1;
    if (o<=0.1)
        P(num_per,:)=[E4v(1),E4v(2),U10v(1),U10v(2),0];
    end
    if (o>0.1 && o<=0.2)
        P(num_per,:)=[E4v(1),E4v(2),U1v(1),U1v(2),0];
    end
    if (o>0.2 && o<=0.3)
        P(num_per,:)=[E4v(1),E4v(2),U2v(1),U2v(2),0];
    end
    if (o>0.3 && o<=0.45)
        P(num_per,:)=[E4v(1),E4v(2),U6v(1),U6v(2),0];
    end
    if (o>0.45 && o<=0.6)
        P(num_per,:)=[E4v(1),E4v(2),U9v(1),U9v(2),0];
    end
    if (o>0.6 && o<=0.8)
        P(num_per,:)=[E4v(1),E4v(2),U7v(1),U7v(2),0];
    end
    if (o>0.8)
        P(num_per,:)=[E4v(1),E4v(2),U8v(1),U8v(2),0];
    end
end

if (h>0.36 && h<=0.45) %Entrance 5
    M(E1v(1),E1v(2),3)=1;
    if (o<=0.1)
        P(num_per,:)=[E5v(1),E5v(2),U7v(1),U7v(2),0];
    end
    if (o>0.1 && o<=0.2)
        P(num_per,:)=[E5v(1),E5v(2),U3v(1),U3v(2),0];
    end
    if (o>0.2 && o<=0.3)
        P(num_per,:)=[E5v(1),E5v(2),U2v(1),U2v(2),0];
    end
    if (o>0.3 && o<=0.45)
        P(num_per,:)=[E5v(1),E5v(2),U1v(1),U1v(2),0];
    end
    if (o>0.45 && o<=0.6)
        P(num_per,:)=[E5v(1),E5v(2),U9v(1),U9v(2),0];
    end
    if (o>0.6 && o<=0.8)
        P(num_per,:)=[E5v(1),E5v(2),U10v(1),U10v(2),0];
    end
    if (o>0.8)
        P(num_per,:)=[E5v(1),E5v(2),U8v(1),U8v(2),0];
    end
end





if (h>0.45 && h<=0.54) %Entrance 6
    M(E1v(1),E1v(2),3)=1;
    if (o<=0.1)
        P(num_per,:)=[E6v(1),E6v(2),U4v(1),U4v(2),0];
    end
    if (o>0.1 && o<=0.2)
        P(num_per,:)=[E6v(1),E6v(2),U3v(1),U3v(2),0];
    end
    if (o>0.2 && o<=0.3)
        P(num_per,:)=[E6v(1),E6v(2),U2v(1),U2v(2),0];
    end
    if (o>0.3 && o<=0.45)
        P(num_per,:)=[E6v(1),E6v(2),U1v(1),U1v(2),0];
    end
    if (o>0.45 && o<=0.6)
        P(num_per,:)=[E6v(1),E6v(2),U9v(1),U9v(2),0];
    end
    if (o>0.6 && o<=0.8)
        P(num_per,:)=[E6v(1),E6v(2),U10v(1),U10v(2),0];
    end
    if (o>0.8)
        P(num_per,:)=[E6v(1),E6v(2),U8v(1),U8v(2),0];
    end
end




if (h>0.54 && h<=0.65) %Entrance 7
    M(E1v(1),E1v(2),3)=1;
    if (o<=0.1)
        P(num_per,:)=[E7v(1),E7v(2),U4v(1),U4v(2),0];
    end
    if (o>0.1 && o<=0.2)
        P(num_per,:)=[E7v(1),E7v(2),U3v(1),U3v(2),0];
    end
    if (o>0.2 && o<=0.3)
        P(num_per,:)=[E7v(1),E7v(2),U5v(1),U5v(2),0];
    end
    if (o>0.3 && o<=0.45)
        P(num_per,:)=[E7v(1),E7v(2),U2v(1),U2v(2),0];
    end
    if (o>0.45 && o<=0.6)
        P(num_per,:)=[E7v(1),E7v(2),U9v(1),U9v(2),0];
    end
    if (o>0.6 && o<=0.8)
        P(num_per,:)=[E7v(1),E7v(2),U10v(1),U10v(2),0];
    end
    if (o>0.8)
        P(num_per,:)=[E7v(1),E7v(2),U1v(1),U1v(2),0];
    end
end





if (h>0.65 && h<=0.76) %Entrance 8
    M(E1v(1),E1v(2),3)=1;
    if (o<=0.1)
        P(num_per,:)=[E8v(1),E8v(2),U4v(1),U4v(2),0];
    end
    if (o>0.1 && o<=0.2)
        P(num_per,:)=[E8v(1),E8v(2),U3v(1),U3v(2),0];
    end
    if (o>0.2 && o<=0.3)
        P(num_per,:)=[E8v(1),E8v(2),U5v(1),U5v(2),0];
    end
    if (o>0.3 && o<=0.45)
        P(num_per,:)=[E8v(1),E8v(2),U2v(1),U2v(2),0];
    end
    if (o>0.45 && o<=0.6)
        P(num_per,:)=[E8v(1),E8v(2),U6v(1),U6v(2),0];
    end
    if (o>0.6 && o<=0.8)
        P(num_per,:)=[E8v(1),E8v(2),U10v(1),U10v(2),0];
    end
    if (o>0.8)
        P(num_per,:)=[E8v(1),E8v(2),U1v(1),U1v(2),0];
    end
end




if (h>0.76 && h<=0.88) %Entrance 9
    M(E1v(1),E1v(2),3)=1;
    if (o<=0.1)
        P(num_per,:)=[E9v(1),E9v(2),U4v(1),U4v(2),0];
    end
    if (o>0.1 && o<=0.2)
        P(num_per,:)=[E9v(1),E9v(2),U3v(1),U3v(2),0];
    end
    if (o>0.2 && o<=0.3)
        P(num_per,:)=[E9v(1),E9v(2),U5v(1),U5v(2),0];
    end
    if (o>0.3 && o<=0.45)
        P(num_per,:)=[E9v(1),E9v(2),U2v(1),U2v(2),0];
    end
    if (o>0.45 && o<=0.6)
        P(num_per,:)=[E9v(1),E9v(2),U1v(1),U1v(2),0];
    end
    if (o>0.6 && o<=0.8)
        P(num_per,:)=[E9v(1),E9v(2),U7v(1),U7v(2),0];
    end
    if (o>0.8)
        P(num_per,:)=[E9v(1),E9v(2),U6v(1),U6v(2),0];
    end
end






if (h>0.88) %Entrance 10
    M(E1v(1),E1v(2),3)=1;
    if (o<=0.1)
        P(num_per,:)=[E10v(1),E10v(2),U4v(1),U4v(2),0];
    end
    if (o>0.1 && o<=0.2)
        P(num_per,:)=[E10v(1),E10v(2),U3v(1),U3v(2),0];
    end
    if (o>0.2 && o<=0.3)
        P(num_per,:)=[E10v(1),E10v(2),U5v(1),U5v(2),0];
    end
    if (o>0.3 && o<=0.45)
        P(num_per,:)=[E10v(1),E10v(2),U2v(1),U2v(2),0];
    end
    if (o>0.45 && o<=0.6)
        P(num_per,:)=[E10v(1),E10v(2),U8v(1),U8v(2),0];
    end
    if (o>0.6 && o<=0.8)
        P(num_per,:)=[E10v(1),E10v(2),U7v(1),U7v(2),0];
    end
    if (o>0.8)
        P(num_per,:)=[E10v(1),E10v(2),U6v(1),U6v(2),0];
    end
end