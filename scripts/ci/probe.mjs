import { Innertube } from 'youtubei.js';

const yt = await Innertube.create();
const { basic_info } = await yt.getBasicInfo('jNQXAC9IVRw');

console.log(JSON.stringify({
  id: basic_info.id ?? 'jNQXAC9IVRw',
  title: basic_info.title ?? null,
  channel: basic_info.channel?.name ?? null,
  duration: Number(basic_info.duration) || null
}, null, 2));
