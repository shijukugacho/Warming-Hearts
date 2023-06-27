% File name: Warming_Hearts

%% Part 1: Welcome message

% Prints welcome message to screen
fprintf('Welcome to ''Warming Hearts''\n\n');

%% Part 2: Generate background

% Set the background color to emerald
background_color = [0 0.7 0.3];
set(gcf,'color',background_color);

% Generate random numbers to create the background snow effect
num_flakes = 2000; 
flake_color = [1 1 1];
flake_size  = 4;
flake_pos = [rand(num_flakes, 1)*1000 rand(num_flakes, 1)*600];

% Draw the snowflake
for i = 1:num_flakes
    hold on
    plot(flake_pos(i,1), flake_pos(i,2), '.', 'Markersize', flake_size, ...
        'MarkerEdgeColor', flake_color, 'MarkerFaceColor', flake_color);
end

%% Part 3: Print heart

% Set the x- and y-values for the heart
x = 0:0.1:2.1; 
y = sqrt(2 - (abs(x - 1)).^2);

% Make the heart a mirrored image
x = [x fliplr(x(1:end-1))];
y = [y -fliplr(y(1:end-1))];

% Draw the heart and set the line width
line_width = 4;
plot(x, y, 'b', 'LineWidth', line_width);

%% Part 4: Generate title

% Create and format the title
title_string = 'Warming Hearts';
title_string = upper(title_string);
title_color = [255 0 155]/255;
title('\fontsize{30} \color[rgb]{%f, %f, %f} %s', ...
    title_color, title_string);

%% Part 5: Print text

% Direct user to the command window
message1 = 'Press any key to start warming hearts!';
title_pos = [150 350];
text(title_pos(1), title_pos(2), message1, ...
    'FontSize', 20, 'Color', [1 1 1]);

% Wait for user to press any key
waitforbuttonpress

%% Part 6: Add hearts

% Set the figure background color
fig_background = [0 0 0];
set(gcf,'color',fig_background);

% Set the parameters for the hearts
heart_size = 1.5;
num_hearts = 2000;
heart_opacity = 0.05;
heart_color = [1 0 0];

% Draw the hearts
for i = 1:num_hearts
    x_pos = randi([0 1000]);
    y_pos = randi([0 600]);
    patch(x + x_pos, y + y_pos, heart_color, 'FaceAlpha', ...
        heart_opacity, 'EdgeColor', 'none', 'FaceColor', ...
        heart_color);
end

%% Part 7: Print text

% Display a congratulatory message
message2 = 'Congratulations, you warmed 2000 hearts!';
title_pos = [110 200];
text(title_pos(1), title_pos(2), message2, ...
    'FontSize', 20, 'Color', [1 1 1]);