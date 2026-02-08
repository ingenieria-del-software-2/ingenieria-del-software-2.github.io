const fs = require('fs');
const { Innertube } = require('youtubei.js');

(async () => {
  try {
    const yt = await Innertube.create();
    const info = await yt.getBasicInfo('dQw4w9WgXcQ');

    const data = JSON.stringify(info.basic_info, ['id', 'title', 'duration', 'author'], 2);

    console.log(data);
    fs.writeFileSync('yt_probe.json', data);
  } catch (err) {
    fs.writeFileSync('yt_probe.err', err.stack || String(err));
    process.exit(1);
  }
})();