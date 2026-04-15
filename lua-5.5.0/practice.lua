local scores = {93, 46, 27, 85, 46}

for i, score in ipairs(scores) do
    print(i, score)
end

local students = {name = "alice", lab = 19, passed = true}

for key, value in pairs(students) do
    print(key, value)
end

local line = "lab_19_score=94"

local label, value = string.match(
    line,
    "(%a+_%d+_%a+)=(%d+)"
)

print(label, value)

local records = {
    "alice=88",
    "bob=94",
    "carol=76", 
}

local parsed = {}
for _, line in ipairs(records) do
    local name, score = string.match(line,
"(%a+)=(%d+)")
parsed[name] = tonumber(score)
end

for name, score in pairs(parsed) do
    print(name, score)
end