% % FigureBest start
% @图通道
% 支持 macos,windows,matlab after or 2016a
disp('FB is starting...')

%% encoding check
% ---------------------------
% PASS: UTF8 OR GBK
% WARNING: 'OTHERS'
DefaultCharacterSet = feature('DefaultCharacterSet');
locale = feature('locale');
encoding = locale.encoding;
if ~strcmp(DefaultCharacterSet,'GBK') | ~strcmp(encoding,'GBK')
    disp(['[DefaultCharacterSet]' DefaultCharacterSet '; ' '[encoding]' encoding])
    disp('Chaos character MAY occur if were NOT GBK, while main functions wonnot be affected!')
    disp('Please change the encoding IF possible')
end

%% set path
% ---------------------------
folderOfThis = fileparts(mfilename('fullpath')); % get the folder of current .m
addpath(genpath(folderOfThis)); % add path and subpath (temporary)
savepath % add path and subpath (permanent)
cd(folderOfThis) % change current folder
clear folderOfThis

%% start fb
% ---------------------------
% % 如何安装启动fb?
% 第一步：解压代码包
% 第二步：将所有文件放置在合适的不常动的位置；确保拥有读写权限；否则会存在功能隐患
% 第三步：运行fb.m函数（第一次启动时）
% 第四步：之后启动，满足第二步的情况下，输入fb即可快速启动
% 上方内容主要用于自动设置路径
%
% % 提升速度与排查问题?
% 第一次运行之后，可以注释上方set path内容提升启动速度/不自动切换路径；
% 为了避免运行有卡顿或者java类报错，请合理增大java堆内存,在：预设-常规-java堆内存
% 如果无法写入，切换current folder到桌面
% 每次替换许可证后将上方注释打开一次
% 遇到问题通常打开set path注释都可以解决
FigureBest_v4
