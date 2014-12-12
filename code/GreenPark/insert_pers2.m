    h = rand;
    o = rand;
    num_per= num_per +1;

    if (h<=0.166) %Entrata 1
        M(E1v(1),E1v(2),3)=1;
        if (o<=0.2) %Uscita 2
            P(num_per,:)=[E1v(1),E1v(2),U2v(1),U2v(2),0];
        end
        if (o>0.2 && o<=0.4) %Uscita 3
            P(num_per,:)=[E1v(1),E1v(2),U3v(1),U3v(2),0];
        end
        if (o>0.4 && o<=0.6) %Uscita 4
            P(num_per,:)=[E1v(1),E1v(2),U4v(1),U4v(2),0];
        end
        if (o>0.6 && o<=0.8) %Uscita 5
            P(num_per,:)=[E1v(1),E1v(2),U5v(1),U5v(2),0];
        end
        if (o>0.8) %Uscita 6
            P(num_per,:)=[E1v(1),E1v(2),U6v(1),U6v(2),0];
        end
    end


    if (h>0.166 && h<=0.333) %Entrata 2
        M(E2v(1),E2v(2),3)=1;
        if (o<=0.25) %Uscita 1
            P(num_per,:)=[E2v(1),E2v(2),U1v(1),U1v(2),0];
        end
        %     if (o<=0.33) %Uscita 3
        %         P(num_per,:)=[E2v(1),E2v(2),U3v(1),U3v(2),0];
        %     end
        if (o>0.25 && o<=0.5) %Uscita 4
            P(num_per,:)=[E2v(1),E2v(2),U4v(1),U4v(2),0];
        end
        if (o>0.5 && o<= 0.75) %Uscita 5
            P(num_per,:)=[E2v(1),E2v(2),U5v(1),U5v(2),0];
        end
        if (o>0.75) %Uscita 6
            P(num_per,:)=[E2v(1),E2v(2),U6v(1),U6v(2),0];
        end
    end

    if (h>0.333 && h<=0.5) %Entrata 3
        M(E3v(1),E3v(2),3)=1;
        if (o<=0.25) %Uscita 1
            P(num_per,:)=[E3v(1),E3v(2),U1v(1),U1v(2),0];
        end
        %     if (o>0.2 && o<=0.4) %Uscita 2
        %         P(num_per,:)=[E3v(1),E3v(2),U2v(1),U2v(2),0];
        %     end
        if (o>0.25 && o<=0.5) %Uscita 4
            P(num_per,:)=[E3v(1),E3v(2),U4v(1),U4v(2),0];
        end
        if (o>0.5 && o<=0.75) %Uscita 5
            P(num_per,:)=[E3v(1),E3v(2),U5v(1),U5v(2),0];
        end
        if (o>0.75) %Uscita 6
            P(num_per,:)=[E3v(1),E3v(2),U6v(1),U6v(2),0];
        end
    end

    if (h>0.5 && h<=0.666) %Entrata 4
        M(E4v(1),E4v(2),3)=1;
        if (o<=0.2) %Uscita 1
            P(num_per,:)=[E4v(1),E4v(2),U1v(1),U1v(2),0];
        end
        if (o>0.2 && o<=0.4) %Uscita 2
            P(num_per,:)=[E4v(1),E4v(2),U2v(1),U2v(2),0];
        end
        if (o>0.4 && o<=0.6) %Uscita 3
            P(num_per,:)=[E4v(1),E4v(2),U3v(1),U3v(2),0];
        end
        if (o>0.6 && o<=0.8) %Uscita 5
            P(num_per,:)=[E4v(1),E4v(2),U5v(1),U5v(2),0];
        end
        if (o>0.8) %Uscita 6
            P(num_per,:)=[E4v(1),E4v(2),U6v(1),U6v(2),0];
        end
    end

    if (h>0.666 && h<=0.833) %Entrata 5
        M(E5v(1),E5v(2),3)=1;
        if (o<=0.25) %Uscita 1
            P(num_per,:)=[E5v(1),E5v(2),U1v(1),U1v(2),0];
        end
        if (o>0.25 && o<=0.5) %Uscita 2
            P(num_per,:)=[E5v(1),E5v(2),U2v(1),U2v(2),0];
        end
        if (o>0.5 && o<=0.75) %Uscita 3
            P(num_per,:)=[E5v(1),E5v(2),U3v(1),U3v(2),0];
        end
        if (o>0.75) %Uscita 4
            P(num_per,:)=[E5v(1),E5v(2),U4v(1),U4v(2),0];
        end
%         if (o>0.8) %Uscita 6
%             P(num_per,:)=[E5v(1),E5v(2),U6v(1),U6v(2),0];
%         end
    end

    if (h>0.833) %Entrata 6
        M(E6v(1),E6v(2),3)=1;
        if (o<=0.25) %Uscita 1
            P(num_per,:)=[E6v(1),E6v(2),U1v(1),U1v(2),0];
        end
        if (o>0.25 && o<=0.5) %Uscita 2
            P(num_per,:)=[E6v(1),E6v(2),U2v(1),U2v(2),0];
        end
        if (o>0.5 && o<=0.75) %Uscita 3
            P(num_per,:)=[E6v(1),E6v(2),U3v(1),U3v(2),0];
        end
        if (o>0.75) %Uscita 4
            P(num_per,:)=[E6v(1),E6v(2),U4v(1),U4v(2),0];
        end
%         if (o>0.8) %Uscita 5
%             P(num_per,:)=[E6v(1),E6v(2),U5v(1),U5v(2),0];
%         end
    end