module.exports = {
    testEnvironment: 'node',
    moduleNameMapper: {
        imba: '<rootDir>/node_modules/imba/dist/imba.node.js',
    },
    moduleFileExtensions: [
        'imba',
        'js',
        'ts',
        'json',
    ],
    testMatch: [
        '<rootDir>/test/**/*.imba',
        '<rootDir>/test/**/*.ts',
    ],
    transform: {
        '\\.(imba)$': '<rootDir>/node_modules/@formidablejs/framework/bin/jest/preprocessor.js',
    },
    transformIgnorePatterns: [
        'node_modules/(?!(.*\\.mjs$|@paralleldrive/cuid2|@formidablejs|supertest|superagent|formidable|@paralleldrive))'
    ]
};
