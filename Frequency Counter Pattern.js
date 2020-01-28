// Frequency Counter Pattern

function same (array1, array2) {

    if (array1.length != array2.length) {
        return false;
    }

    const object1 = {};
    const object2 = {};


    array1.forEach(item => {
          object1[item] = ( object1[item] || 0 ) + 1;
    });

    array2.forEach(item => {
          object2[item] = ( object2[item] || 0 ) + 1;
    });


    for (let key in object1) {

        // Hasn't key in array2
        if ( ! (key ** 2) in array2 ) {
            return false;
        }

        // values in two arrays not the same
        const value1 = object1[key];
        const value2 = object2[key*key];

        if (value1 !== value2) {
            return false;
        }

    }



    return true;
}

same([1,2,3,2], [9,1,4,4]);