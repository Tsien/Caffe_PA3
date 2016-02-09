function convert(h5file, file)
    load(file);
    tmp = size(data);
    ind = randperm(tmp(1));
    data = double(data(ind, :));
    data = reshape(data', 32, 32, 3, tmp(1));
    for i = 1 : tmp(1)
        for j = 1 : 3
           data(:, :, j, i) = data(:, :, j, i)';%row-major order
        end
    end
    h5create(h5file, '/data', size(data));
    h5write(h5file, '/data', data);
    h5create(h5file, '/label_fine', size(fine_labels'));
    h5write(h5file, '/label_fine', fine_labels');
    h5create(h5file, '/label_coarse', size(coarse_labels'));
    h5write(h5file, '/label_coarse', coarse_labels');
end
%(97,2,20,0): 99, 97, 96, 159, 177, 156, 112, 89, 95, 121, 115, 116,