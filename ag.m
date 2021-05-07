clc, clear, close all
rng default
global initial_flag
%% Genetic Algotithm Optimization 15 iterations
initial_flag = 0;
options = optimoptions('ga','PlotFcn',{@gaplotbestf,@gaplotdistance});
for i=1:15
 initial_flag = 0;
 % use the below for 2D function 8
 %[ga_x,ga_val,ga_exit_flag,ga_output] = ga(@(x)benchmark_func(x,8),2,options);
 % use the below for 10D function 8
  %[ga_x,ga_val,ga_exit_flag,ga_output] =ga(@(x)benchmark_func(x,8),10,options);
 % use the below for 2D function 16
 [ga_x,ga_val,ga_exit_flag,ga_output] = ga(@(x)benchmark_func(x,16),2,options);
 % use the below for 10D function 16
 % [ga_x,ga_val,ga_exit_flag,ga_output] =ga(@(x)benchmark_func(x,16),10,options);
 ga_main_x(i,:) = ga_x
 ga_main_val(i) = ga_val
 ga_main_exit_flag(i) = ga_exit_flag
 ga_main_output(i) = ga_output
 ga_output
 % save visualizations to file
 fname = sprintf('filename(%d).fig', i) ;
 savefig(fname)
end
%% GA 15 iteration measures
ga_val_max = max(ga_main_val)
ga_val_min = min(ga_main_val)
ga_val_mean = mean(ga_main_val)
ga_val_std = std(ga_main_val)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Particle Swarm Optimization 15 Iterations
options = optimoptions('particleswarm','PlotFcn',{@pswplotbestf});
%rng default
initial_flag = 0;
for i=1:15
 %use the below for 10D function 8
 %[swarm_x,swarm_val,swarm_exit_flag,swarm_output] = particleswarm(@(x)benchmark_func(x,8),2,[-100,-100],[100,100],options);
 % use the below for 2D function 8
 %[swarm_x,swarm_val,swarm_exit_flag,swarm_output] = particleswarm(@(x)benchmark_func(x,8),10,[-100,-100],[100,100],options);
 % use the below for 10D function 16
 [swarm_x,swarm_val,swarm_exit_flag,swarm_output] = particleswarm(@(x)benchmark_func(x,16),2,[-100,-100],[100,100],options);
 % use the below for 2D function 16
 %[swarm_x,swarm_val,swarm_exit_flag,swarm_output] = particleswarm(@(x)benchmark_func(x,16),10,[-100,-100],[100,100],options);
 swarm_main_x(i,:) = swarm_x
 swarm_main_val(i) = swarm_val
 swarm_main_exit_flag(i) = swarm_exit_flag
 swarm_main_output(i) = swarm_output
 swarm_output
 % save visualizations to file
 fname = sprintf('filename(%d).fig', i) ;
 savefig(fname)
end
%% Particle Swarm calculations
swarm_val_max = max(swarm_main_val)
swarm_val_min = min(swarm_main_val)
swarm_val_mean = mean(swarm_main_val)
swarm_val_std = std(swarm_main_val)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

