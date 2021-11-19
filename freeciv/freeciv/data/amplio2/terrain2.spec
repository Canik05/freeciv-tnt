[spec]

; Format and options of this spec file:
options = "+Freeciv-spec-Devel-2019-Jul-03"

[info]
artists = "
    Canik <www.tacticsandtriumph.com>
    Hogne Håskjold <haskjold@gmail.com>
    Tim F. Smith <yoohootim@hotmail.com>
    Yautja
    Daniel Speyer
    Eleazar
    Lexxie
"

[file]
gfx = "amplio2/terrain2"

[grid_main]

x_top_left = 1
y_top_left = 1
dx = 96
dy = 48
pixel_border = 1

tiles = { "row", "column","tag"

;jungle as overlay

 2,  0, "t.l1.jungle_n0e0s0w0"
 2,  1, "t.l1.jungle_n1e0s0w0"
 2,  2, "t.l1.jungle_n0e1s0w0"
 2,  3, "t.l1.jungle_n1e1s0w0"
 2,  4, "t.l1.jungle_n0e0s1w0"
 2,  5, "t.l1.jungle_n1e0s1w0"
 2,  6, "t.l1.jungle_n0e1s1w0"
 2,  7, "t.l1.jungle_n1e1s1w0"
 3,  0, "t.l1.jungle_n0e0s0w1"
 3,  1, "t.l1.jungle_n1e0s0w1"
 3,  2, "t.l1.jungle_n0e1s0w1"
 3,  3, "t.l1.jungle_n1e1s0w1"
 3,  4, "t.l1.jungle_n0e0s1w1"
 3,  5, "t.l1.jungle_n1e0s1w1"
 3,  6, "t.l1.jungle_n0e1s1w1"
 3,  7, "t.l1.jungle_n1e1s1w1"


;forests as overlay

 4,  0, "t.l1.forest_n0e0s0w0"
 4,  1, "t.l1.forest_n1e0s0w0"
 4,  2, "t.l1.forest_n0e1s0w0"
 4,  3, "t.l1.forest_n1e1s0w0"
 4,  4, "t.l1.forest_n0e0s1w0"
 4,  5, "t.l1.forest_n1e0s1w0"
 4,  6, "t.l1.forest_n0e1s1w0"
 4,  7, "t.l1.forest_n1e1s1w0"
 5,  0, "t.l1.forest_n0e0s0w1"
 5,  1, "t.l1.forest_n1e0s0w1"
 5,  2, "t.l1.forest_n0e1s0w1"
 5,  3, "t.l1.forest_n1e1s0w1"
 5,  4, "t.l1.forest_n0e0s1w1"
 5,  5, "t.l1.forest_n1e0s1w1"
 5,  6, "t.l1.forest_n0e1s1w1"
 5,  7, "t.l1.forest_n1e1s1w1"

;desert as overlay

 6,  0, "t.l1.desert_n0e0s0w0"
 6,  1, "t.l1.desert_n1e0s0w0"
 6,  2, "t.l1.desert_n0e1s0w0"
 6,  3, "t.l1.desert_n1e1s0w0"
 6,  4, "t.l1.desert_n0e0s1w0"
 6,  5, "t.l1.desert_n1e0s1w0"
 6,  6, "t.l1.desert_n0e1s1w0"
 6,  7, "t.l1.desert_n1e1s1w0"
 7,  0, "t.l1.desert_n0e0s0w1"
 7,  1, "t.l1.desert_n1e0s0w1"
 7,  2, "t.l1.desert_n0e1s0w1"
 7,  3, "t.l1.desert_n1e1s0w1"
 7,  4, "t.l1.desert_n0e0s1w1"
 7,  5, "t.l1.desert_n1e0s1w1"
 7,  6, "t.l1.desert_n0e1s1w1"
 7,  7, "t.l1.desert_n1e1s1w1"

;swamp as overlay

 8,  0, "t.l1.swamp_n0e0s0w0"
 8,  1, "t.l1.swamp_n1e0s0w0"
 8,  2, "t.l1.swamp_n0e1s0w0"
 8,  3, "t.l1.swamp_n1e1s0w0"
 8,  4, "t.l1.swamp_n0e0s1w0"
 8,  5, "t.l1.swamp_n1e0s1w0"
 8,  6, "t.l1.swamp_n0e1s1w0"
 8,  7, "t.l1.swamp_n1e1s1w0"
 9,  0, "t.l1.swamp_n0e0s0w1"
 9,  1, "t.l1.swamp_n1e0s0w1"
 9,  2, "t.l1.swamp_n0e1s0w1"
 9,  3, "t.l1.swamp_n1e1s0w1"
 9,  4, "t.l1.swamp_n0e0s1w1"
 9,  5, "t.l1.swamp_n1e0s1w1"
 9,  6, "t.l1.swamp_n0e1s1w1"
 9,  7, "t.l1.swamp_n1e1s1w1"

}


[grid_coasts]

x_top_left = 1
y_top_left = 645
dx = 48
dy = 24
pixel_border = 1

tiles = { "row", "column","tag"

;* previous coordinates now in water.spec

}
