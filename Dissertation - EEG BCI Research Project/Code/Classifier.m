%% Tbl_A160108_four1
data = Tbl_A160108_four1;

Mdl_logistic = fitcdiscr(data,'target_var','discrimType','pseudoLinear');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
logistic_accuracy = cvtrainAccuracy;

Mdl_tree = fitctree(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
tree_accuracy = cvtrainAccuracy;

Mdl_ensemble = fitcensemble(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
ensemble_accuracy = cvtrainAccuracy;

Mdl_SVM = fitcsvm(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
SVM_accuracy = cvtrainAccuracy;

Mdl_KNN = fitcknn(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
KNN_accuracy = cvtrainAccuracy;

rng("default") % For reproducibility of the partition
c = cvpartition(Tbl_A160108_four1.target_var,"Holdout",0.10);
trainingIndices = training(c); % Indices for the training set
testIndices = test(c); % Indices for the test set
Train = Tbl_A160108_four1(trainingIndices,:);
Test = Tbl_A160108_four1(testIndices,:);
Mdl = fitcnet(Train,"target_var");
NN_accuracy = 1 - loss(Mdl,Test,"target_var", ...
    "LossFun","classiferror");

A160108_four1_accuracy = [logistic_accuracy, tree_accuracy, ...
    ensemble_accuracy, SVM_accuracy, KNN_accuracy];

%% Tbl_A160108_four2
data = Tbl_A160108_four2;

Mdl_logistic = fitcdiscr(data,'target_var','discrimType','pseudoLinear');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
logistic_accuracy = cvtrainAccuracy;

Mdl_tree = fitctree(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
tree_accuracy = cvtrainAccuracy;

Mdl_ensemble = fitcensemble(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
ensemble_accuracy = cvtrainAccuracy;

Mdl_SVM = fitcsvm(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
SVM_accuracy = cvtrainAccuracy;

Mdl_KNN = fitcknn(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
KNN_accuracy = cvtrainAccuracy;

rng("default") % For reproducibility of the partition
c = cvpartition(Tbl_A160108_four1.target_var,"Holdout",0.10);
trainingIndices = training(c); % Indices for the training set
testIndices = test(c); % Indices for the test set
Train = Tbl_A160108_four1(trainingIndices,:);
Test = Tbl_A160108_four1(testIndices,:);
Mdl = fitcnet(Train,"target_var");
NN_accuracy = 1 - loss(Mdl,Test,"target_var", ...
    "LossFun","classiferror");

A160108_four2_accuracy = [logistic_accuracy, tree_accuracy, ...
    ensemble_accuracy, SVM_accuracy, KNN_accuracy];

%% Tbl_A160108_four3
data = Tbl_A160108_four3;

Mdl_logistic = fitcdiscr(data,'target_var','discrimType','pseudoLinear');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
logistic_accuracy = cvtrainAccuracy;

Mdl_tree = fitctree(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
tree_accuracy = cvtrainAccuracy;

Mdl_ensemble = fitcensemble(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
ensemble_accuracy = cvtrainAccuracy;

Mdl_SVM = fitcsvm(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
SVM_accuracy = cvtrainAccuracy;

Mdl_KNN = fitcknn(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
KNN_accuracy = cvtrainAccuracy;

rng("default") % For reproducibility of the partition
c = cvpartition(Tbl_A160108_four1.target_var,"Holdout",0.10);
trainingIndices = training(c); % Indices for the training set
testIndices = test(c); % Indices for the test set
Train = Tbl_A160108_four1(trainingIndices,:);
Test = Tbl_A160108_four1(testIndices,:);
Mdl = fitcnet(Train,"target_var");
NN_accuracy = 1 - loss(Mdl,Test,"target_var", ...
    "LossFun","classiferror");

A160108_four3_accuracy = [logistic_accuracy, tree_accuracy, ...
    ensemble_accuracy, SVM_accuracy, KNN_accuracy];

%% Tbl_A160108_four4
data = Tbl_A160108_four4;

Mdl_logistic = fitcdiscr(data,'target_var','discrimType','pseudoLinear');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
logistic_accuracy = cvtrainAccuracy;

Mdl_tree = fitctree(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
tree_accuracy = cvtrainAccuracy;

Mdl_ensemble = fitcensemble(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
ensemble_accuracy = cvtrainAccuracy;

Mdl_SVM = fitcsvm(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
SVM_accuracy = cvtrainAccuracy;

Mdl_KNN = fitcknn(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
KNN_accuracy = cvtrainAccuracy;

rng("default") % For reproducibility of the partition
c = cvpartition(Tbl_A160108_four1.target_var,"Holdout",0.10);
trainingIndices = training(c); % Indices for the training set
testIndices = test(c); % Indices for the test set
Train = Tbl_A160108_four1(trainingIndices,:);
Test = Tbl_A160108_four1(testIndices,:);
Mdl = fitcnet(Train,"target_var");
NN_accuracy = 1 - loss(Mdl,Test,"target_var", ...
    "LossFun","classiferror");

A160108_four4_accuracy = [logistic_accuracy, tree_accuracy, ...
    ensemble_accuracy, SVM_accuracy, KNN_accuracy];

%% Tbl_A160108_four5
data = Tbl_A160108_four5;

Mdl_logistic = fitcdiscr(data,'target_var','discrimType','pseudoLinear');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
logistic_accuracy = cvtrainAccuracy;

Mdl_tree = fitctree(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
tree_accuracy = cvtrainAccuracy;

Mdl_ensemble = fitcensemble(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
ensemble_accuracy = cvtrainAccuracy;

Mdl_SVM = fitcsvm(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
SVM_accuracy = cvtrainAccuracy;

Mdl_KNN = fitcknn(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
KNN_accuracy = cvtrainAccuracy;

rng("default") % For reproducibility of the partition
c = cvpartition(Tbl_A160108_four1.target_var,"Holdout",0.10);
trainingIndices = training(c); % Indices for the training set
testIndices = test(c); % Indices for the test set
Train = Tbl_A160108_four1(trainingIndices,:);
Test = Tbl_A160108_four1(testIndices,:);
Mdl = fitcnet(Train,"target_var");
NN_accuracy = 1 - loss(Mdl,Test,"target_var", ...
    "LossFun","classiferror");

A160108_four5_accuracy = [logistic_accuracy, tree_accuracy, ...
    ensemble_accuracy, SVM_accuracy, KNN_accuracy];

%% Tbl_A160108_four6
data = Tbl_A160108_four6;

Mdl_logistic = fitcdiscr(data,'target_var','discrimType','pseudoLinear');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
logistic_accuracy = cvtrainAccuracy;

Mdl_tree = fitctree(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
tree_accuracy = cvtrainAccuracy;

Mdl_ensemble = fitcensemble(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
ensemble_accuracy = cvtrainAccuracy;

Mdl_SVM = fitcsvm(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
SVM_accuracy = cvtrainAccuracy;

Mdl_KNN = fitcknn(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
KNN_accuracy = cvtrainAccuracy;

rng("default") % For reproducibility of the partition
c = cvpartition(Tbl_A160108_four1.target_var,"Holdout",0.10);
trainingIndices = training(c); % Indices for the training set
testIndices = test(c); % Indices for the test set
Train = Tbl_A160108_four1(trainingIndices,:);
Test = Tbl_A160108_four1(testIndices,:);
Mdl = fitcnet(Train,"target_var");
NN_accuracy = 1 - loss(Mdl,Test,"target_var", ...
    "LossFun","classiferror");

A160108_four6_accuracy = [logistic_accuracy, tree_accuracy, ...
    ensemble_accuracy, SVM_accuracy, KNN_accuracy];

%% Tbl_A160108_four7
data = Tbl_A160108_four7;

Mdl_logistic = fitcdiscr(data,'target_var','discrimType','pseudoLinear');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
logistic_accuracy = cvtrainAccuracy;

Mdl_tree = fitctree(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
tree_accuracy = cvtrainAccuracy;

Mdl_ensemble = fitcensemble(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
ensemble_accuracy = cvtrainAccuracy;

Mdl_SVM = fitcsvm(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
SVM_accuracy = cvtrainAccuracy;

Mdl_KNN = fitcknn(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
KNN_accuracy = cvtrainAccuracy;

rng("default") % For reproducibility of the partition
c = cvpartition(Tbl_A160108_four1.target_var,"Holdout",0.10);
trainingIndices = training(c); % Indices for the training set
testIndices = test(c); % Indices for the test set
Train = Tbl_A160108_four1(trainingIndices,:);
Test = Tbl_A160108_four1(testIndices,:);
Mdl = fitcnet(Train,"target_var");
NN_accuracy = 1 - loss(Mdl,Test,"target_var", ...
    "LossFun","classiferror");

A160108_four7_accuracy = [logistic_accuracy, tree_accuracy, ...
    ensemble_accuracy, SVM_accuracy, KNN_accuracy];

%% Tbl_A160108_four8
data = Tbl_A160108_four8;

Mdl_logistic = fitcdiscr(data,'target_var','discrimType','pseudoLinear');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
logistic_accuracy = cvtrainAccuracy;

Mdl_tree = fitctree(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
tree_accuracy = cvtrainAccuracy;

Mdl_ensemble = fitcensemble(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
ensemble_accuracy = cvtrainAccuracy;

Mdl_SVM = fitcsvm(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
SVM_accuracy = cvtrainAccuracy;

Mdl_KNN = fitcknn(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
KNN_accuracy = cvtrainAccuracy;

rng("default") % For reproducibility of the partition
c = cvpartition(Tbl_A160108_four1.target_var,"Holdout",0.10);
trainingIndices = training(c); % Indices for the training set
testIndices = test(c); % Indices for the test set
Train = Tbl_A160108_four1(trainingIndices,:);
Test = Tbl_A160108_four1(testIndices,:);
Mdl = fitcnet(Train,"target_var");
NN_accuracy = 1 - loss(Mdl,Test,"target_var", ...
    "LossFun","classiferror");

A160108_four8_accuracy = [logistic_accuracy, tree_accuracy, ...
    ensemble_accuracy, SVM_accuracy, KNN_accuracy];

%% Tbl_A160108_poly1
data = Tbl_A160108_poly1;

Mdl_logistic = fitcdiscr(data,'target_var','discrimType','pseudoLinear');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
logistic_accuracy = cvtrainAccuracy;

Mdl_tree = fitctree(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
tree_accuracy = cvtrainAccuracy;

Mdl_ensemble = fitcensemble(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
ensemble_accuracy = cvtrainAccuracy;

Mdl_SVM = fitcsvm(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
SVM_accuracy = cvtrainAccuracy;

Mdl_KNN = fitcknn(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
KNN_accuracy = cvtrainAccuracy;

rng("default") % For reproducibility of the partition
c = cvpartition(Tbl_A160108_four1.target_var,"Holdout",0.10);
trainingIndices = training(c); % Indices for the training set
testIndices = test(c); % Indices for the test set
Train = Tbl_A160108_four1(trainingIndices,:);
Test = Tbl_A160108_four1(testIndices,:);
Mdl = fitcnet(Train,"target_var");
NN_accuracy = 1 - loss(Mdl,Test,"target_var", ...
    "LossFun","classiferror");

A160108_poly1_accuracy = [logistic_accuracy, tree_accuracy, ...
    ensemble_accuracy, SVM_accuracy, KNN_accuracy];

%% Tbl_A160108_poly2
data = Tbl_A160108_poly2;

Mdl_logistic = fitcdiscr(data,'target_var','discrimType','pseudoLinear');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
logistic_accuracy = cvtrainAccuracy;

Mdl_tree = fitctree(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
tree_accuracy = cvtrainAccuracy;

Mdl_ensemble = fitcensemble(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
ensemble_accuracy = cvtrainAccuracy;

Mdl_SVM = fitcsvm(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
SVM_accuracy = cvtrainAccuracy;

Mdl_KNN = fitcknn(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
KNN_accuracy = cvtrainAccuracy;

rng("default") % For reproducibility of the partition
c = cvpartition(Tbl_A160108_four1.target_var,"Holdout",0.10);
trainingIndices = training(c); % Indices for the training set
testIndices = test(c); % Indices for the test set
Train = Tbl_A160108_four1(trainingIndices,:);
Test = Tbl_A160108_four1(testIndices,:);
Mdl = fitcnet(Train,"target_var");
NN_accuracy = 1 - loss(Mdl,Test,"target_var", ...
    "LossFun","classiferror");

A160108_poly2_accuracy = [logistic_accuracy, tree_accuracy, ...
    ensemble_accuracy, SVM_accuracy, KNN_accuracy];

%% Tbl_A160108_poly3
data = Tbl_A160108_poly3;

Mdl_logistic = fitcdiscr(data,'target_var','discrimType','pseudoLinear');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
logistic_accuracy = cvtrainAccuracy;

Mdl_tree = fitctree(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
tree_accuracy = cvtrainAccuracy;

Mdl_ensemble = fitcensemble(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
ensemble_accuracy = cvtrainAccuracy;

Mdl_SVM = fitcsvm(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
SVM_accuracy = cvtrainAccuracy;

Mdl_KNN = fitcknn(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
KNN_accuracy = cvtrainAccuracy;

rng("default") % For reproducibility of the partition
c = cvpartition(Tbl_A160108_four1.target_var,"Holdout",0.10);
trainingIndices = training(c); % Indices for the training set
testIndices = test(c); % Indices for the test set
Train = Tbl_A160108_four1(trainingIndices,:);
Test = Tbl_A160108_four1(testIndices,:);
Mdl = fitcnet(Train,"target_var");
NN_accuracy = 1 - loss(Mdl,Test,"target_var", ...
    "LossFun","classiferror");

A160108_poly3_accuracy = [logistic_accuracy, tree_accuracy, ...
    ensemble_accuracy, SVM_accuracy, KNN_accuracy];

%% Tbl_A160108_poly4
data = Tbl_A160108_poly4;

Mdl_logistic = fitcdiscr(data,'target_var','discrimType','pseudoLinear');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
logistic_accuracy = cvtrainAccuracy;

Mdl_tree = fitctree(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
tree_accuracy = cvtrainAccuracy;

Mdl_ensemble = fitcensemble(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
ensemble_accuracy = cvtrainAccuracy;

Mdl_SVM = fitcsvm(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
SVM_accuracy = cvtrainAccuracy;

Mdl_KNN = fitcknn(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
KNN_accuracy = cvtrainAccuracy;

rng("default") % For reproducibility of the partition
c = cvpartition(Tbl_A160108_four1.target_var,"Holdout",0.10);
trainingIndices = training(c); % Indices for the training set
testIndices = test(c); % Indices for the test set
Train = Tbl_A160108_four1(trainingIndices,:);
Test = Tbl_A160108_four1(testIndices,:);
Mdl = fitcnet(Train,"target_var");
NN_accuracy = 1 - loss(Mdl,Test,"target_var", ...
    "LossFun","classiferror");

A160108_poly4_accuracy = [logistic_accuracy, tree_accuracy, ...
    ensemble_accuracy, SVM_accuracy, KNN_accuracy];

%% Tbl_A160108_poly5
data = Tbl_A160108_poly5;

Mdl_logistic = fitcdiscr(data,'target_var','discrimType','pseudoLinear');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
logistic_accuracy = cvtrainAccuracy;

Mdl_tree = fitctree(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
tree_accuracy = cvtrainAccuracy;

Mdl_ensemble = fitcensemble(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
ensemble_accuracy = cvtrainAccuracy;

Mdl_SVM = fitcsvm(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
SVM_accuracy = cvtrainAccuracy;

Mdl_KNN = fitcknn(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
KNN_accuracy = cvtrainAccuracy;

rng("default") % For reproducibility of the partition
c = cvpartition(Tbl_A160108_four1.target_var,"Holdout",0.10);
trainingIndices = training(c); % Indices for the training set
testIndices = test(c); % Indices for the test set
Train = Tbl_A160108_four1(trainingIndices,:);
Test = Tbl_A160108_four1(testIndices,:);
Mdl = fitcnet(Train,"target_var");
NN_accuracy = 1 - loss(Mdl,Test,"target_var", ...
    "LossFun","classiferror");

A160108_poly5_accuracy = [logistic_accuracy, tree_accuracy, ...
    ensemble_accuracy, SVM_accuracy, KNN_accuracy];

%% Tbl_A160108_poly6
data = Tbl_A160108_poly6;

Mdl_logistic = fitcdiscr(data,'target_var','discrimType','pseudoLinear');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
logistic_accuracy = cvtrainAccuracy;

Mdl_tree = fitctree(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
tree_accuracy = cvtrainAccuracy;

Mdl_ensemble = fitcensemble(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
ensemble_accuracy = cvtrainAccuracy;

Mdl_SVM = fitcsvm(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
SVM_accuracy = cvtrainAccuracy;

Mdl_KNN = fitcknn(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
KNN_accuracy = cvtrainAccuracy;

rng("default") % For reproducibility of the partition
c = cvpartition(Tbl_A160108_four1.target_var,"Holdout",0.10);
trainingIndices = training(c); % Indices for the training set
testIndices = test(c); % Indices for the test set
Train = Tbl_A160108_four1(trainingIndices,:);
Test = Tbl_A160108_four1(testIndices,:);
Mdl = fitcnet(Train,"target_var");
NN_accuracy = 1 - loss(Mdl,Test,"target_var", ...
    "LossFun","classiferror");

A160108_poly6_accuracy = [logistic_accuracy, tree_accuracy, ...
    ensemble_accuracy, SVM_accuracy, KNN_accuracy];

%% Tbl_A160108_poly7
data = Tbl_A160108_poly7;

Mdl_logistic = fitcdiscr(data,'target_var','discrimType','pseudoLinear');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
logistic_accuracy = cvtrainAccuracy;

Mdl_tree = fitctree(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
tree_accuracy = cvtrainAccuracy;

Mdl_ensemble = fitcensemble(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
ensemble_accuracy = cvtrainAccuracy;

Mdl_SVM = fitcsvm(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
SVM_accuracy = cvtrainAccuracy;

Mdl_KNN = fitcknn(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
KNN_accuracy = cvtrainAccuracy;

rng("default") % For reproducibility of the partition
c = cvpartition(Tbl_A160108_four1.target_var,"Holdout",0.10);
trainingIndices = training(c); % Indices for the training set
testIndices = test(c); % Indices for the test set
Train = Tbl_A160108_four1(trainingIndices,:);
Test = Tbl_A160108_four1(testIndices,:);
Mdl = fitcnet(Train,"target_var");
NN_accuracy = 1 - loss(Mdl,Test,"target_var", ...
    "LossFun","classiferror");

A160108_poly7_accuracy = [logistic_accuracy, tree_accuracy, ...
    ensemble_accuracy, SVM_accuracy, KNN_accuracy];

%% Tbl_A160108_poly8
data = Tbl_A160108_poly8;

Mdl_logistic = fitcdiscr(data,'target_var','discrimType','pseudoLinear');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
logistic_accuracy = cvtrainAccuracy;

Mdl_tree = fitctree(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
tree_accuracy = cvtrainAccuracy;

Mdl_ensemble = fitcensemble(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
ensemble_accuracy = cvtrainAccuracy;

Mdl_SVM = fitcsvm(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
SVM_accuracy = cvtrainAccuracy;

Mdl_KNN = fitcknn(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
KNN_accuracy = cvtrainAccuracy;

rng("default") % For reproducibility of the partition
c = cvpartition(Tbl_A160108_four1.target_var,"Holdout",0.10);
trainingIndices = training(c); % Indices for the training set
testIndices = test(c); % Indices for the test set
Train = Tbl_A160108_four1(trainingIndices,:);
Test = Tbl_A160108_four1(testIndices,:);
Mdl = fitcnet(Train,"target_var");
NN_accuracy = 1 - loss(Mdl,Test,"target_var", ...
    "LossFun","classiferror");

A160108_poly8_accuracy = [logistic_accuracy, tree_accuracy, ...
    ensemble_accuracy, SVM_accuracy, KNN_accuracy];

%% Tbl_A160108_poly9
data = Tbl_A160108_poly9;

Mdl_logistic = fitcdiscr(data,'target_var','discrimType','pseudoLinear');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
logistic_accuracy = cvtrainAccuracy;

Mdl_tree = fitctree(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
tree_accuracy = cvtrainAccuracy;

Mdl_ensemble = fitcensemble(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
ensemble_accuracy = cvtrainAccuracy;

Mdl_SVM = fitcsvm(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
SVM_accuracy = cvtrainAccuracy;

Mdl_KNN = fitcknn(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
KNN_accuracy = cvtrainAccuracy;

rng("default") % For reproducibility of the partition
c = cvpartition(Tbl_A160108_four1.target_var,"Holdout",0.10);
trainingIndices = training(c); % Indices for the training set
testIndices = test(c); % Indices for the test set
Train = Tbl_A160108_four1(trainingIndices,:);
Test = Tbl_A160108_four1(testIndices,:);
Mdl = fitcnet(Train,"target_var");
NN_accuracy = 1 - loss(Mdl,Test,"target_var", ...
    "LossFun","classiferror");

A160108_poly9_accuracy = [logistic_accuracy, tree_accuracy, ...
    ensemble_accuracy, SVM_accuracy, KNN_accuracy];

%% Tbl_A160108_sin1
data = Tbl_A160108_sin1;

Mdl_logistic = fitcdiscr(data,'target_var','discrimType','pseudoLinear');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
logistic_accuracy = cvtrainAccuracy;

Mdl_tree = fitctree(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
tree_accuracy = cvtrainAccuracy;

Mdl_ensemble = fitcensemble(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
ensemble_accuracy = cvtrainAccuracy;

Mdl_SVM = fitcsvm(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
SVM_accuracy = cvtrainAccuracy;

Mdl_KNN = fitcknn(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
KNN_accuracy = cvtrainAccuracy;

rng("default") % For reproducibility of the partition
c = cvpartition(Tbl_A160108_four1.target_var,"Holdout",0.10);
trainingIndices = training(c); % Indices for the training set
testIndices = test(c); % Indices for the test set
Train = Tbl_A160108_four1(trainingIndices,:);
Test = Tbl_A160108_four1(testIndices,:);
Mdl = fitcnet(Train,"target_var");
NN_accuracy = 1 - loss(Mdl,Test,"target_var", ...
    "LossFun","classiferror");

A160108_sin1_accuracy = [logistic_accuracy, tree_accuracy, ...
    ensemble_accuracy, SVM_accuracy, KNN_accuracy];

%% Tbl_A160108_sin2
data = Tbl_A160108_sin2;

Mdl_logistic = fitcdiscr(data,'target_var','discrimType','pseudoLinear');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
logistic_accuracy = cvtrainAccuracy;

Mdl_tree = fitctree(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
tree_accuracy = cvtrainAccuracy;

Mdl_ensemble = fitcensemble(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
ensemble_accuracy = cvtrainAccuracy;

Mdl_SVM = fitcsvm(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
SVM_accuracy = cvtrainAccuracy;

Mdl_KNN = fitcknn(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
KNN_accuracy = cvtrainAccuracy;

rng("default") % For reproducibility of the partition
c = cvpartition(Tbl_A160108_four1.target_var,"Holdout",0.10);
trainingIndices = training(c); % Indices for the training set
testIndices = test(c); % Indices for the test set
Train = Tbl_A160108_four1(trainingIndices,:);
Test = Tbl_A160108_four1(testIndices,:);
Mdl = fitcnet(Train,"target_var");
NN_accuracy = 1 - loss(Mdl,Test,"target_var", ...
    "LossFun","classiferror");

A160108_sin2_accuracy = [logistic_accuracy, tree_accuracy, ...
    ensemble_accuracy, SVM_accuracy, KNN_accuracy];

%% Tbl_A160108_sin3
data = Tbl_A160108_sin3;

Mdl_logistic = fitcdiscr(data,'target_var','discrimType','pseudoLinear');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
logistic_accuracy = cvtrainAccuracy;

Mdl_tree = fitctree(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
tree_accuracy = cvtrainAccuracy;

Mdl_ensemble = fitcensemble(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
ensemble_accuracy = cvtrainAccuracy;

Mdl_SVM = fitcsvm(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
SVM_accuracy = cvtrainAccuracy;

Mdl_KNN = fitcknn(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
KNN_accuracy = cvtrainAccuracy;

rng("default") % For reproducibility of the partition
c = cvpartition(Tbl_A160108_four1.target_var,"Holdout",0.10);
trainingIndices = training(c); % Indices for the training set
testIndices = test(c); % Indices for the test set
Train = Tbl_A160108_four1(trainingIndices,:);
Test = Tbl_A160108_four1(testIndices,:);
Mdl = fitcnet(Train,"target_var");
NN_accuracy = 1 - loss(Mdl,Test,"target_var", ...
    "LossFun","classiferror");

A160108_sin3_accuracy = [logistic_accuracy, tree_accuracy, ...
    ensemble_accuracy, SVM_accuracy, KNN_accuracy];

%% Tbl_A160108_sin4
data = Tbl_A160108_sin4;

Mdl_logistic = fitcdiscr(data,'target_var','discrimType','pseudoLinear');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
logistic_accuracy = cvtrainAccuracy;

Mdl_tree = fitctree(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
tree_accuracy = cvtrainAccuracy;

Mdl_ensemble = fitcensemble(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
ensemble_accuracy = cvtrainAccuracy;

Mdl_SVM = fitcsvm(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
SVM_accuracy = cvtrainAccuracy;

Mdl_KNN = fitcknn(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
KNN_accuracy = cvtrainAccuracy;

rng("default") % For reproducibility of the partition
c = cvpartition(Tbl_A160108_four1.target_var,"Holdout",0.10);
trainingIndices = training(c); % Indices for the training set
testIndices = test(c); % Indices for the test set
Train = Tbl_A160108_four1(trainingIndices,:);
Test = Tbl_A160108_four1(testIndices,:);
Mdl = fitcnet(Train,"target_var");
NN_accuracy = 1 - loss(Mdl,Test,"target_var", ...
    "LossFun","classiferror");

A160108_sin4_accuracy = [logistic_accuracy, tree_accuracy, ...
    ensemble_accuracy, SVM_accuracy, KNN_accuracy];

%% Tbl_A160108_sin5
data = Tbl_A160108_sin5;

Mdl_logistic = fitcdiscr(data,'target_var','discrimType','pseudoLinear');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
logistic_accuracy = cvtrainAccuracy;

Mdl_tree = fitctree(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
tree_accuracy = cvtrainAccuracy;

Mdl_ensemble = fitcensemble(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
ensemble_accuracy = cvtrainAccuracy;

Mdl_SVM = fitcsvm(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
SVM_accuracy = cvtrainAccuracy;

Mdl_KNN = fitcknn(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
KNN_accuracy = cvtrainAccuracy;

rng("default") % For reproducibility of the partition
c = cvpartition(Tbl_A160108_four1.target_var,"Holdout",0.10);
trainingIndices = training(c); % Indices for the training set
testIndices = test(c); % Indices for the test set
Train = Tbl_A160108_four1(trainingIndices,:);
Test = Tbl_A160108_four1(testIndices,:);
Mdl = fitcnet(Train,"target_var");
NN_accuracy = 1 - loss(Mdl,Test,"target_var", ...
    "LossFun","classiferror");

A160108_sin5_accuracy = [logistic_accuracy, tree_accuracy, ...
    ensemble_accuracy, SVM_accuracy, KNN_accuracy];

%% Tbl_A160108_sin6
data = Tbl_A160108_sin6;

Mdl_logistic = fitcdiscr(data,'target_var','discrimType','pseudoLinear');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
logistic_accuracy = cvtrainAccuracy;

Mdl_tree = fitctree(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
tree_accuracy = cvtrainAccuracy;

Mdl_ensemble = fitcensemble(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
ensemble_accuracy = cvtrainAccuracy;

Mdl_SVM = fitcsvm(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
SVM_accuracy = cvtrainAccuracy;

Mdl_KNN = fitcknn(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
KNN_accuracy = cvtrainAccuracy;

rng("default") % For reproducibility of the partition
c = cvpartition(Tbl_A160108_four1.target_var,"Holdout",0.10);
trainingIndices = training(c); % Indices for the training set
testIndices = test(c); % Indices for the test set
Train = Tbl_A160108_four1(trainingIndices,:);
Test = Tbl_A160108_four1(testIndices,:);
Mdl = fitcnet(Train,"target_var");
NN_accuracy = 1 - loss(Mdl,Test,"target_var", ...
    "LossFun","classiferror");

A160108_sin6_accuracy = [logistic_accuracy, tree_accuracy, ...
    ensemble_accuracy, SVM_accuracy, KNN_accuracy];

%% Tbl_A160108_varm1
data = Tbl_A160108_varm1;

Mdl_logistic = fitcdiscr(data,'target_var','discrimType','pseudoLinear');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
logistic_accuracy = cvtrainAccuracy;

Mdl_tree = fitctree(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
tree_accuracy = cvtrainAccuracy;

Mdl_ensemble = fitcensemble(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
ensemble_accuracy = cvtrainAccuracy;

Mdl_SVM = fitcsvm(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
SVM_accuracy = cvtrainAccuracy;

Mdl_KNN = fitcknn(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
KNN_accuracy = cvtrainAccuracy;

rng("default") % For reproducibility of the partition
c = cvpartition(Tbl_A160108_four1.target_var,"Holdout",0.10);
trainingIndices = training(c); % Indices for the training set
testIndices = test(c); % Indices for the test set
Train = Tbl_A160108_four1(trainingIndices,:);
Test = Tbl_A160108_four1(testIndices,:);
Mdl = fitcnet(Train,"target_var");
NN_accuracy = 1 - loss(Mdl,Test,"target_var", ...
    "LossFun","classiferror");

A160108_varm1_accuracy = [logistic_accuracy, tree_accuracy, ...
    ensemble_accuracy, SVM_accuracy, KNN_accuracy];

%% Tbl_A160108_varm2
data = Tbl_A160108_varm2;

Mdl_logistic = fitcdiscr(data,'target_var','discrimType','pseudoLinear');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
logistic_accuracy = cvtrainAccuracy;

Mdl_tree = fitctree(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
tree_accuracy = cvtrainAccuracy;

Mdl_ensemble = fitcensemble(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
ensemble_accuracy = cvtrainAccuracy;

Mdl_SVM = fitcsvm(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
SVM_accuracy = cvtrainAccuracy;

Mdl_KNN = fitcknn(data,'target_var');
CVMdl = crossval(Mdl_logistic);
cvtrainError = kfoldLoss(CVMdl);
cvtrainAccuracy = 1-cvtrainError;
KNN_accuracy = cvtrainAccuracy;

rng("default") % For reproducibility of the partition
c = cvpartition(Tbl_A160108_four1.target_var,"Holdout",0.10);
trainingIndices = training(c); % Indices for the training set
testIndices = test(c); % Indices for the test set
Train = Tbl_A160108_four1(trainingIndices,:);
Test = Tbl_A160108_four1(testIndices,:);
Mdl = fitcnet(Train,"target_var");
NN_accuracy = 1 - loss(Mdl,Test,"target_var", ...
    "LossFun","classiferror");

A160108_varm2_accuracy = [logistic_accuracy, tree_accuracy, ...
    ensemble_accuracy, SVM_accuracy, KNN_accuracy];
%% Making a table 
A160108_table = table(A160108_four1_accuracy',A160108_four2_accuracy',...
    A160108_four3_accuracy',A160108_four4_accuracy',...
    A160108_four5_accuracy',A160108_four6_accuracy',...
    A160108_four7_accuracy',A160108_four8_accuracy',...
    A160108_poly1_accuracy',A160108_poly2_accuracy',...
    A160108_poly3_accuracy',A160108_poly4_accuracy',...
    A160108_poly5_accuracy',A160108_poly6_accuracy',...
    A160108_poly7_accuracy',A160108_poly8_accuracy',...
    A160108_poly9_accuracy',...
    A160108_sin1_accuracy',A160108_sin2_accuracy',...
    A160108_sin3_accuracy',A160108_sin4_accuracy',...
    A160108_sin5_accuracy',A160108_sin6_accuracy',...
    A160108_varm1_accuracy',A160108_varm2_accuracy',...
    'VariableNames', {'A160108_four1_accuracy' 'A160108_four2_accuracy'...
    'A160108_four3_accuracy' 'A160108_four4_accuracy'...
    'A160108_four5_accuracy' 'A160108_four6_accuracy'...
    'A160108_four7_accuracy' 'A160108_four8_accuracy'...
    'A160108_poly1_accuracy','A160108_poly2_accuracy',...
    'A160108_poly3_accuracy','A160108_poly4_accuracy',...
    'A160108_poly5_accuracy','A160108_poly6_accuracy',...
    'A160108_poly7_accuracy','A160108_poly8_accuracy',...
    'A160108_poly9_accuracy',...
    'A160108_sin1_accuracy','A160108_sin2_accuracy',...
    'A160108_sin3_accuracy','A160108_sin4_accuracy',...
    'A160108_sin5_accuracy','A160108_sin6_accuracy',...
    'A160108_varm1_accuracy','A160108_varm2_accuracy'});



