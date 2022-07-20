import main from "../src/app";

describe(`run server`, () => {
    it(`should not crash`, async (done) => {
        await main();
        done();
    });
});
