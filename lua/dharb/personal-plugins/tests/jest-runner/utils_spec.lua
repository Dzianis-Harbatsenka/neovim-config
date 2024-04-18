local utils = require("dharb.personal-plugins.jest-runner.utils")

for key, value in pairs(utils) do
	print(key, value)
end

print(utils.check_if_spec_file("test.spec.ts"))

describe("utils", function()
	describe("check_if_spec_file", function()
		it("should return false if not a spec file", function()
			assert.is_false(utils.check_if_spec_file("home/test.lua"))
		end)

		it("should return false if not a correct spec file", function()
			assert.is_false(utils.check_if_spec_file("home/test_spec.lua"))
		end)

		it("should return false if not a spec ts file", function()
			assert.is_false(utils.check_if_spec_file("home/test.ts"))
		end)

		it("should return false if not a spec js file", function()
			assert.is_false(utils.check_if_spec_file("home/test.js"))
		end)

		it("should return true if a spec js file", function()
			assert.is_true(utils.check_if_spec_file("home/test.spec.js"))
		end)

		it("should return true if a spec ts file", function()
			assert.is_true(utils.check_if_spec_file("home/test.spec.ts"))
		end)
	end)
end)
