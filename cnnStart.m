function cnnStart()
	% Load raw and trace data
	stackFolder = '/zdata/manuel/data/cortex/20121215T164136/';
	load([stackFolder 'parameter.mat']);
	
	% Set up class objects
	runSetting = train([100 100 100], '/zdata/manuel/results/CNNtrain/debug/', 1e4, [1e-6 1e-6 1e-6 1e-6 1e-6], [1e-8 1e-8 1e-8 1e-8 1e-8]);
	runSetting.debug = true;
	runSetting.actvtClass = @single;
	cnet = cnn(4,[10 10 10 10],[21 21 11], runSetting);
	cnet = cnet.init;
	
	% Train CNN
	cnet.learn(stacks, settings);
end
