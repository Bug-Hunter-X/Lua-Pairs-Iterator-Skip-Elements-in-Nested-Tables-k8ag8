local function foo(t)
  local function traverse(t, fn)
    for k, v in pairs(t) do
      fn(k, v)
      if type(v) == "table" then
        traverse(v, fn)
      end
    end
  end

traverse(t, function(k, v) print(k, v) end)
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
foo(t)