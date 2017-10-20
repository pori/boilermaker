const resolve = require('rollup-plugin-node-resolve');
const commonjs = require('rollup-plugin-commonjs');
const babel = require('rollup-plugin-babel');

module.exports = {
	input: `src/main.js`,
	output: {
		file: 'bundle.js',
		format: 'cjs'
	},
	plugins: [
		babel(),
		resolve(),
		commonjs(),
	]
}