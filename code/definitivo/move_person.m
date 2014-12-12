for n=1:num_per
     if(P(n,5)==0)
        vrand = (rand + 0.5)*v;
        sx = round(ealfa(n,1)*vrand);
        sy = round(ealfa(n,2)*vrand);
        M(P(n,1),P(n,2),3) = 0;
        if ((P(n,1) + sx)>= dm || (P(n,2) + sy)>= dn || (P(n,1) + sx)<= 1  || (P(n,2) + sy)<=1)
             M(P(n,1),P(n,2),3) = 0;
             clearvars P(n);
             P(n,5)=1;
        else
             P(n,1) = P(n,1) + sx;
             P(n,2) = P(n,2) + sy;
        end

        M((P(n,1)),(P(n,2)),3) = 1;
     else
         M(P(n,1),P(n,2),3) = 0;

     end
  
end