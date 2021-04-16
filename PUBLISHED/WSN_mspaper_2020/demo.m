%reference:
%PAPER here

%% load WSN iteration1
load('ms_WSN1.mat')
whos trainedCNN

%% specify dir of images to predict (e.g. WSN naive to these)
location = uigetdir([],'select WSN image directory');
%make imDS
imDS = imageDatastore(location,...
    'IncludeSubfolders',true,... 
    'LabelSource','foldernames',... 
    'FileExtensions',{'.png'});

%% classify
[predTest,scoresTest] = classify(trainedCNN,imDS,"ExecutionEnvironment",'auto');

%% performance
accuracyTest = sum(predTest == imDS.Labels)/numel(imDS.Labels);
fprintf('macro-Accuracy on test set= %.2f%%\n',accuracyTest*100)
testError = mean(predTest ~= imDS.Labels);
disp("Test error(allclass): " + testError*100 + "%")

%% plot
x = reordercats(predTest);
y = countcats(x);
figure
histogram(x)
hold on
histogram(imDS.Labels)
hold off
legend({'WSN','manual'})
ylabel('class counts')