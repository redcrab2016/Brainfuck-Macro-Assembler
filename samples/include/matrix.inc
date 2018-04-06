# declare the matrix
macro varMatrix(name, block_width, block_height, nbblock_width, nbblock_height)
    var {name}_width
    var {name}_height
    var {name}_nbwidth
    var {name}_nbheight
    var {name}_bwidth
    var {name}_bheight
    push    {block_width*nbblock_width}
    pop     {name}_width
    push    {block_height*nbblock_height}
    pop     {name}_height
    push    {nbblock_width}
    pop     {name}_nbwidth
    push    {nbblock_height}
    pop     {name}_nbheight
    push    {block_width}
    pop     {name}_bwidth
    push    {block_height}
    pop     {name}_bheight
js  for (var yy=0 ; yy < nbblock_height; yy++) {
js      for(var xx=0 ; xx < nbblock_width; xx++) {
            var {name}_{yy*nbblock_width+xx}*{block_width*block_height}
            var {name}_{yy*nbblock_width+xx}_width
            var {name}_{yy*nbblock_width+xx}_height
            push    {block_width}
            pop     {name}_{yy*nbblock_width+xx}_width
            push    {block_height}
            pop     {name}_{yy*nbblock_width+xx}_height
js      }
js  }
endmacro

# take value in stack
# all params are immediate except x,y
macro matrixSet(name, x,y, block_width, block_height, nbblock_width, nbblock_height)
    sbm mvalue{_matrixSet}
    scope_begin
       lvar     msblockX{_matrixSet}, 0
       lvar     msblockY{_matrixSet}, 0
       lvar     msblockNum{_matrixSet},   0
       lvar     msinbX{_matrixSet},   0
       lvar     msinbY{_matrixSet},   0
       lvar     msinbIdx{_matrixSet},   0
       
       # block x, inblock x
       push     {x}
       push     {block_width}
       div
       pop      msblockX{_matrixSet}
       pop      msinbX{_matrixSet}
       # block y, in block y
       push     {y}
       push     {block_height}
       div
       pop      msblockY{_matrixSet}
       pop      msinbY{_matrixSet}
       # array index (in block)
       push     msinbY{_matrixSet}
       push     {block_width}
       mul
       push     msinbX{_matrixSet}
       add
       pop      msinbIdx{_matrixSet}
       # block number
       push     msblockY{_matrixSet}
       push     {nbblock_width}
       mul
       push     msblockX{_matrixSet}
       add
       pop      msblockNum{_matrixSet}
       js   for (var bb=0 ; bb < nbblock_width*nbblock_height; bb++) {
       push     msblockNum{_matrixSet}
       push     {bb}
       equal
       if
            push    mvalue{_matrixSet}
            arraySet    {name}_{bb}, msinbIdx{_matrixSet}   
       else
       js   }
       js   for (var bb=0 ; bb < nbblock_width*nbblock_height; bb++) {
       fi
       js   }
    scope_end
    drop
endmacro 

# push value to stack
# all params are immediate except x,y
macro matrixGet(name, x,y, block_width, block_height, nbblock_width, nbblock_height)
    push    0
    sbm mgvalue{_matrixGet}
    scope_begin
       lvar     mgblockX{_matrixGet}, 0
       lvar     mgblockY{_matrixGet}, 0
       lvar     mgblockNum{_matrixGet},   0
       lvar     mginbX{_matrixGet},   0
       lvar     mginbY{_matrixGet},   0
       lvar     mginbIdx{_matrixGet},   0
       
       # block x, in block x
       push     {x}
       push     {block_width}
       div
       pop      mgblockX{_matrixGet}
       pop      mginbX{_matrixGet}
       # block y, in block y
       push     {y}
       push     {block_height}
       div
       pop      mgblockY{_matrixGet}
       pop      mginbY{_matrixGet}
       # array index (in block)
       push     mginbY{_matrixGet}
       push     {block_width}
       mul
       push     mginbX{_matrixGet}
       add
       pop      mginbIdx{_matrixGet}
       # block number
       push     mgblockY{_matrixGet}
       push     {nbblock_width}
       mul
       push     mgblockX{_matrixGet}
       add
       pop      mgblockNum{_matrixGet}
       js   for (var bb=0 ; bb < nbblock_width*nbblock_height; bb++) {
       push     mgblockNum{_matrixGet}
       push     {bb}
       equal
       if
            arrayGet    {name}_{bb}, mginbIdx{_matrixGet}
            pop     mgvalue{_matrixGet}
       else
       js   }
       js   for (var bb=0 ; bb < nbblock_width*nbblock_height; bb++) {
       fi
       js   }
    scope_end
endmacro 
