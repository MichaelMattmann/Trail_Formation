h = rand;
o = rand;
num_per= num_per +1;

if (h<=0.1) %Entrata 1
    M(E1v(1),E1v(2),3)=1;
    if (o<=0.11) %Uscita 2
        P(num_per,:)=[E1v(1),E1v(2),U2v(1),U2v(2),0];
    end
    if (o>0.11 && o<=0.22) %Uscita 3
        P(num_per,:)=[E1v(1),E1v(2),U3v(1),U3v(2),0];
    end
    if (o>0.22 && o<=0.33) %Uscita 4
        P(num_per,:)=[E1v(1),E1v(2),U4v(1),U4v(2),0];
    end
    if (o>0.33 && o<=0.44) %Uscita 5
        P(num_per,:)=[E1v(1),E1v(2),U5v(1),U5v(2),0];
    end
    if (o>0.44 && o<=0.55) %Uscita 6
        P(num_per,:)=[E1v(1),E1v(2),U6v(1),U6v(2),0];
    end
    if (o>0.55 && o<=0.66) %Uscita 7
        P(num_per,:)=[E1v(1),E1v(2),U7v(1),U7v(2),0];
    end
    if (o>0.66 && o<=0.77) %Uscita 8
        P(num_per,:)=[E1v(1),E1v(2),U8v(1),U8v(2),0];
    end
    if (o>0.77 && o<=0.88) %Uscita 9
        P(num_per,:)=[E1v(1),E1v(2),U9v(1),U9v(2),0];
    end
    if (o>0.88) %Uscita 10
        P(num_per,:)=[E1v(1),E1v(2),U10v(1),U10v(2),0];
    end
end


if (h>0.1 && h<=0.2) %Entrata 2
    M(E2v(1),E2v(2),3)=1;
    if (o<=0.11) %Uscita 1
        P(num_per,:)=[E2v(1),E2v(2),U1v(1),U1v(2),0];
    end
    if (o>0.11 && o<=0.22) %Uscita 3
        P(num_per,:)=[E2v(1),E2v(2),U3v(1),U3v(2),0];
    end
    if (o>0.22 && o<=0.33) %Uscita 4
        P(num_per,:)=[E2v(1),E2v(2),U4v(1),U4v(2),0];
    end
    if (o>0.33 && o<=0.44) %Uscita 5
        P(num_per,:)=[E2v(1),E2v(2),U5v(1),U5v(2),0];
    end
    if (o>0.44 && o<=0.55) %Uscita 6
        P(num_per,:)=[E2v(1),E2v(2),U6v(1),U6v(2),0];
    end
    if (o>0.55 && o<=0.66) %Uscita 7
        P(num_per,:)=[E2v(1),E2v(2),U7v(1),U7v(2),0];
    end
    if (o>0.66 && o<=0.77) %Uscita 8
        P(num_per,:)=[E2v(1),E2v(2),U8v(1),U8v(2),0];
    end
    if (o>0.77 && o<=0.88) %Uscita 9
        P(num_per,:)=[E2v(1),E2v(2),U9v(1),U9v(2),0];
    end
    if (o>0.88) %Uscita 10
        P(num_per,:)=[E2v(1),E2v(2),U10v(1),U10v(2),0];
    end
end

if (h>0.2 && h<=0.3) %Entrata 3
    M(E3v(1),E3v(2),3)=1;
    if (o<=0.11) %Uscita 1
        P(num_per,:)=[E3v(1),E3v(2),U1v(1),U1v(2),0];
    end
    if (o>0.11 && o<=0.22) %Uscita 2
        P(num_per,:)=[E3v(1),E3v(2),U2v(1),U2v(2),0];
    end
    if (o>0.22 && o<=0.33) %Uscita 4
        P(num_per,:)=[E3v(1),E3v(2),U4v(1),U4v(2),0];
    end
    if (o>0.33 && o<=0.44) %Uscita 5
        P(num_per,:)=[E3v(1),E3v(2),U5v(1),U5v(2),0];
    end
    if (o>0.44 && o<=0.55) %Uscita 6
        P(num_per,:)=[E3v(1),E3v(2),U6v(1),U6v(2),0];
    end
    if (o>0.55 && o<=0.66) %Uscita 7
        P(num_per,:)=[E3v(1),E3v(2),U7v(1),U7v(2),0];
    end
    if (o>0.66 && o<=0.77) %Uscita 8
        P(num_per,:)=[E3v(1),E3v(2),U8v(1),U8v(2),0];
    end
    if (o>0.77 && o<=0.88) %Uscita 9
        P(num_per,:)=[E3v(1),E3v(2),U9v(1),U9v(2),0];
    end
    if (o>0.88) %Uscita 10
        P(num_per,:)=[E3v(1),E3v(2),U10v(1),U10v(2),0];
    end
end

if (h>0.3 && h<=0.4) %Entrata 4
    M(E4v(1),E4v(2),3)=1;
    if (o<=0.11) %Uscita 1
        P(num_per,:)=[E4v(1),E4v(2),U1v(1),U1v(2),0];
    end
    if (o>0.11 && o<=0.22) %Uscita 2
        P(num_per,:)=[E4v(1),E4v(2),U2v(1),U2v(2),0];
    end
    if (o>0.22 && o<=0.33) %Uscita 3
        P(num_per,:)=[E4v(1),E4v(2),U3v(1),U3v(2),0];
    end
    if (o>0.33 && o<=0.44) %Uscita 5
        P(num_per,:)=[E4v(1),E4v(2),U5v(1),U5v(2),0];
    end
    if (o>0.44 && o<=0.55) %Uscita 6
        P(num_per,:)=[E4v(1),E4v(2),U6v(1),U6v(2),0];
    end
    if (o>0.55 && o<=0.66) %Uscita 7
        P(num_per,:)=[E4v(1),E4v(2),U7v(1),U7v(2),0];
    end
    if (o>0.66 && o<=0.77) %Uscita 8
        P(num_per,:)=[E4v(1),E4v(2),U8v(1),U8v(2),0];
    end
    if (o>0.77 && o<=0.88) %Uscita 9
        P(num_per,:)=[E4v(1),E4v(2),U9v(1),U9v(2),0];
    end
    if (o>0.88) %Uscita 10
        P(num_per,:)=[E4v(1),E4v(2),U10v(1),U10v(2),0];
    end
end

if (h>0.4 && h<=0.5) %Entrata 5
    M(E5v(1),E5v(2),3)=1;
    if (o<=0.11) %Uscita 1
        P(num_per,:)=[E5v(1),E5v(2),U1v(1),U1v(2),0];
    end
    if (o>0.11 && o<=0.22) %Uscita 2
        P(num_per,:)=[E5v(1),E5v(2),U2v(1),U2v(2),0];
    end
    if (o>0.22 && o<=0.33) %Uscita 3
        P(num_per,:)=[E5v(1),E5v(2),U3v(1),U3v(2),0];
    end
    if (o>0.33 && o<=0.44) %Uscita 4
        P(num_per,:)=[E5v(1),E5v(2),U4v(1),U4v(2),0];
    end
    if (o>0.44 && o<=0.55) %Uscita 6
        P(num_per,:)=[E5v(1),E5v(2),U6v(1),U6v(2),0];
    end
    if (o>0.55 && o<=0.66) %Uscita 7
        P(num_per,:)=[E5v(1),E5v(2),U7v(1),U7v(2),0];
    end
    if (o>0.66 && o<=0.77) %Uscita 8
        P(num_per,:)=[E5v(1),E5v(2),U8v(1),U8v(2),0];
    end
    if (o>0.77 && o<=0.88) %Uscita 9
        P(num_per,:)=[E5v(1),E5v(2),U9v(1),U9v(2),0];
    end
    if (o>0.88) %Uscita 10
        P(num_per,:)=[E5v(1),E5v(2),U10v(1),U10v(2),0];
    end
end

if (h>0.5 && h<=0.6) %Entrata 6
    M(E6v(1),E6v(2),3)=1;
    if (o<=0.11) %Uscita 1
        P(num_per,:)=[E6v(1),E6v(2),U1v(1),U1v(2),0];
    end
    if (o>0.11 && o<=0.22) %Uscita 2
        P(num_per,:)=[E6v(1),E6v(2),U2v(1),U2v(2),0];
    end
    if (o>0.22 && o<=0.33) %Uscita 3
        P(num_per,:)=[E6v(1),E6v(2),U3v(1),U3v(2),0];
    end
    if (o>0.33 && o<=0.44) %Uscita 4
        P(num_per,:)=[E6v(1),E6v(2),U4v(1),U4v(2),0];
    end
    if (o>0.44 && o<=0.55) %Uscita 5
        P(num_per,:)=[E6v(1),E6v(2),U5v(1),U5v(2),0];
    end
    if (o>0.55 && o<=0.66) %Uscita 7
        P(num_per,:)=[E6v(1),E6v(2),U7v(1),U7v(2),0];
    end
    if (o>0.66 && o<=0.77) %Uscita 8
        P(num_per,:)=[E6v(1),E6v(2),U8v(1),U8v(2),0];
    end
    if (o>0.77 && o<=0.88) %Uscita 9
        P(num_per,:)=[E6v(1),E6v(2),U9v(1),U9v(2),0];
    end
    if (o>0.88) %Uscita 10
        P(num_per,:)=[E6v(1),E6v(2),U10v(1),U10v(2),0];
    end
end

if (h>0.6 && h<=0.7) %Entrata 7
    M(E7v(1),E7v(2),3)=1;
    if (o<=0.11) %Uscita 1
        P(num_per,:)=[E7v(1),E7v(2),U1v(1),U1v(2),0];
    end
    if (o>0.11 && o<=0.22) %Uscita 2
        P(num_per,:)=[E7v(1),E7v(2),U2v(1),U2v(2),0];
    end
    if (o>0.22 && o<=0.33) %Uscita 3
        P(num_per,:)=[E7v(1),E7v(2),U3v(1),U3v(2),0];
    end
    if (o>0.33 && o<=0.44) %Uscita 4
        P(num_per,:)=[E7v(1),E7v(2),U4v(1),U4v(2),0];
    end
    if (o>0.44 && o<=0.55) %Uscita 5
        P(num_per,:)=[E7v(1),E7v(2),U5v(1),U5v(2),0];
    end
    if (o>0.55 && o<=0.66) %Uscita 6
        P(num_per,:)=[E7v(1),E7v(2),U6v(1),U6v(2),0];
    end
    if (o>0.66 && o<=0.77) %Uscita 8
        P(num_per,:)=[E7v(1),E7v(2),U8v(1),U8v(2),0];
    end
    if (o>0.77 && o<=0.88) %Uscita 9
        P(num_per,:)=[E7v(1),E7v(2),U9v(1),U9v(2),0];
    end
    if (o>0.88) %Uscita 10
        P(num_per,:)=[E7v(1),E7v(2),U10v(1),U10v(2),0];
    end
end

if (h>0.7 && h<=0.8) %Entrata 8
    M(E8v(1),E8v(2),3)=1;
    if (o<=0.11) %Uscita 1
        P(num_per,:)=[E8v(1),E8v(2),U1v(1),U1v(2),0];
    end
    if (o>0.11 && o<=0.22) %Uscita 2
        P(num_per,:)=[E8v(1),E8v(2),U2v(1),U2v(2),0];
    end
    if (o>0.22 && o<=0.33) %Uscita 3
        P(num_per,:)=[E8v(1),E8v(2),U3v(1),U3v(2),0];
    end
    if (o>0.33 && o<=0.44) %Uscita 4
        P(num_per,:)=[E8v(1),E8v(2),U4v(1),U4v(2),0];
    end
    if (o>0.44 && o<=0.55) %Uscita 5
        P(num_per,:)=[E8v(1),E8v(2),U5v(1),U5v(2),0];
    end
    if (o>0.55 && o<=0.66) %Uscita 6
        P(num_per,:)=[E8v(1),E8v(2),U6v(1),U6v(2),0];
    end
    if (o>0.66 && o<=0.77) %Uscita 7
        P(num_per,:)=[E8v(1),E8v(2),U7v(1),U7v(2),0];
    end
    if (o>0.77 && o<=0.88) %Uscita 9
        P(num_per,:)=[E8v(1),E8v(2),U9v(1),U9v(2),0];
    end
    if (o>0.88) %Uscita 10
        P(num_per,:)=[E8v(1),E8v(2),U10v(1),U10v(2),0];
    end
end

if (h>0.8 && h<=0.9) %Entrata 9
    M(E9v(1),E9v(2),3)=1;
    if (o<=0.11) %Uscita 1
        P(num_per,:)=[E9v(1),E9v(2),U1v(1),U1v(2),0];
    end
    if (o>0.11 && o<=0.22) %Uscita 2
        P(num_per,:)=[E9v(1),E9v(2),U2v(1),U2v(2),0];
    end
    if (o>0.22 && o<=0.33) %Uscita 3
        P(num_per,:)=[E9v(1),E9v(2),U3v(1),U3v(2),0];
    end
    if (o>0.33 && o<=0.44) %Uscita 4
        P(num_per,:)=[E9v(1),E9v(2),U4v(1),U4v(2),0];
    end
    if (o>0.44 && o<=0.55) %Uscita 5
        P(num_per,:)=[E9v(1),E9v(2),U5v(1),U5v(2),0];
    end
    if (o>0.55 && o<=0.66) %Uscita 6
        P(num_per,:)=[E9v(1),E9v(2),U6v(1),U6v(2),0];
    end
    if (o>0.66 && o<=0.77) %Uscita 7
        P(num_per,:)=[E9v(1),E9v(2),U7v(1),U7v(2),0];
    end
    if (o>0.77 && o<=0.88) %Uscita 8
        P(num_per,:)=[E9v(1),E9v(2),U8v(1),U8v(2),0];
    end
    if (o>0.88) %Uscita 10
        P(num_per,:)=[E9v(1),E9v(2),U10v(1),U10v(2),0];
    end
end

if (h>0.8 && h<=0.9) %Entrata 10
    M(E10v(1),E10v(2),3)=1;
    if (o<=0.11) %Uscita 1
        P(num_per,:)=[E10v(1),E10v(2),U1v(1),U1v(2),0];
    end
    if (o>0.11 && o<=0.22) %Uscita 2
        P(num_per,:)=[E10v(1),E10v(2),U2v(1),U2v(2),0];
    end
    if (o>0.22 && o<=0.33) %Uscita 3
        P(num_per,:)=[E10v(1),E10v(2),U3v(1),U3v(2),0];
    end
    if (o>0.33 && o<=0.44) %Uscita 4
        P(num_per,:)=[E10v(1),E10v(2),U4v(1),U4v(2),0];
    end
    if (o>0.44 && o<=0.55) %Uscita 5
        P(num_per,:)=[E10v(1),E10v(2),U5v(1),U5v(2),0];
    end
    if (o>0.55 && o<=0.66) %Uscita 6
        P(num_per,:)=[E10v(1),E10v(2),U6v(1),U6v(2),0];
    end
    if (o>0.66 && o<=0.77) %Uscita 7
        P(num_per,:)=[E10v(1),E10v(2),U7v(1),U7v(2),0];
    end
    if (o>0.77 && o<=0.88) %Uscita 8
        P(num_per,:)=[E10v(1),E10v(2),U8v(1),U8v(2),0];
    end
    if (o>0.88) %Uscita 9
        P(num_per,:)=[E10v(1),E10v(2),U9v(1),U9v(2),0];
    end
end
