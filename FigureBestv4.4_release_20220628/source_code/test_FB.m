close all
%-------------------------------------------------
figure
x = linspace(1,5,30);
plot(x,x,...
    x,x.^1.4,...
    x,x.^1.6,...
    x,x.^2)
%-------------------------------------------------
figure
subplot(2,2,1)
bar([1 3 4;2 4 2; 3 5 1]);

subplot(2,2,2)
h = stem(x(1:2:end),sin(x(1:2:end)));

subplot(2,2,3)
x = linspace(1,5,15);
plot(x,x,...
    x,x.^1.4,...
    x,x.^1.6,...
    x,x.^2,...
    x,x.^2.4)

subplot(2,2,4)
scatter(randn(30,1),randn(30,1))
hold on
scatter(randn(30,1)+2,randn(30,1)+2)

%-------------------------------------------------
figure
subplot(221)
imagesc(peaks);
subplot(222)
surf(peaks);
subplot(223)
surfc(peaks);
subplot(224)
contour(peaks);

%-------------------------------------------------
figure
subplot(211)
x = linspace(1,10,20);
y = sin(x);
errorbar(x,y,rand(1,length(x)))
hold on
errorbar(x+2,y+3,rand(1,length(x)))

subplot(212)
x = randn(30,4)*4;
boxplot(x)

%-------------------------------------------------
figure
x = randn(10,11)+4;
boxplot(x)

%-------------------------------------------------
figure
subplot(3,3,[1 2 4 5])
bar([1 3 4;2 4 2; 3 5 1]);

subplot(3,3,3)
x = randn(30,4)*4;
bar([1 3 4;2 4 2; 3 5 1]);


subplot(3,3,6)
plot(magic(3))


subplot(3,3,7)
scatter(randn(15,1),randn(15,1))
hold on
scatter(randn(15,1)+2,randn(15,1)+2)

subplot(3,3,8)
x = linspace(1,10,10);
y = sin(x);
errorbar(x,y,rand(1,length(x)))
hold on
errorbar(x+2,y+3,rand(1,length(x)))

subplot(3,3,9)
x = linspace(1,6,30);
h = stem(x(1:3:end),sin(x(1:3:end)));


