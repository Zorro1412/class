load examgrades
x = grades(:,1);
pd = fitdist(x,'Normal');
x = -3:.1:3;
y = normpdf(x,0,1);
plot(x,y)

pd = makedist('Normal');
x = -3:.1:3;
p = cdf(pd,x);
plot(x,p)

a = 100;
b = 5;
x = 250:750;
y_gam = gampdf(x,a,b);
mu = a*b;
sigma = sqrt(a*b^2);
y_norm = normpdf(x,mu,sigma);
plot(x,y_gam,'-',x,y_norm,'-.')
title('Gamma and Normal pdfs')
xlabel('Observation')
ylabel('Probability Density')
legend('Gamma Distribution','Normal Distribution')

pd = makedist('Lognormal','mu',5,'sigma',2);
mean(pd)
rng('default');  % For reproducibility
x = random(pd,10000,1);
logx = log(x);
m = mean(logx);
histfit(logx)

pd_normal = fitdist(logx,'Normal');
x = -5:0.1:5;
y1 = tpdf(x,5);
y2 = tpdf(x,15);
z = normpdf(x,0,1);
plot(x,y1,'g-.',x,y2,'m--',x,z,'r-')
legend('Student''s t Distribution with \nu=5', ...
    'Student''s t Distribution with \nu=15', ...
    'Standard Normal Distribution','Location','best')
xlabel('Observation')
ylabel('Probability Density')
title('Student''s t and Standard Normal pdfs')
