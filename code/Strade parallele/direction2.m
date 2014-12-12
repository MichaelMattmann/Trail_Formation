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
       
        [fy,fx]=gradient(M(:,:,4));  % gradient of the potential matrix
for n=1:num_per  % for all peoples
    if (P(n,5)==0)  % peoples that are not "cancelled" 
        gradnorm = ((fx(P(n,1),P(n,2)))^2 + (fy(P(n,1),P(n,2)))^2)^(1/2);
        
        distmeta=((P(n,3) - P(n,1))^2 + (P(n,4) - P(n,2))^2)^(1/2); %distance from target
        
        if (distmeta ~= 0)
        
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