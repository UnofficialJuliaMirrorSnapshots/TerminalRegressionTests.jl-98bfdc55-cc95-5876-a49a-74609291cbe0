using TerminalRegressionTests

const thisdir = dirname(@__FILE__)
TerminalRegressionTests.automated_test(
                joinpath(thisdir,"TRT.multiout"),
                ["Julia\n","Yes!!\n"]) do emuterm
    print(emuterm, "Please enter your name: ")
    name = strip(readline(emuterm))
    print(emuterm, "\nHello $name. Do you like tests? ")
    resp = strip(readline(emuterm))
    @assert resp == "Yes!!"
end
