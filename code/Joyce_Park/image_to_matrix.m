b=imread('Joyce_Park.jpg');
a=b(:,:,1);
%clearvars b;
dimensione=size(a);
for x=1:dimensione(1);
    for y=1:dimensione(2);
        if a(x,y,1)<10;
            a(x,y,1)=10000000;
        else
            a(x,y,1)=0;
        end
    end
end

