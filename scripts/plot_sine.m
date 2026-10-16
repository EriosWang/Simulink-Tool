function plot_sine()
% PLOT_SINE 绘制一个正弦波，用于验证 MATLAB 环境是否正常
%
% 用法：在 MATLAB 命令窗口直接输入
%     plot_sine
%
% 这个脚本的作用是"能跑通就说明环境没问题"，
% 你可以拿它测试刚才配置的 Git 流程：改一改参数，提交，推送。

    t = linspace(0, 2*pi, 1000);
    y = sin(t);

    figure('Name', '正弦波示例', 'NumberTitle', 'off');
    plot(t, y, 'LineWidth', 1.5);
    grid on;
    xlabel('t (rad)');
    ylabel('sin(t)');
    title('正弦波示例');

    fprintf('正弦波绘制完成，共 %d 个点。\n', numel(t));
end
