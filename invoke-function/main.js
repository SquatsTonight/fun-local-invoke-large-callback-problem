const BASE4 = require('./base64')

const Fc = require('@alicloud/fc2')

async function main() {
  const invokeOpts = {
    region: 'cn-hangzhou',
    accessKeyID: process.env.ACCESS_KEY_ID,
    accessKeySecret: process.env.ACCESS_KEY_SECRET,
    timeout: 30 * 1000
  }

  invokeOpts.endpoint = 'http://localhost:8000'
  const client = new Fc('1986114430573743', invokeOpts)
  try {
    const res = await client.invokeFunction(
      'fun',
      'event',
      // JSON.stringify({ foo: 'bar' }),
      JSON.stringify({ foo: BASE4 }),
    )
  } catch (e) {
    console.dir(e)
  }
}

main().then(() => console.log('done'))