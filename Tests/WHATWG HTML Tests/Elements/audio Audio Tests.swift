// ===----------------------------------------------------------------------===//
//
// Copyright (c) 2025 Coen ten Thije Boonkkamp
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of project contributors
//
// SPDX-License-Identifier: Apache-2.0
//
// ===----------------------------------------------------------------------===//

import Testing
import WHATWG_HTML

@Suite struct `Audio Tests` {

    @Test func `Basic audio creation`() {
        let audio = Audio()
        #expect(Audio.tag == "audio")
        #expect(audio.src == nil)
        #expect(audio.controls == nil)
        #expect(audio.autoplay == nil)
        #expect(audio.loop == nil)
        #expect(audio.muted == nil)
        #expect(audio.preload == nil)
        #expect(audio.crossorigin == nil)
        #expect(audio.controlslist == nil)
        #expect(audio.disableremoteplayback == nil)
    }

    @Test func `Audio conforms to HTMLElement`() {
        let audio = Audio()
        let element: any WHATWG_HTML.Element.`Protocol` = audio
        #expect(type(of: element).tag == "audio")
    }

    @Test func `Audio with src attribute`() {
        let src = Src("audio-file.mp3")
        let audio = Audio(src: src)
        #expect(audio.src == src)
    }

    @Test func `Audio with controls`() {
        let controls = Controls()
        let audio = Audio(controls: controls)
        #expect(audio.controls == controls)
    }

    @Test func `Audio with autoplay`() {
        let autoplay = Autoplay()
        let audio = Audio(autoplay: autoplay)
        #expect(audio.autoplay == autoplay)
    }

    @Test func `Audio with loop`() {
        let loop = Loop()
        let audio = Audio(loop: loop)
        #expect(audio.loop == loop)
    }

    @Test func `Audio with muted`() {
        let muted = Muted()
        let audio = Audio(muted: muted)
        #expect(audio.muted == muted)
    }

    @Test func `Audio with crossorigin`() {
        let crossorigin = Crossorigin.anonymous
        let audio = Audio(crossorigin: crossorigin)
        #expect(audio.crossorigin == crossorigin)
    }

    @Test func `Audio with disable remote playback`() {
        let disableremoteplayback = DisableRemotePlayback()
        let audio = Audio(disableremoteplayback: disableremoteplayback)
        #expect(audio.disableremoteplayback == disableremoteplayback)
    }

    @Test func `Complete audio configuration`() {
        let src = Src("audio-file.mp3")
        let controls = Controls()
        let autoplay = Autoplay()
        let loop = Loop()
        let muted = Muted()
        let preload = Audio.Preload.metadata
        let crossorigin = Crossorigin.useCredentials
        let controlslist: Audio.ControlsList = .init(nodownload: true, noremoteplayback: true)
        let disableremoteplayback = DisableRemotePlayback()

        let audio = Audio(
            src: src,
            controls: controls,
            autoplay: autoplay,
            loop: loop,
            muted: muted,
            preload: preload,
            crossorigin: crossorigin,
            controlslist: controlslist,
            disableremoteplayback: disableremoteplayback
        )

        #expect(audio.src == src)
        #expect(audio.controls == controls)
        #expect(audio.autoplay == autoplay)
        #expect(audio.loop == loop)
        #expect(audio.muted == muted)
        #expect(audio.preload == preload)
        #expect(audio.crossorigin == crossorigin)
        #expect(audio.controlslist == controlslist)
        #expect(audio.disableremoteplayback == disableremoteplayback)
    }

    @Suite struct `Preload Options` {

        @Test func `Preload none`() {
            let preload = Audio.Preload.none
            let audio = Audio(preload: preload)
            #expect(audio.preload == preload)
            #expect(preload.rawValue == "none")
        }

        @Test func `Preload metadata`() {
            let preload = Audio.Preload.metadata
            let audio = Audio(preload: preload)
            #expect(audio.preload == preload)
            #expect(preload.rawValue == "metadata")
        }

        @Test func `Preload auto`() {
            let preload = Audio.Preload.auto
            let audio = Audio(preload: preload)
            #expect(audio.preload == preload)
            #expect(preload.rawValue == "auto")
        }
    }

    @Suite struct `Controls List` {

        @Test func `Default controls list`() {
            let controlslist = Audio.ControlsList()
            #expect(controlslist.nodownload == false)
            #expect(controlslist.nofullscreen == false)
            #expect(controlslist.noremoteplayback == false)
            #expect(controlslist.description.isEmpty)
        }

        @Test func `Controls list with nodownload`() {
            let controlslist = Audio.ControlsList(nodownload: true)
            #expect(controlslist.nodownload == true)
            #expect(controlslist.description == "nodownload")
        }

        @Test func `Controls list with nofullscreen`() {
            let controlslist = Audio.ControlsList(nofullscreen: true)
            #expect(controlslist.nofullscreen == true)
            #expect(controlslist.description == "nofullscreen")
        }

        @Test func `Controls list with noremoteplayback`() {
            let controlslist = Audio.ControlsList(noremoteplayback: true)
            #expect(controlslist.noremoteplayback == true)
            #expect(controlslist.description == "noremoteplayback")
        }

        @Test func `Controls list with multiple options`() {
            let controlslist = Audio.ControlsList(
                nodownload: true,
                nofullscreen: true,
                noremoteplayback: true
            )
            #expect(controlslist.nodownload == true)
            #expect(controlslist.nofullscreen == true)
            #expect(controlslist.noremoteplayback == true)
            #expect(controlslist.description == "nodownload nofullscreen noremoteplayback")
        }

        @Test func `Controls list is hashable`() {
            let controlslist1 = Audio.ControlsList(nodownload: true)
            let controlslist2 = Audio.ControlsList(nodownload: true)
            let controlslist3 = Audio.ControlsList(nofullscreen: true)

            #expect(controlslist1 == controlslist2)
            #expect(controlslist1 != controlslist3)

            let set: Set<Audio.ControlsList> = [controlslist1, controlslist2, controlslist3]
            #expect(set.count == 2)
        }
    }

    @Suite struct `Common Use Cases` {

        @Test func `Simple audio with controls`() {
            let src = Src("podcast.mp3")
            let controls = Controls()
            let audio = Audio(src: src, controls: controls)

            #expect(audio.src == src)
            #expect(audio.controls == controls)
        }

        @Test func `Background music with autoplay and loop`() {
            let src = Src("background-music.mp3")
            let autoplay = Autoplay()
            let loop = Loop()
            let muted = Muted()

            let audio = Audio(src: src, autoplay: autoplay, loop: loop, muted: muted)

            #expect(audio.src == src)
            #expect(audio.autoplay == autoplay)
            #expect(audio.loop == loop)
            #expect(audio.muted == muted)
        }

        @Test func `Podcast player`() {
            let src = Src("episode-001.mp3")
            let controls = Controls()
            let preload = Audio.Preload.metadata

            let audio = Audio(src: src, controls: controls, preload: preload)

            #expect(audio.src == src)
            #expect(audio.controls == controls)
            #expect(audio.preload == preload)
        }

        @Test func `Audio with multiple sources (no src attribute)`() {
            let controls = Controls()
            let preload = Audio.Preload.none

            let audio = Audio(controls: controls, preload: preload)

            #expect(audio.src == nil)
            #expect(audio.controls == controls)
            #expect(audio.preload == preload)
        }

        @Test func `Audio with CORS enabled`() {
            let src = Src("https://example.com/audio.mp3")
            let controls = Controls()
            let crossorigin = Crossorigin.anonymous

            let audio = Audio(src: src, controls: controls, crossorigin: crossorigin)

            #expect(audio.src == src)
            #expect(audio.controls == controls)
            #expect(audio.crossorigin == crossorigin)
        }

        @Test func `Audio with restricted controls`() {
            let src = Src("restricted-audio.mp3")
            let controls = Controls()
            let controlslist = Audio.ControlsList(nodownload: true, noremoteplayback: true)

            let audio = Audio(src: src, controls: controls, controlslist: controlslist)

            #expect(audio.src == src)
            #expect(audio.controls == controls)
            #expect(audio.controlslist == controlslist)
        }
    }

    @Suite struct `Accessibility and User Experience` {

        @Test func `Audio with considerate autoplay`() {
            let src = Src("notification.mp3")
            let autoplay = Autoplay()
            let muted = Muted()
            let preload = Audio.Preload.auto

            let audio = Audio(src: src, autoplay: autoplay, muted: muted, preload: preload)

            #expect(audio.autoplay == autoplay)
            #expect(audio.muted == muted)
        }

        @Test func `Audio with user-friendly preloading`() {
            let src = Src("large-audio.mp3")
            let controls = Controls()
            let preload = Audio.Preload.metadata

            let audio = Audio(src: src, controls: controls, preload: preload)

            #expect(audio.preload == preload)
        }

        @Test func `Audio without autoplay for better UX`() {
            let src = Src("music.mp3")
            let controls = Controls()

            let audio = Audio(src: src, controls: controls)

            #expect(audio.autoplay == nil)
            #expect(audio.controls == controls)
        }
    }

    @Suite struct `Integration Tests` {

        @Test func `Multiple audio elements`() {
            let audio1 = Audio(src: Src("track1.mp3"), controls: Controls())
            let audio2 = Audio(src: Src("track2.mp3"), controls: Controls())
            let audio3 = Audio(src: Src("track3.mp3"), controls: Controls())

            let audioElements = [audio1, audio2, audio3]

            #expect(audioElements.count == 3)
            audioElements.forEach { audio in
                #expect(audio is any WHATWG_HTML.Element.`Protocol`)
                #expect(type(of: audio).tag == "audio")
                #expect(audio.controls != nil)
            }
        }

        @Test func `Audio playlist simulation`() {
            let playlist = [
                Audio(src: Src("song1.mp3"), controls: Controls(), preload: Audio.Preload.metadata),
                Audio(src: Src("song2.mp3"), controls: Controls(), preload: Audio.Preload.metadata),
                Audio(src: Src("song3.mp3"), controls: Controls(), preload: Audio.Preload.metadata),
            ]

            #expect(playlist.count == 3)
            playlist.forEach { audio in
                #expect(audio.preload == Audio.Preload.metadata)
                #expect(audio.controls != nil)
            }
        }

        @Test func `Audio as HTMLElement`() {
            let audio = Audio(src: Src("test.mp3"))
            let element: any WHATWG_HTML.Element.`Protocol` = audio

            #expect(type(of: element).tag == "audio")
        }
    }

    @Suite struct `Performance and Optimization` {

        @Test func `Audio with no preload for bandwidth conservation`() {
            let src = Src("large-file.mp3")
            let controls = Controls()
            let preload = Audio.Preload.none

            let audio = Audio(src: src, controls: controls, preload: preload)

            #expect(audio.preload == preload)
        }

        @Test func `Audio with metadata preload for quick info`() {
            let src = Src("podcast.mp3")
            let controls = Controls()
            let preload = Audio.Preload.metadata

            let audio = Audio(src: src, controls: controls, preload: preload)

            #expect(audio.preload == preload)
        }

        @Test func `Audio with auto preload for immediate playback`() {
            let src = Src("short-clip.mp3")
            let controls = Controls()
            let preload = Audio.Preload.auto

            let audio = Audio(src: src, controls: controls, preload: preload)

            #expect(audio.preload == preload)
        }
    }
}
