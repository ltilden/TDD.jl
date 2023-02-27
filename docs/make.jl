using TDD
using Documenter

DocMeta.setdocmeta!(TDD, :DocTestSetup, :(using TDD); recursive=true)

makedocs(;
    modules=[TDD],
    authors="Lizzie <e.tilden@wustl.edu> and contributors",
    repo="https://github.com/ltilden/TDD.jl/blob/{commit}{path}#{line}",
    sitename="TDD.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://ltilden.github.io/TDD.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/ltilden/TDD.jl",
    devbranch="main",
)
