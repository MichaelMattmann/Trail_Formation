h = rand;
o = rand;
num_per= num_per +1;

if (h<=0.5) %Entrance 1
    M(E1v(1),E1v(2),3)=1;
    P(num_per,:)=[E1v(1),E1v(2),U2v(1),U2v(2),0]; %Exit 2
end

if (h>0.5) %Entrance 2
    M(E2v(1),E2v(2),3)=1;
    P(num_per,:)=[E2v(1),E2v(2),U1v(1),U1v(2),0]; %Exit 1
end