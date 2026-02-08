import { writeFile } from 'node:fs/promises';
import { Innertube } from 'youtubei.js';

try {
  const yt = await Innertube.create();
  const { basic_info: { id, title, duration, author } } =
    await yt.getBasicInfo('dQw4w9WgXcQ');

  const data = JSON.stringify({ id, title, duration, author }, null, 2);
  console.log(data);
  await writeFile('yt_probe.json', data);
} catch (e) {
  await writeFile('yt_probe.err', e?.stack ?? String(e));
  process.exit(1);
}
