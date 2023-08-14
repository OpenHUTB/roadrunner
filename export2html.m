% 将该工程下的所有实时代码文件格式（.mlx）文件转成.html文件
cur_dir = pwd;

% 得到当前目录下的所有.mlx文件
all_dir = genpath(cur_dir);
all_dirs = split(all_dir, ';');
% 获取所有的目录
for i = 1 : numel(all_dirs)-1
    cur_mlx_dir = all_dirs{i};
    % 获取当前文件夹的所有.mlx文件
    cur_all_mlx = dir(fullfile(cur_mlx_dir, '*.mlx'));
    for j = 1 : numel(cur_all_mlx)  
        cur_mlx_struct = cur_all_mlx(j);
        cur_mlx_name = cur_mlx_struct.name;
        % 原始.mlx文件的路径
        cur_mlx_path = fullfile(cur_mlx_struct.folder, cur_mlx_name);
        % 生成的网页文件的路径
        dst_html_path = fullfile(cur_mlx_struct.folder, ...
            [cur_mlx_name(1:length(cur_mlx_name)-3), 'html']);
        % 导出网页格式到和.mlx相同的文件夹
        export(cur_mlx_path, [cur_mlx_path(1:length(cur_mlx_path)-3) '.html']);
    end
end
% all_dirs = all_dirs{1 : numel(all_dirs)-1};




%% 将该工程所有的翻译结果单独部署到软件中
% 使用https://github.com/OpenHUTB/matlab进行部署则不需要单独部署
