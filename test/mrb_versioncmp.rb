##
## VersionCmp Test
##

assert("VersionCmp#<=>") do
  v1 = VersionCmp.new "1.0.0"
  v2 = VersionCmp.new "1.0.1"
  v3 = VersionCmp.new "1.1.0"
  v4 = VersionCmp.new "2.0.0"

  assert_true v1 <= v1
  assert_true v1 => v1

  assert_true v1 < v2
  assert_true v1 < v3
  assert_true v1 < v4
  assert_true v2 < v3
  assert_true v2 < v4
  assert_true v3 < v4

  assert_false v1 > v2
  assert_false v1 > v3
  assert_false v1 > v4
  assert_false v2 > v3
  assert_false v2 > v4
  assert_false v3 > v4

  assert_true  v1 == v1
  assert_false v1 == v2
  assert_false v1 == v3
  assert_false v1 == v4

  assert_false v2 == v1
  assert_true  v2 == v2
  assert_false v2 == v3
  assert_false v2 == v4

  assert_false v3 == v1
  assert_false v3 == v2
  assert_true  v3 == v3
  assert_false v3 == v4

  assert_false v4 == v1
  assert_false v4 == v2
  assert_false v4 == v3
  assert_true  v4 == v4

  assert_equal 0,  (v1 <=> v1)
  assert_equal -1, (v1 <=> v2)
  assert_equal -1, (v1 <=> v3)
  assert_equal -1, (v1 <=> v4)

  assert_equal 1,  (v2 <=> v1)
  assert_equal 0,  (v2 <=> v2)
  assert_equal -1, (v2 <=> v3)
  assert_equal -1, (v2 <=> v4)

  assert_equal 1,  (v3 <=> v1)
  assert_equal 1,  (v3 <=> v2)
  assert_equal 0,  (v3 <=> v3)
  assert_equal -1, (v3 <=> v4)

  assert_equal 1,  (v4 <=> v1)
  assert_equal 1,  (v4 <=> v2)
  assert_equal 1,  (v4 <=> v3)
  assert_equal 0,  (v4 <=> v4)
end
