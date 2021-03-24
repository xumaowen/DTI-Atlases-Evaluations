clear all;
clc;
sub052=importdata('R-IFO/sub-052_right-fiber-IFO_fa__Clean.txt');
sub052_tensor=sub052(16839:54297,:);
sub083=importdata('R-IFO/sub-083_right-fiber-IFO_fa__Clean.txt');
sub083_tensor=sub083(16839:54297,:);
sub328=importdata('R-IFO/sub-328_right-fiber-IFO_fa__Clean.txt');
sub328_tensor=sub328(16839:54297,:);
sub329=importdata('R-IFO/sub-329_right-fiber-IFO_fa__Clean.txt');
sub329_tensor=sub329(16839:54297,:);
sub354=importdata('R-IFO/sub-354_right-fiber-IFO_fa__Clean.txt');
sub354_tensor=sub354(16839:54297,:);
sub383=importdata('R-IFO/sub-383_right-fiber-IFO_fa__Clean.txt');
sub383_tensor=sub383(16839:54297,:);
sub386=importdata('R-IFO/sub-386_right-fiber-IFO_fa__Clean.txt');
sub386_tensor=sub386(16839:54297,:);
sub396=importdata('R-IFO/sub-396_right-fiber-IFO_fa__Clean.txt');
sub396_tensor=sub396(16839:54297,:);
sub438=importdata('R-IFO/sub-438_right-fiber-IFO_fa__Clean.txt');
sub438_tensor=sub438(16839:54297,:);
sub439=importdata('R-IFO/sub-439_right-fiber-IFO_fa__Clean.txt');
sub439_tensor=sub439(16839:54297,:);
template=importdata('R-IFO/template_right-fiber-IFO_fa__Clean.txt');
template_tensor=template(16839:54297,:);
mse052=mean((sub052_tensor(:)-template_tensor(:)).^2);
mse083=mean((sub083_tensor(:)-template_tensor(:)).^2);
mse328=mean((sub328_tensor(:)-template_tensor(:)).^2);
mse329=mean((sub329_tensor(:)-template_tensor(:)).^2);
mse354=mean((sub383_tensor(:)-template_tensor(:)).^2);
mse383=mean((sub383_tensor(:)-template_tensor(:)).^2);
mse386=mean((sub386_tensor(:)-template_tensor(:)).^2);
mse396=mean((sub396_tensor(:)-template_tensor(:)).^2);
mse438=mean((sub438_tensor(:)-template_tensor(:)).^2);
mse439=mean((sub439_tensor(:)-template_tensor(:)).^2);
MSEa=[mse052 mse083 mse328 mse329 mse354 mse383 mse386 mse396 mse438 mse439];
MSE=(mse052+mse083+mse328+mse329+mse354+mse383+mse386+mse396+mse438+mse439)/10;
RMSE=(sqrt(mse052)+sqrt(mse083)+sqrt(mse328)+sqrt(mse329)+sqrt(mse354)+sqrt(mse383)+sqrt(mse386)+sqrt(mse396)+sqrt(mse438)+sqrt(mse439))/10;
MSEa
MSE
RMSE