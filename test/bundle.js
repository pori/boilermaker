const test = require('tape');
const rollup = require('rollup');
const config = require('../rollup.config');

test('Compiles some code without exploding.', t => {
    t.plan(1);
    
    rollup.rollup(config).then(bundle => {
        t.pass('Hey! We have a react bundle. 🎉');
    }).catch(err => {
        t.fail(err);
    });
});