const fs = require('fs');

async function resolveInnertube() {
  try {
    return require('youtubei.js').Innertube;
  } catch (_err) {
    const mod = await import('youtubei.js');
    return mod.Innertube || (mod.default && mod.default.Innertube);
  }
}

async function probe() {
  try {
    const Innertube = await resolveInnertube();

    if (!Innertube || typeof Innertube.create !== 'function') {
      throw new Error('No se pudo resolver Innertube desde youtubei.js');
    }

    const youtube = await Innertube.create();
    const video = await youtube.getInfo('dQw4w9WgXcQ');

    const data = {
      id: video?.basic_info?.id ?? null,
      title: video?.basic_info?.title ?? null,
      duration: video?.basic_info?.duration ?? null,
      channel: video?.basic_info?.author ?? null
    };

    console.log(JSON.stringify(data, null, 2));
    fs.writeFileSync('yt_probe.json', JSON.stringify(data, null, 2));
  } catch (err) {
    const msg = err?.stack || err?.message || String(err);
    console.error('Error:', msg);
    fs.writeFileSync('yt_probe.err', `${msg}\n`);
    process.exit(1);
  }
}

probe();
