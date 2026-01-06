%% Making empty parameter matrices and targets
x = 1:200;
x = x';
train_test_rh = rh_lists; % insert here
train_test_lh = lh_lists; % insert here
coef_shape_rh = size(train_test_rh);
number_of_rh = coef_shape_rh(3);
coef_shape_lh = size(train_test_lh);
number_of_lh = coef_shape_lh(3);
number_of = number_of_rh + number_of_lh;

train_test = cat(3, train_test_rh,train_test_lh);
targets_train_test_rh = ones(number_of_rh,1);
targets_train_test_lh = -1.* ones(number_of_lh,1);
targets = cat(1, targets_train_test_rh,targets_train_test_lh);

coef_poly1 = 44;
coef_poly2 = 66;
coef_poly3 = 88;
coef_poly4 = 110;
coef_poly5 = 132;
coef_poly6 = 154;
coef_poly7 = 176;
coef_poly8 = 198;
coef_poly9 = 220;

param_matrix_A160108_poly1 = zeros(number_of,coef_poly1);
param_matrix_A160108_poly2 = zeros(number_of,coef_poly2);
param_matrix_A160108_poly3 = zeros(number_of,coef_poly3);
param_matrix_A160108_poly4 = zeros(number_of,coef_poly4);
param_matrix_A160108_poly5 = zeros(number_of,coef_poly5);
param_matrix_A160108_poly6 = zeros(number_of,coef_poly6);
param_matrix_A160108_poly7 = zeros(number_of,coef_poly7);
param_matrix_A160108_poly8 = zeros(number_of,coef_poly8);
param_matrix_A160108_poly9 = zeros(number_of,coef_poly9);
%% Obtaining parameters for Poly1
disp('Poly 1')
for num = 1:number_of
    param_list_poly1 = [];
    disp(num)
    for i = 1:22
        sample = train_test(:,i,num);
        params_poly1 = polyfit(x,sample,1);
        param_list_poly1 = cat(2,param_list_poly1, params_poly1);
    end
    param_matrix_A160108_poly1(num,:) = param_list_poly1;
end

Tbl_A160108_poly1 = array2table(param_matrix_A160108_poly1);
Tbl_A160108_poly1.target_var = targets;
Tbl_A160108_poly1.target_var = categorical(Tbl_A160108_poly1.target_var);
Tbl_A160108_poly1 = Tbl_A160108_poly1(randperm(size(Tbl_A160108_poly1,1)), :);
save('Tbl_A160108_poly1.mat', 'Tbl_A160108_poly1')
%% Obtaining parameters for Poly2
disp('Poly 2')
for num = 1:number_of
    param_list_poly2 = [];
    disp(num)
    for i = 1:22
        sample = train_test(:,i,num);
        params_poly2 = polyfit(x,sample,2);
        param_list_poly2 = cat(2,param_list_poly2, params_poly2);
    end
    param_matrix_A160108_poly2(num,:) = param_list_poly2;
end

Tbl_A160108_poly2 = array2table(param_matrix_A160108_poly2);
Tbl_A160108_poly2.target_var = targets;
Tbl_A160108_poly2.target_var = categorical(Tbl_A160108_poly2.target_var);
Tbl_A160108_poly2 = Tbl_A160108_poly2(randperm(size(Tbl_A160108_poly2,1)), :);
save('Tbl_A160108_poly2.mat', 'Tbl_A160108_poly2')
%% Obtaining parameters for Poly3
disp('Poly 3')
for num = 1:number_of
    param_list_poly3 = [];
    disp(num)
    for i = 1:22
        sample = train_test(:,i,num);
        params_poly3 = polyfit(x,sample,3);
        param_list_poly3 = cat(2,param_list_poly3, params_poly3);
    end
    param_matrix_A160108_poly3(num,:) = param_list_poly3;
end

Tbl_A160108_poly3 = array2table(param_matrix_A160108_poly3);
Tbl_A160108_poly3.target_var = targets;
Tbl_A160108_poly3.target_var = categorical(Tbl_A160108_poly3.target_var);
Tbl_A160108_poly3 = Tbl_A160108_poly3(randperm(size(Tbl_A160108_poly3,1)), :);
save('Tbl_A160108_poly3.mat', 'Tbl_A160108_poly3')
%% Obtaining parameters for Poly4
disp('Poly 4')
for num = 1:number_of
    param_list_poly4 = [];
    disp(num)
    for i = 1:22
        sample = train_test(:,i,num);
        params_poly4 = polyfit(x,sample,4);
        param_list_poly4 = cat(2,param_list_poly4, params_poly4);
    end
    param_matrix_A160108_poly4(num,:) = param_list_poly4;
end

Tbl_A160108_poly4 = array2table(param_matrix_A160108_poly4);
Tbl_A160108_poly4.target_var = targets;
Tbl_A160108_poly4.target_var = categorical(Tbl_A160108_poly4.target_var);
Tbl_A160108_poly4 = Tbl_A160108_poly4(randperm(size(Tbl_A160108_poly4,1)), :);
save('Tbl_A160108_poly4.mat', 'Tbl_A160108_poly4')
%% Obtaining parameters for Poly5
disp('Poly 5')
for num = 1:number_of
    param_list_poly5 = [];
    disp(num)
    for i = 1:22
        sample = train_test(:,i,num);
        params_poly5 = polyfit(x,sample,5);
        param_list_poly5 = cat(2,param_list_poly5, params_poly5);
    end
    param_matrix_A160108_poly5(num,:) = param_list_poly5;
end

Tbl_A160108_poly5 = array2table(param_matrix_A160108_poly5);
Tbl_A160108_poly5.target_var = targets;
Tbl_A160108_poly5.target_var = categorical(Tbl_A160108_poly5.target_var);
Tbl_A160108_poly5 = Tbl_A160108_poly5(randperm(size(Tbl_A160108_poly5,1)), :);
save('Tbl_A160108_poly5.mat', 'Tbl_A160108_poly5')
%% Obtaining parameters for Poly6
disp('Poly 6')
for num = 1:number_of
    param_list_poly6 = [];
    disp(num)
    for i = 1:22
        sample = train_test(:,i,num);
        params_poly6 = polyfit(x,sample,6);
        param_list_poly6 = cat(2,param_list_poly6, params_poly6);
    end
    param_matrix_A160108_poly6(num,:) = param_list_poly6;
end

Tbl_A160108_poly6 = array2table(param_matrix_A160108_poly6);
Tbl_A160108_poly6.target_var = targets;
Tbl_A160108_poly6.target_var = categorical(Tbl_A160108_poly6.target_var);
Tbl_A160108_poly6 = Tbl_A160108_poly6(randperm(size(Tbl_A160108_poly6,1)), :);
save('Tbl_A160108_poly6.mat', 'Tbl_A160108_poly6')
%% Obtaining parameters for Poly7
disp('Poly 7')
for num = 1:number_of
    param_list_poly7 = [];
    disp(num)
    for i = 1:22
        sample = train_test(:,i,num);
        params_poly7 = polyfit(x,sample,7);
        param_list_poly7 = cat(2,param_list_poly7, params_poly7);
    end
    param_matrix_A160108_poly7(num,:) = param_list_poly7;
end

Tbl_A160108_poly7 = array2table(param_matrix_A160108_poly7);
Tbl_A160108_poly7.target_var = targets;
Tbl_A160108_poly7.target_var = categorical(Tbl_A160108_poly7.target_var);
Tbl_A160108_poly7 = Tbl_A160108_poly7(randperm(size(Tbl_A160108_poly7,1)), :);
save('Tbl_A160108_poly7.mat', 'Tbl_A160108_poly7')
%% Obtaining parameters for Poly8
disp('Poly 8')
for num = 1:number_of
    param_list_poly8 = [];
    disp(num)
    for i = 1:22
        sample = train_test(:,i,num);
        params_poly8 = polyfit(x,sample,8);
        param_list_poly8 = cat(2,param_list_poly8, params_poly8);
    end
    param_matrix_A160108_poly8(num,:) = param_list_poly8;
end

Tbl_A160108_poly8 = array2table(param_matrix_A160108_poly8);
Tbl_A160108_poly8.target_var = targets;
Tbl_A160108_poly8.target_var = categorical(Tbl_A160108_poly8.target_var);
Tbl_A160108_poly8 = Tbl_A160108_poly8(randperm(size(Tbl_A160108_poly8,1)), :);
save('Tbl_A160108_poly8.mat', 'Tbl_A160108_poly8')
%% Obtaining parameters for Poly9
disp('Poly 9')
for num = 1:number_of
    param_list_poly9 = [];
    disp(num)
    for i = 1:22
        sample = train_test(:,i,num);
        params_poly9 = polyfit(x,sample,9);
        param_list_poly9 = cat(2,param_list_poly9, params_poly9);
    end
    param_matrix_A160108_poly9(num,:) = param_list_poly9;
end

Tbl_A160108_poly9 = array2table(param_matrix_A160108_poly9);
Tbl_A160108_poly9.target_var = targets;
Tbl_A160108_poly9.target_var = categorical(Tbl_A160108_poly9.target_var);
Tbl_A160108_poly9 = Tbl_A160108_poly9(randperm(size(Tbl_A160108_poly9,1)), :);
save('Tbl_A160108_poly9.mat', 'Tbl_A160108_poly9')





























