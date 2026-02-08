import { Innertube } from 'youtubei.js';

const yt = await Innertube.create();
const { basic_info } = await yt.getBasicInfo('VKadcLB5uyA');

console.log(JSON.stringify({
  id: basic_info.id ?? 'VKadcLB5uyA',
  title: basic_info.title ?? null,
  channel: basic_info.channel?.name ?? null,
  duration: Number(basic_info.duration) || null
}, null, 2));
