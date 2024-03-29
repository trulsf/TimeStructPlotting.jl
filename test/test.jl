using TimeStruct
using TimeStructPlotting

simple = SimpleTimes(10,1)
varying = SimpleTimes([1, 1, 1, 3, 3, 5, 5])
opscen = OperationalScenarios([SimpleTimes(5,1), SimpleTimes(3,2), SimpleTimes(4,[3,2,1,1]), SimpleTimes(2,3)], [0.3, 0.4, 0.2, 0.1])
strat = TwoLevel(3, 15, SimpleTimes(5,1))
scen = TwoLevel(3, 15, OperationalScenarios(3,SimpleTimes(5,1)))

regtree = regular_tree(5, [3,2], SimpleTimes(5,1))
regtree = regular_tree(5, [3,2], opscen)
    

TimeStructPlotting.draw(simple)
TimeStructPlotting.draw(varying; showdur=true, height=100, filename="simple_times.png")
TimeStructPlotting.draw(opscen; showprob=true, height=200, filename="opscen.png")

TimeStructPlotting.draw(strat; height=200, filename="twolevel.png")
TimeStructPlotting.draw(strat; height=200, filename="twolevel.png", layout=:top)

TimeStructPlotting.draw(regtree; height=300, filename="regtree.png", layout=:top)

TimeStructPlotting.draw(scen; filename="scen.png", layout=:top)



opscen1 = OperationalScenarios(3,[SimpleTimes(4,2), SimpleTimes(6,1), SimpleTimes(4,[1,1,3,3])], [0.3, 0.4, 0.3])
opscen2 = OperationalScenarios(4,[SimpleTimes(5,1.5), SimpleTimes(3,2), SimpleTimes(4,[3,2,1,1]), SimpleTimes(2,3)], [0.3, 0.4, 0.2, 0.1])

TimeStructPlotting.draw(opscen1)

twolev = TwoLevel(2, 53, [opscen1, opscen2])

simple = SimpleTimes(5,1)
p1 = OperationalProfile([1,3,3,4,2])
p2 = ScenarioProfile([[1, 3, 2, 4, 5], [1], [2], [3], [8]])

op = OperationalScenarios(5, SimpleTimes(6,1))

TimeStructPlotting.draw(twolev; layout = :top, showdur = true, showprob = true, profile = p1)

