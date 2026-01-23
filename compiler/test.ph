fn add(x:int):int {
    
    let y:int = 67;
    if (x == y) {   ## if X is equal to Y
        exit 5;
    }
    else if (x == 10) { ## if x is equal to 10
        exit 61;
    }
    else {          ## if X in not equal to Y
        exit y;
    }
}

let x :int = 10;
add(x);