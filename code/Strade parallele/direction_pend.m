%for n=1:num_per
     %if (P(n,5)==0)
         for aa=1 : dm   % for goes trough the matrix
             for bb=1:dn
                pottot=0; %sum of all potential with respect to point [aa bb]
                for q=1:dm
                    for w=1:dn
                        if (M(q,w,2)~=0)
                            pot = M(q,w,2)*exp(-((aa-q)^2 + (bb-w)^2)^(1/2)/sigma);%potential of the ground in [q w] respect to [aa bb]
                            pottot=pottot+ pot; %sum of all potentials
                        end
                    end
                end
                
                pottot = pottot/(dm*dn); %avarage
                M(aa,bb,4)=pottot; %putting the potential in the matrix crated for it
                
             end
         end
        
for n=1:num_per  % for all peoples
    if (P(n,5)==0)  % peoples that are not "cancelled" 
        
        pot_per = M(:,:,4);
        
        for q=1:dm
            for w=1:dn
                dist = ((P(n,1)-q)^2 + (P(n,2)-w)^2)^(1/2); %distance
                if (dist ~=0)
                    pend = (M(q,w,1) - M(P(n,1),P(n,2),1))/dist; %slope
                    if (pend < 0)
                        pot_per(q,w) = M(q,w,4) + 0.2*exp(1/pend);
                    elseif (pend > 0)
                        pot_per(q,w) = M(q,w,4) + 0.2*exp(-1/pend);
                    else
                        pot_per(q,w) = M(q,w,4);
                    end
                else
                    pot_per(q,w) = M(q,w,4);
                end
            end
        end
        
        [fy,fx]=gradient(pot_per);  % gradient of the potential matrix
        
        gradnorm = ((fx(P(n,1),P(n,2)))^2 + (fy(P(n,1),P(n,2)))^2)^(1/2);
        
        distmeta=((P(n,3) - P(n,1))^2 + (P(n,4) - P(n,2))^2)^(1/2); %distance from target
        
        if (distmeta >= 2)
        
            if (gradnorm ~= 0)
                ex = (P(n,3) - P(n,1))/distmeta + fx(P(n,1),P(n,2))*l/gradnorm;
                ey = (P(n,4) - P(n,2))/distmeta + fy(P(n,1),P(n,2))*l/gradnorm;
            else
                ex = (P(n,3) - P(n,1))/distmeta;
                ey = (P(n,4) - P(n,2))/distmeta;
            end
        norm = (ex^2 + ey^2)^(1/2);
        else   
              M(P(n,1),P(n,2),3) = 0;
              clearvars P(n);
              P(n,5)=1;
        end

            ealfa(n,:) = [ex/norm,ey/norm]; % direction vector 
      
    end
end