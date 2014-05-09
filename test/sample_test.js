'use strict';

var assert = require('power-assert');

describe('sample', function(){
    it('#sum', function(){
        var result = 1 + 1;
        assert(result === 2);
    });
    it('#sub', function(){
        var result = 10 - 1;
        assert(result === 9);
    });
});
