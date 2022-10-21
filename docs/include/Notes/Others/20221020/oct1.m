clc,clear

deltaPhi=pi;
Phix=0;
Phiy=Phix+deltaPhi;
Ex0=2;
Ey0=1;
omega=1;
c=1;
k=omega/c;
z=0:0.1:10;
z0=zeros(size(z));
P=[];

for t=0:0.1:20
  Ex=Ex0*cos(k*z-omega*t+Phix);
  Ey=Ey0*cos(k*z-omega*t+Phiy);
  %Vecx=[z,Ex,z0];
  %Vecy=[z,z0,Ey];
  %Veck=[z,z0,z0];
  %VecE=[0,0,0; 0,Ex(1),Ey(1)];
  P=[P;0,Ex(1),Ey(1)];
  %plot3(Vecx,Vecy);
  plot3(z,Ex,z0,...
    z,z0,Ey,...
    z,z0,z0,...
    [0,0],[0,Ex(1)],[0,Ey(1)],...
    P(:,1),P(:,2),P(:,3));
  pause(0.01);
end
