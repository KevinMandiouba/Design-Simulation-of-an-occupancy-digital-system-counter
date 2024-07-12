add wave x
add wave y
add wave reset
add wave clk
add wave current_occupancy
add wave max_occupancy
add wave z

# Start current_occupancy at 0
force reset '1'
force clk '0'
force x '0'
force y '0'
run 10 ns

force reset '0'
run 10 ns

# Check decrementor by decrementing twice
# current_occupancy should remain 0
set cycle 1
while {$cycle <= 3} {
	force clk '1'
	force x '0'
	force y '1'
	run 10 ns

	force clk '0'
	force x '0'
	force y '0'
	run 10 ns

	incr cycle
}

# Check incrementor by incrementing 65 times
# current_occupancy should go from 0 to 63 and not exceed 63
set cycle 1
while {$cycle <= 65} {
	force clk '1'
	force x '1'
	force y '0'
	run 10 ns

	force clk '0'
	force x '0'
	force y '0'
	run 10 ns

	incr cycle
}

# Decrementing to 62 then incrementing to 63 five times
set cycle 1 
while {$cycle <= 5} {
	force clk '1'
	force x '0'
	force y '1'
	run 10 ns

	force clk '0'
	force x '0'
	force y '0'
	run 10 ns

	force clk '1'
	force x '1'
	force y '0'
	run 10 ns

	force clk '0'
	force x '0'
	force y '0'
	run 10 ns

	incr cycle
}

# Decrement back to 0
set cycle 1
while {$cycle <= 63} {
    force clk '1'
    force x '0'
    force y '1'
    run 10 ns

    force clk '0'
    force x '0'
    force y '0'
    run 10 ns

    incr cycle
}

# Increment by 10 then reset
set cycle 1
while {$cycle <= 10} {
    force clk '1'
    force x '1'
    force y '0'
    run 10 ns

    force clk '0'
    force x '0'
    force y '0'
    run 10 ns

    incr cycle
}

force reset '1'
run 10 ns
