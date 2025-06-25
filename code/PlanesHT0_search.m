function [coord, maxCoord]=PlanesHT0_search(X)

rho= max(sqrt(X(:,1).^2+X(:,2).^2+X(:,3).^2));
rho_min= min(sqrt(X(:,1).^2+X(:,2).^2+X(:,3).^2));
c=(pi*2)/180;
step=((rho+rho_min)/2)*sin(2*c);

a=0:step:rho;
b=0:3:357;
b=(pi*b)/180;
c=0:2:178;
c=(pi*c)/180;

soglia=sqrt(X(:,1).^2+X(:,2).^2+X(:,3).^2);
soglia(find(soglia==0))=10^(-2);

Na=numel(a);
Nb=numel(b);
Nc=numel(c);

H=zeros(Na,Nb,Nc);

size(H)

for j=1:Na
    for k=1:Nb
        for h=1:Nc
            H(j,k,h)=numel(find(abs(a(j)-X(:,1)*cos(b(k))*sin(c(h))-X(:,2)*sin(c(h))*sin(b(k))-X(:,3)*cos(c(h)))<soglia/500));
        end
    end
end

maxCoord=max(max(max(H)));

coord=[];
for j=1:Na
    for k=1:Nb
        for h=1:Nc
            if  H(j,k,h)==maxCoord
                coord=[coord; a(j) b(k) c(h)];
            end            
        end
    end
end


end