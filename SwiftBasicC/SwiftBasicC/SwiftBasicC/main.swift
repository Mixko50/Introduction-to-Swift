var a = HumanClass() // No need to new ...
a.name = "Mixko"

var b = HumanClass(name: "Ko")
//b.firstName = "Apisit"
//b.lastName = "Maneerat"
b.fullName = "Apisit Maneerat"
print(b.fullName)
b.speak()


var c = HumanClass(name: "Mii")
var e = c
e.name = "OOOOOO"

print(c.name)
print(e.name)
print(Unmanaged.passUnretained(c).toOpaque())
print(Unmanaged.passUnretained(e).toOpaque())

var d = HumanStruct(name: "Mixko")
var f = d
f.name = "Home"
print(d.name)
print(f.name)

var g = HumaneExtend(name: "Hina")
g.walk()

var h = HumanStruct(name: "NGAaaaaa")
h.speak()

var i = IronmanStruct(name: "M9")
var j = SpidermanStruct(name: "LK")

i.fly()
j.shoot()
i.action()

var k: HumanClass = IronmanClass(name: "OPO")
k.speak()

var avengers: [HumanClass] = [
    IronmanClass(name: "Mikox i"),
    SpiderManClass(name: "Hoo")
]

for i in avengers {
    i.action()
}

var avengersStruct: [ActionProtocol] = [
    IronmanStruct(name: "DFDF"),
    SpidermanStruct(name: "RTR")
]

for i in avengersStruct {
    i.action()
}
