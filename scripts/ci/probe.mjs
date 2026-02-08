import { Innertube } from 'youtubei.js';

const yt = await Innertube.create();
const { basic_info } = await yt.getBasicInfo('dQw4w9WgXcQ');

console.log(JSON.stringify({
  id: basic_info.id ?? 'dQw4w9WgXcQ',
  title: basic_info.title ?? null,
  channel: basic_info.channel?.name ?? null,
  duration: Number(basic_info.duration) || null
}, null, 2));
