import { writeFile } from 'node:fs/promises';
import { Innertube } from 'youtubei.js';

try {
  const yt = await Innertube.create();
  const info = await yt.getBasicInfo('dQw4w9WgXcQ');

  const { id, title, duration, author } = info.basic_info;
  const data = JSON.stringify({ id, title, duration, author }, null, 2);

  console.log(data);
  await writeFile('yt_probe.json', data);
} catch (err) {
  await writeFile('yt_probe.err', err.stack ?? String(err));
  process.exit(1);
}