using Documenter, PhyloClustering

makedocs(
    sitename="PhyloClustering.jl",
    authors="Yibo Kong, Claudia Solís-Lemus, and contributors",
    modules=[PhyloClustering],
    format = Documenter.HTML(prettyurls = get(ENV, "CI", nothing) == "true"),
    pages = [
        "Home" => "index.md",
        "Installation" => "man/installation.md",
        "models" => [
            "model/basic.md",
            "model/kmeans.md",
            "model/hclust.md",
            "model/dbscan.md",
            "model/gmm.md",
        ],
        "Library" => [
            "Helper Methods" => "lib/helper_methods.md",
        ]
    ]
)

deploydocs(
    repo = "github.com/solislemuslab/ml-phylo-trees",
)