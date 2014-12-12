h = rand;
o = rand;
num_per= num_per +1;

if (h<=0.25) %Entrance 1
    M(E1v(1),E1v(2),3)=1;
    if (o<=0.33) %Exit 2
        P(num_per,:)=[E1v(1),E1v(2),U2v(1),U2v(2),0];
    end
    if (o>0.33 && o<=0.66) %Exit 3
        P(num_per,:)=[E1v(1),E1v(2),U3v(1),U3v(2),0];
    end
    if (o>0.66) %Exit 4
        P(num_per,:)=[E1v(1),E1v(2),U4v(1),U4v(2),0];
    end
end


if (h>0.25 && h<=0.5) %Entrance 2
    M(E2v(1),E2v(2),3)=1;
    if (o<=0.33) %Exit 1
        P(num_per,:)=[E2v(1),E2v(2),U1v(1),U1v(2),0];
    end
    if (o>0.33 && o<=0.66) %Exit 3
        P(num_per,:)=[E2v(1),E2v(2),U3v(1),U3v(2),0];
    end
    if (o>0.66) %Exit 4
        P(num_per,:)=[E2v(1),E2v(2),U4v(1),U4v(2),0];
    end
end

if (h>0.5 && h<=0.75) %Entrance 3
    M(E3v(1),E3v(2),3)=1;
    if (o<=0.33) %Exit 1
        P(num_per,:)=[E3v(1),E3v(2),U1v(1),U1v(2),0];
    end
    if (o>0.33 && o<=0.66) %Exit 2
        P(num_per,:)=[E3v(1),E3v(2),U2v(1),U2v(2),0];
    end
    if (o>0.66) %Exit 4
        P(num_per,:)=[E3v(1),E3v(2),U4v(1),U4v(2),0];
    end
end

if (h>0.75) %Entrance 4
    M(E4v(1),E4v(2),3)=1;
    if (o<=0.33) %Exit 1
        P(num_per,:)=[E4v(1),E4v(2),U1v(1),U1v(2),0];
    end
    if (o>0.33 && o<=0.66) %Exit 2
        P(num_per,:)=[E4v(1),E4v(2),U2v(1),U2v(2),0];
    end
    if (o>0.66) %Exit 3
        P(num_per,:)=[E4v(1),E4v(2),U3v(1),U3v(2),0];
    end
end
