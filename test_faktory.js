const faktory = require("faktory-worker");

(async () => {
  const client = await faktory.connect();
  let count = 0;
  setInterval(async ()=>{
    await client.job("TestJob", `count ${count}`).push();
    await client.close(); // reuse client if possible! remember to disconnect!
  }, 1000)
})().catch((e) => console.error(e));