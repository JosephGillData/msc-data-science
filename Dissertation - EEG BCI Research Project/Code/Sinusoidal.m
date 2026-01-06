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

coef_sin1 = 66;
coef_sin2 = 132;
coef_sin3 = 198;
coef_sin4 = 264;
coef_sin5 = 330;
coef_sin6 = 396;
coef_sin7 = 462;
coef_sin8 = 528;

param_matrix_A160108_sin1 = zeros(number_of,coef_sin1);
param_matrix_A160108_sin2 = zeros(number_of,coef_sin2);
param_matrix_A160108_sin3 = zeros(number_of,coef_sin3);
param_matrix_A160108_sin4 = zeros(number_of,coef_sin4);
param_matrix_A160108_sin5 = zeros(number_of,coef_sin5);
param_matrix_A160108_sin6 = zeros(number_of,coef_sin6);
param_matrix_A160108_sin7 = zeros(number_of,coef_sin7);
param_matrix_A160108_sin8 = zeros(number_of,coef_sin8);
%% Obtaining parameters for Sin1
disp('Sin 1')
for num = 1:number_of
    param_list_sin1 = [];
    disp(num)
    for i = 1:22
        sample = train_test(:,i,num);
        fit_sin1 = fit(x,sample,'sin1');
        params_sin1 = coeffvalues(fit_sin1);  
        param_list_sin1 = cat(2,param_list_sin1, params_sin1);
    end
    param_matrix_A160108_sin1(num,:) = param_list_sin1;
end

Tbl_A160108_sin1 = array2table(param_matrix_A160108_sin1);
Tbl_A160108_sin1.target_var = targets;
Tbl_A160108_sin1.target_var = categorical(Tbl_A160108_sin1.target_var);
Tbl_A160108_sin1 = Tbl_A160108_sin1(randperm(size(Tbl_A160108_sin1,1)), :);
save('Tbl_A160108_sin1.mat', 'Tbl_A160108_sin1')
%% Obtaining parameters for Sin2
disp('Sin 2')
for num = 1:number_of
    param_list_sin2 = [];
    disp(num)
    for i = 1:22
        sample = train_test(:,i,num);
        fit_sin2 = fit(x,sample,'sin2');
        params_sin2 = coeffvalues(fit_sin2);  
        param_list_sin2 = cat(2,param_list_sin2, params_sin2);
    end
    param_matrix_A160108_sin2(num,:) = param_list_sin2;
end

Tbl_A160108_sin2 = array2table(param_matrix_A160108_sin2);
Tbl_A160108_sin2.target_var = targets;
Tbl_A160108_sin2.target_var = categorical(Tbl_A160108_sin2.target_var);
Tbl_A160108_sin2 = Tbl_A160108_sin2(randperm(size(Tbl_A160108_sin2,1)), :);
save('Tbl_A160108_sin2.mat', 'Tbl_A160108_sin2')
%% Obtaining parameters for Sin3
disp('Sin 3')
for num = 1:number_of
    param_list_sin3 = [];
    disp(num)
    for i = 1:22
        sample = train_test(:,i,num);
        fit_sin3 = fit(x,sample,'sin3');
        params_sin3 = coeffvalues(fit_sin3);  
        param_list_sin3 = cat(2,param_list_sin3, params_sin3);
    end
    param_matrix_A160108_sin3(num,:) = param_list_sin3;
end

Tbl_A160108_sin3 = array2table(param_matrix_A160108_sin3);
Tbl_A160108_sin3.target_var = targets;
Tbl_A160108_sin3.target_var = categorical(Tbl_A160108_sin3.target_var);
Tbl_A160108_sin3 = Tbl_A160108_sin3(randperm(size(Tbl_A160108_sin3,1)), :);
save('Tbl_A160108_sin3.mat', 'Tbl_A160108_sin3')
%% Obtaining parameters for Sin4
disp('Sin 4')
for num = 1:number_of
    param_list_sin4 = [];
    disp(num)
    for i = 1:22
        sample = train_test(:,i,num);
        fit_sin4 = fit(x,sample,'sin4');
        params_sin4 = coeffvalues(fit_sin4);  
        param_list_sin4 = cat(2,param_list_sin4, params_sin4);
    end
    param_matrix_A160108_sin4(num,:) = param_list_sin4;
end

Tbl_A160108_sin4 = array2table(param_matrix_A160108_sin4);
Tbl_A160108_sin4.target_var = targets;
Tbl_A160108_sin4.target_var = categorical(Tbl_A160108_sin4.target_var);
Tbl_A160108_sin4 = Tbl_A160108_sin4(randperm(size(Tbl_A160108_sin4,1)), :);
save('Tbl_A160108_sin4.mat', 'Tbl_A160108_sin4')
%% Obtaining parameters for Sin5
disp('Sin 5')
for num = 1:number_of
    param_list_sin5 = [];
    disp(num)
    for i = 1:22
        sample = train_test(:,i,num);
        fit_sin5 = fit(x,sample,'sin5');
        params_sin5 = coeffvalues(fit_sin5);  
        param_list_sin5 = cat(2,param_list_sin5, params_sin5);
    end
    param_matrix_A160108_sin5(num,:) = param_list_sin5;
end

Tbl_A160108_sin5 = array2table(param_matrix_A160108_sin5);
Tbl_A160108_sin5.target_var = targets;
Tbl_A160108_sin5.target_var = categorical(Tbl_A160108_sin5.target_var);
Tbl_A160108_sin5 = Tbl_A160108_sin5(randperm(size(Tbl_A160108_sin5,1)), :);
save('Tbl_A160108_sin5.mat', 'Tbl_A160108_sin5')
%% Obtaining parameters for Sin6
disp('Sin 6')
for num = 1:number_of
    param_list_sin6 = [];
    disp(num)
    for i = 1:22
        sample = train_test(:,i,num);
        fit_sin6 = fit(x,sample,'sin6');
        params_sin6 = coeffvalues(fit_sin6);  
        param_list_sin6 = cat(2,param_list_sin6, params_sin6);
    end
    param_matrix_A160108_sin6(num,:) = param_list_sin6;
end

Tbl_A160108_sin6 = array2table(param_matrix_A160108_sin6);
Tbl_A160108_sin6.target_var = targets;
Tbl_A160108_sin6.target_var = categorical(Tbl_A160108_sin6.target_var);
Tbl_A160108_sin6 = Tbl_A160108_sin6(randperm(size(Tbl_A160108_sin6,1)), :);
save('Tbl_A160108_sin6.mat', 'Tbl_A160108_sin6')
%% Obtaining parameters for Sin7
disp('Sin 7')
for num = 1:number_of
    param_list_sin7 = [];
    disp(num)
    for i = 1:22
        sample = train_test(:,i,num);
        fit_sin7 = fit(x,sample,'sin7');
        params_sin7 = coeffvalues(fit_sin7);  
        param_list_sin7 = cat(2,param_list_sin7, params_sin7);
    end
    param_matrix_A160108_sin7(num,:) = param_list_sin7;
end

Tbl_A160108_sin7 = array2table(param_matrix_A160108_sin7);
Tbl_A160108_sin7.target_var = targets;
Tbl_A160108_sin7.target_var = categorical(Tbl_A160108_sin7.target_var);
Tbl_A160108_sin7 = Tbl_A160108_sin7(randperm(size(Tbl_A160108_sin7,1)), :);
save('Tbl_A160108_sin7.mat', 'Tbl_A160108_sin7')
%% Obtaining parameters for Sin8
disp('Sin 8')
for num = 1:number_of
    param_list_sin8 = [];
    disp(num)
    for i = 1:22
        sample = train_test(:,i,num);
        fit_sin8 = fit(x,sample,'sin8');
        params_sin8 = coeffvalues(fit_sin8);  
        param_list_sin8 = cat(2,param_list_sin8, params_sin8);
    end
    param_matrix_A160108_sin8(num,:) = param_list_sin8;
end

Tbl_A160108_sin8 = array2table(param_matrix_A160108_sin8);
Tbl_A160108_sin8.target_var = targets;
Tbl_A160108_sin8.target_var = categorical(Tbl_A160108_sin8.target_var);
Tbl_A160108_sin8 = Tbl_A160108_sin8(randperm(size(Tbl_A160108_sin8,1)), :);
save('Tbl_A160108_sin8.mat', 'Tbl_A160108_sin8')

















