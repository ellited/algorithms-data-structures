
function maxSubArraySum (array, number) {
    if ( array.length < number ) {
        return 0;
    }

    let sum = 0
    let temp = 0

    for (let i = 0; i < number; i++) {
        sum += array[i];
    }

    temp = sum

    for (let i = number; i < array.length; i++) {
        temp += array[i] - array[i - number];
        sum = Math.max(temp, sum);
    }



    return sum;
}



maxSubArraySum( [1, 2, 5, 2, 8, 1, 5], 4)