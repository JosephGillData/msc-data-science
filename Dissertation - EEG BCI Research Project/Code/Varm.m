%% making a large dataset of ERP data and targets
x = 1:200;
train_test_rh = rh_lists;
train_test_lh = lh_lists;
coef_shape_rh = size(train_test_rh);
number_of_rh = coef_shape_rh(3);
coef_shape_lh = size(train_test_lh);
number_of_lh = coef_shape_lh(3);
number_of = number_of_rh + number_of_lh;

train_test = cat(3, train_test_rh,train_test_lh);
targets_train_test_rh = ones(number_of_rh,1);
targets_train_test_lh = -1.* ones(number_of_lh,1);
targets = cat(1, targets_train_test_rh,targets_train_test_lh);

coef_varm1 = 506;
coef_varm2 = 990;

param_matrix_A160108_varm1 = zeros(number_of,coef_varm1);
param_matrix_A160108_varm2 = zeros(number_of,coef_varm2);
%% Obtaining parameters for Varm1
disp('Varm 1')
Mdl = varm(22,1);
for num = 1:number_of
    disp(num)
    sample = train_test(:,:,num);
    fit_varm1 = estimate(Mdl,sample);
    summmary_varm1 = summarize(fit_varm1);
    params_varm1 = summmary_varm1.Table.Value;
    param_matrix_A160108_varm1(num,:) = params_varm1';
end

Tbl_A160108_varm1 = array2table(param_matrix_A160108_varm1);
Tbl_A160108_varm1.target_var = targets;
Tbl_A160108_varm1.target_var = categorical(Tbl_A160108_varm1.target_var);
Tbl_A160108_varm1 = Tbl_A160108_varm1(randperm(size(Tbl_A160108_varm1,1)), :);
save('Tbl_A160108_varm1.mat', 'Tbl_A160108_varm1')
%% Obtaining parameters for Varm2
disp('Varm 2')
Mdl = varm(22,2);
for num = 1:number_of
    disp(num)
    sample = train_test(:,:,num);
    fit_varm2 = estimate(Mdl,sample);
    summmary_varm2 = summarize(fit_varm2);
    params_varm2 = summmary_varm2.Table.Value;
    param_matrix_A160108_varm2(num,:) = params_varm2';
end

Tbl_A160108_varm2 = array2table(param_matrix_A160108_varm2);
Tbl_A160108_varm2.target_var = targets;
Tbl_A160108_varm2.target_var = categorical(Tbl_A160108_varm2.target_var);
Tbl_A160108_varm2 = Tbl_A160108_varm2(randperm(size(Tbl_A160108_varm2,1)), :);
save('Tbl_A160108_varm2.mat', 'Tbl_A160108_varm2')
