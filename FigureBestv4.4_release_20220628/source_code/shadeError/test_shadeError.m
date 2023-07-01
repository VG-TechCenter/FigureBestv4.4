% %示例数据
% ---------------------
% x - 行向量
% y - 数值矩阵
% x的列数 == y的列数
x = 0:0.2:5;
y_mean = sin(x);
y = repmat(y_mean,20,1) + randn(20,1).^0.5;
y = y.^1.4;
% %示例语句
% ---------------------
figure
shadeError(x,y,{@mean,@std},'lineprops','--r','transparent',1,'patchSaturation',0.2)
hold on

