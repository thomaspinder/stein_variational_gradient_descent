using Distributions, Distances

function svgd_kernel(θ; h::Int=-1)
    distset = pairwise(SqEuclidean(), θ)
    if h > 0
        h = median(distset)
        h = sqrt(0.5 * h / log(size(θ, 1)))
    end
    
    # Compute RBF Kernel 
    Kxy = exp(0.5 .* distset ./ h^2)
                                      
    dxkxy = -θ*Kxy
    sumkxy = sum(Kxy, dims=1)
                                          
    for i in 1:size(θ, 2)
    end


n = 20
x = rand(MultivariateNormal([0, 0], [1 0.1; 0.1 1]), n)
svgd_kernel(x; h = 1)
