---
layout: post.html
title: Sincronizzarmi
tags: [syncthing, code, git, dropbox]
---

Da sempre lavoro con piú di un computer e da sempre mi sono imbattuto nel
problema annoso di sincronizzare le varie postazioni.
Comandi, aliases, scripts, documenti e chi più ne ha più ne metta.
Quando sei al lavoroz
Il problema si divide in due parti:

- creare un ambiente di lavoro *uniforme*, cosí che spostarsi da una
  macchina all'altra non sia un costante shock;
- lavorare sugli *stessi* file su entrambe le macchine senza che questo
  includa vivere perennemente attaccati ad una USB.

## Sincro delle configurazioni

Nel caso delle configurazioni, la maggior parte di esse sono salvate in
file di testo (i cosidetti dotfile) nella mia home.
Come molti altri i miei dotfiles sono salvati su
[GitHub](https://github.com/cinghiopinghio/config-files) e
pubblicamente consultabili.

## Sincro dei files

Qui la cosa si fa complicata, infatti molte sono le soluzioni ma la maggior
parte di loro richiedono l'installazione di un server personale, di
controllare un database, di dipendere da qualche impresa esterna:

- Dropbox, Insync (Gdrive), Mega non sono state nemmeno prese in
  considerazione, anche se sono costretto ad utilizzare Dropbox per lavoro;
- [Pydio](https://pyd.io/), [OwnCloud](www.owncloud.org) si presentano come
  alternative open source con una tonnellata di opzioni, ma richiedono
  di mantenere un server personale o ricadere nuovamente nelle mani di
  compagnie private;
- [Bittorrent Sync](http://www.getsync.com), non richiede un server
  centrale e si basa sulla tecnologia torrent, closed source.

La soluzione l'ho incontrata da poco: [Syncthing](http://syncthing.net/).
Uno sviluppo libero-open source che grazie alla tecnologia peer-to-peer
costruisce una rete di computer che scambiano dati senza il bisogno di un
sever centrale (a parte per scoprirsi in rete), esattamenre come funziona
il torrent.
