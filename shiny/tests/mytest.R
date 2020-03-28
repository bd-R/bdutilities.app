app <- ShinyDriver$new("../")
app$snapshotInit("mytest")

app$setInputs(`1-recordSize` = 5)
app$setInputs(`1-queryDatabase` = "click", timeout_ = 15000)
app$snapshot()