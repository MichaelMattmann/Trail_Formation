for j=1:dm
    for k=1:dn
        if(M(j,k,3) == 1) % if there is a person
            dG = 1/T*(G0 - M(j,k,2))*dt + I*(1 - M(j,k,2))*dt;
            M(j,k,2) = M(j,k,2) + dt*dG;
%              if ((k-1)~=0 && k~=dn && (j-1)~=0 && j~=dm) %colora dintorni
%                  M(j+1,k,2) = M(j+1,k,2) + dt*dG/2;
%                  M(j,k+1,2) = M(j,k+1,2) + dt*dG/2;
%                  M(j-1,k,2) = M(j-1,k,2) + dt*dG/2;
%                  M(j,k-1,2) = M(j,k-1,2) + dt*dG/2;
%                  M(j+1,k+1,2) = M(j+1,k+1,2) + dt*dG/3;
%                  M(j+1,k-1,2) = M(j+1,k-1,2) + dt*dG/3;
%                  M(j-1,k+1,2) = M(j-1,k+1,2) + dt*dG/3;
%                  M(j-1,k-1,2) = M(j-1,k-1,2) + dt*dG/3;
%              end
            
        else
           dG = 1/T*(G0 - M(j,k,2))*dt;
           M(j,k,2) = M(j,k,2) + dt*dG;
        end
    end
end