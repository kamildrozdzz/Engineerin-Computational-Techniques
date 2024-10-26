clc; clear vars;

A = (rand(3,3)-0.5)*10;
disp(det(A));
B = gram_schmidt(A);


for k = 1:3
    plot3([0,B(k,1)],[0,B(k,2)],[0,B(k,3)]);
    hold on;
end

disp(sum(B(1,:).*B(2,:)));
disp(sum(B(1,:).*B(3,:)));
disp(sum(B(2,:).*B(3,:)));