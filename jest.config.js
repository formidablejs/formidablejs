module.exports = {
    moduleNameMapper: {
        imba: '<rootDir>/node_modules/imba/dist/imba.node.js',
    },
    moduleFileExtensions: [
        'imba',
        'js',
        'json',
    ],
    testMatch: [
        '<rootDir>/test/**/*.imba'
    ],
    transform: {
        '\\.(imba)$': '<rootDir>/node_modules/@formidablejs/framework/bin/jest/preprocessor.js',
    },
};
