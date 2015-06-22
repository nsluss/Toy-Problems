function allUnique (str) {
    return reduceObj(function(acc, bool){
        return acc && bool;
    }, true, Array.prototype.reduce.call(str, function (acc, char){
        if (acc[char] === undefined) {
            acc[char] = true;
        } else {
            acc[char] = false;
        }
        return acc
    }, {}))
}

function reduceObj (fn, acc, obj){
    for (var key in obj) {
        acc = fn(acc, obj[key])
    }
    return acc;
}
