function struct = doubleWeights( struct )
%FORALL Summary of this function goes here
%   Detailed explanation goes here

for i=2:length(struct.layer)
    for j=1:size(struct.layer{i}.W,1)
        for k=1:size(struct.layer{i}.W,2)
            struct.layer{i}.W{j,k} = 2.*struct.layer{i}.W{j,k};
        end
    end
end

end

