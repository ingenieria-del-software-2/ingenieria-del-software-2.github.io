import { mkdir, readFile, writeFile } from 'node:fs/promises';
import { dirname } from 'node:path';
import { Innertube } from 'youtubei.js';

const [SRC, DEST] = ['data/material.yaml', 'data/ytmeta/generated.json'];
const yt = await Innertube.create();
const text = await readFile(SRC, 'utf8');
const ids = [...new Set([...text.matchAll(/(?:v=|shorts\/|embed\/|youtu\.be\/)([\w-]{11})/g)].map(m => m[1]))];

const data = await Promise.all(ids.map(async (id) => {
  const { basic_info: i = {} } = await yt.getBasicInfo(id).catch(err => {
    console.error(id, err?.message);
    return {};
  });

  return [id, {
    title: i.title ?? null,
    duration: Number(i.duration) || null,
    thumb: i.thumbnail?.sort((a, b) => b.width - a.width)[0]?.url ?? `https://i.ytimg.com/vi/${id}/hqdefault.jpg`  }];
}));

await mkdir(dirname(DEST), { recursive: true });
await writeFile(DEST, JSON.stringify(Object.fromEntries(data), null, 2));