`/** @jsx React.DOM */`

# Bring in jQuery and React as a Bower component in the global namespace
require("script!react/react-with-addons.js")
require("script!jquery/jquery.js")

window.EMICalculator = require("./components/EMICalculator.coffee")
Chart = require("./components/Chart.coffee")
EMI = require("./EMI.coffee")

emi = new EMI(2000000, 12, 48)
m = emi.summary()
sc = emi.amortization_schedule()



React.renderComponent(`<EMICalculator emi={emi} />`, document.getElementById('emi'))

