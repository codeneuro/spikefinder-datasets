% example matlab script for loading spikefinder data
%
% for more info see https://github.com/codeneuro/spikefinder


% load dataset
dataset = '1';
calcium_train = csvread([dataset '.train.calcium.csv'],1,0); % skip first row (column headers)
spike_train = csvread([dataset '.train.spikes.csv'],1,0);    % skip first row (column headers)

% plot example neuron
figure
n = 5;         % index of neuron
t = (0:length(calcium_train(:,n))-1)/100;     % 100Hz sampling rate, each bin 10 ms
plot(t,zscore(calcium_train(:,n)),'k')
hold on
plot(t,spike_train(:,5)-2,'r')

xlim([t(1) 400])
ylim([-2.5 7])

xlabel('Time (s)')
ylabel('Fluorescence / Spike rate')

legend('calcium','spikes')

% saving predictions
spike_pred = calcium_train;     % fill spike_pred with your own predictions
csvwrite([dataset '.train.pred.csv'], spike_pred);

