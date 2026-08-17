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
        let audio = WHATWG.HTML.Element.Audio()
        #expect(WHATWG.HTML.Element.Audio.tag == "audio")
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
        let audio = WHATWG.HTML.Element.Audio()
        let element: any WHATWG.HTML.Element.`Protocol` = audio
        #expect(type(of: element).tag == "audio")
    }

    @Test func `Audio with src attribute`() {
        let src = WHATWG.HTML.Attribute.Src("audio-file.mp3")
        let audio = WHATWG.HTML.Element.Audio(src: src)
        #expect(audio.src == src)
    }

    @Test func `Audio with controls`() {
        let controls = WHATWG.HTML.Attribute.Controls()
        let audio = WHATWG.HTML.Element.Audio(controls: controls)
        #expect(audio.controls == controls)
    }

    @Test func `Audio with autoplay`() {
        let autoplay = WHATWG.HTML.Attribute.Autoplay()
        let audio = WHATWG.HTML.Element.Audio(autoplay: autoplay)
        #expect(audio.autoplay == autoplay)
    }

    @Test func `Audio with loop`() {
        let loop = WHATWG.HTML.Attribute.Loop()
        let audio = WHATWG.HTML.Element.Audio(loop: loop)
        #expect(audio.loop == loop)
    }

    @Test func `Audio with muted`() {
        let muted = WHATWG.HTML.Attribute.Muted()
        let audio = WHATWG.HTML.Element.Audio(muted: muted)
        #expect(audio.muted == muted)
    }

    @Test func `Audio with crossorigin`() {
        let crossorigin = WHATWG.HTML.Attribute.Crossorigin.anonymous
        let audio = WHATWG.HTML.Element.Audio(crossorigin: crossorigin)
        #expect(audio.crossorigin == crossorigin)
    }

    @Test func `Audio with disable remote playback`() {
        let disableremoteplayback = WHATWG.HTML.Attribute.DisableRemotePlayback()
        let audio = WHATWG.HTML.Element.Audio(disableremoteplayback: disableremoteplayback)
        #expect(audio.disableremoteplayback == disableremoteplayback)
    }

    @Test func `Complete audio configuration`() {
        let src = WHATWG.HTML.Attribute.Src("audio-file.mp3")
        let controls = WHATWG.HTML.Attribute.Controls()
        let autoplay = WHATWG.HTML.Attribute.Autoplay()
        let loop = WHATWG.HTML.Attribute.Loop()
        let muted = WHATWG.HTML.Attribute.Muted()
        let preload = WHATWG.HTML.Element.Audio.Preload.metadata
        let crossorigin = WHATWG.HTML.Attribute.Crossorigin.useCredentials
        let controlslist: WHATWG.HTML.Element.Audio.ControlsList = .init(
            nodownload: true,
            noremoteplayback: true
        )
        let disableremoteplayback = WHATWG.HTML.Attribute.DisableRemotePlayback()

        let audio = WHATWG.HTML.Element.Audio(
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
            let preload = WHATWG.HTML.Element.Audio.Preload.none
            let audio = WHATWG.HTML.Element.Audio(preload: preload)
            #expect(audio.preload == preload)
            #expect(preload.rawValue == "none")
        }

        @Test func `Preload metadata`() {
            let preload = WHATWG.HTML.Element.Audio.Preload.metadata
            let audio = WHATWG.HTML.Element.Audio(preload: preload)
            #expect(audio.preload == preload)
            #expect(preload.rawValue == "metadata")
        }

        @Test func `Preload auto`() {
            let preload = WHATWG.HTML.Element.Audio.Preload.auto
            let audio = WHATWG.HTML.Element.Audio(preload: preload)
            #expect(audio.preload == preload)
            #expect(preload.rawValue == "auto")
        }
    }

    @Suite struct `Controls List` {

        @Test func `Default controls list`() {
            let controlslist = WHATWG.HTML.Element.Audio.ControlsList()
            #expect(controlslist.nodownload == false)
            #expect(controlslist.nofullscreen == false)
            #expect(controlslist.noremoteplayback == false)
            #expect(controlslist.description.isEmpty)
        }

        @Test func `Controls list with nodownload`() {
            let controlslist = WHATWG.HTML.Element.Audio.ControlsList(nodownload: true)
            #expect(controlslist.nodownload == true)
            #expect(controlslist.description == "nodownload")
        }

        @Test func `Controls list with nofullscreen`() {
            let controlslist = WHATWG.HTML.Element.Audio.ControlsList(nofullscreen: true)
            #expect(controlslist.nofullscreen == true)
            #expect(controlslist.description == "nofullscreen")
        }

        @Test func `Controls list with noremoteplayback`() {
            let controlslist = WHATWG.HTML.Element.Audio.ControlsList(noremoteplayback: true)
            #expect(controlslist.noremoteplayback == true)
            #expect(controlslist.description == "noremoteplayback")
        }

        @Test func `Controls list with multiple options`() {
            let controlslist = WHATWG.HTML.Element.Audio.ControlsList(
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
            let controlslist1 = WHATWG.HTML.Element.Audio.ControlsList(nodownload: true)
            let controlslist2 = WHATWG.HTML.Element.Audio.ControlsList(nodownload: true)
            let controlslist3 = WHATWG.HTML.Element.Audio.ControlsList(nofullscreen: true)

            #expect(controlslist1 == controlslist2)
            #expect(controlslist1 != controlslist3)

            let set: Set<WHATWG.HTML.Element.Audio.ControlsList> = [
                controlslist1, controlslist2, controlslist3,
            ]
            #expect(set.count == 2)
        }
    }

    @Suite struct `Common Use Cases` {

        @Test func `Simple audio with controls`() {
            let src = WHATWG.HTML.Attribute.Src("podcast.mp3")
            let controls = WHATWG.HTML.Attribute.Controls()
            let audio = WHATWG.HTML.Element.Audio(src: src, controls: controls)

            #expect(audio.src == src)
            #expect(audio.controls == controls)
        }

        @Test func `Background music with autoplay and loop`() {
            let src = WHATWG.HTML.Attribute.Src("background-music.mp3")
            let autoplay = WHATWG.HTML.Attribute.Autoplay()
            let loop = WHATWG.HTML.Attribute.Loop()
            let muted = WHATWG.HTML.Attribute.Muted()

            let audio = WHATWG.HTML.Element.Audio(
                src: src,
                autoplay: autoplay,
                loop: loop,
                muted: muted
            )

            #expect(audio.src == src)
            #expect(audio.autoplay == autoplay)
            #expect(audio.loop == loop)
            #expect(audio.muted == muted)
        }

        @Test func `Podcast player`() {
            let src = WHATWG.HTML.Attribute.Src("episode-001.mp3")
            let controls = WHATWG.HTML.Attribute.Controls()
            let preload = WHATWG.HTML.Element.Audio.Preload.metadata

            let audio = WHATWG.HTML.Element.Audio(src: src, controls: controls, preload: preload)

            #expect(audio.src == src)
            #expect(audio.controls == controls)
            #expect(audio.preload == preload)
        }

        @Test func `Audio with multiple sources (no src attribute)`() {
            let controls = WHATWG.HTML.Attribute.Controls()
            let preload = WHATWG.HTML.Element.Audio.Preload.none

            let audio = WHATWG.HTML.Element.Audio(controls: controls, preload: preload)

            #expect(audio.src == nil)
            #expect(audio.controls == controls)
            #expect(audio.preload == preload)
        }

        @Test func `Audio with CORS enabled`() {
            let src = WHATWG.HTML.Attribute.Src("https://example.com/audio.mp3")
            let controls = WHATWG.HTML.Attribute.Controls()
            let crossorigin = WHATWG.HTML.Attribute.Crossorigin.anonymous

            let audio = WHATWG.HTML.Element.Audio(
                src: src,
                controls: controls,
                crossorigin: crossorigin
            )

            #expect(audio.src == src)
            #expect(audio.controls == controls)
            #expect(audio.crossorigin == crossorigin)
        }

        @Test func `Audio with restricted controls`() {
            let src = WHATWG.HTML.Attribute.Src("restricted-audio.mp3")
            let controls = WHATWG.HTML.Attribute.Controls()
            let controlslist = WHATWG.HTML.Element.Audio.ControlsList(
                nodownload: true,
                noremoteplayback: true
            )

            let audio = WHATWG.HTML.Element.Audio(
                src: src,
                controls: controls,
                controlslist: controlslist
            )

            #expect(audio.src == src)
            #expect(audio.controls == controls)
            #expect(audio.controlslist == controlslist)
        }
    }

    @Suite struct `Accessibility and User Experience` {

        @Test func `Audio with considerate autoplay`() {
            let src = WHATWG.HTML.Attribute.Src("notification.mp3")
            let autoplay = WHATWG.HTML.Attribute.Autoplay()
            let muted = WHATWG.HTML.Attribute.Muted()
            let preload = WHATWG.HTML.Element.Audio.Preload.auto

            let audio = WHATWG.HTML.Element.Audio(
                src: src,
                autoplay: autoplay,
                muted: muted,
                preload: preload
            )

            #expect(audio.autoplay == autoplay)
            #expect(audio.muted == muted)
        }

        @Test func `Audio with user-friendly preloading`() {
            let src = WHATWG.HTML.Attribute.Src("large-audio.mp3")
            let controls = WHATWG.HTML.Attribute.Controls()
            let preload = WHATWG.HTML.Element.Audio.Preload.metadata

            let audio = WHATWG.HTML.Element.Audio(src: src, controls: controls, preload: preload)

            #expect(audio.preload == preload)
        }

        @Test func `Audio without autoplay for better UX`() {
            let src = WHATWG.HTML.Attribute.Src("music.mp3")
            let controls = WHATWG.HTML.Attribute.Controls()

            let audio = WHATWG.HTML.Element.Audio(src: src, controls: controls)

            #expect(audio.autoplay == nil)
            #expect(audio.controls == controls)
        }
    }

    @Suite struct `Integration Tests` {

        @Test func `Multiple audio elements`() {
            let audio1 = WHATWG.HTML.Element.Audio(
                src: WHATWG.HTML.Attribute.Src("track1.mp3"),
                controls: WHATWG.HTML.Attribute.Controls()
            )
            let audio2 = WHATWG.HTML.Element.Audio(
                src: WHATWG.HTML.Attribute.Src("track2.mp3"),
                controls: WHATWG.HTML.Attribute.Controls()
            )
            let audio3 = WHATWG.HTML.Element.Audio(
                src: WHATWG.HTML.Attribute.Src("track3.mp3"),
                controls: WHATWG.HTML.Attribute.Controls()
            )

            let audioElements = [audio1, audio2, audio3]

            #expect(audioElements.count == 3)
            audioElements.forEach { audio in
                #expect(audio is any WHATWG.HTML.Element.`Protocol`)
                #expect(type(of: audio).tag == "audio")
                #expect(audio.controls != nil)
            }
        }

        @Test func `Audio playlist simulation`() {
            let playlist = [
                WHATWG.HTML.Element.Audio(
                    src: WHATWG.HTML.Attribute.Src("song1.mp3"),
                    controls: WHATWG.HTML.Attribute.Controls(),
                    preload: WHATWG.HTML.Element.Audio.Preload.metadata
                ),
                WHATWG.HTML.Element.Audio(
                    src: WHATWG.HTML.Attribute.Src("song2.mp3"),
                    controls: WHATWG.HTML.Attribute.Controls(),
                    preload: WHATWG.HTML.Element.Audio.Preload.metadata
                ),
                WHATWG.HTML.Element.Audio(
                    src: WHATWG.HTML.Attribute.Src("song3.mp3"),
                    controls: WHATWG.HTML.Attribute.Controls(),
                    preload: WHATWG.HTML.Element.Audio.Preload.metadata
                ),
            ]

            #expect(playlist.count == 3)
            playlist.forEach { audio in
                #expect(audio.preload == WHATWG.HTML.Element.Audio.Preload.metadata)
                #expect(audio.controls != nil)
            }
        }

        @Test func `Audio as HTMLElement`() {
            let audio = WHATWG.HTML.Element.Audio(src: WHATWG.HTML.Attribute.Src("test.mp3"))
            let element: any WHATWG.HTML.Element.`Protocol` = audio

            #expect(type(of: element).tag == "audio")
        }
    }

    @Suite struct `Performance and Optimization` {

        @Test func `Audio with no preload for bandwidth conservation`() {
            let src = WHATWG.HTML.Attribute.Src("large-file.mp3")
            let controls = WHATWG.HTML.Attribute.Controls()
            let preload = WHATWG.HTML.Element.Audio.Preload.none

            let audio = WHATWG.HTML.Element.Audio(src: src, controls: controls, preload: preload)

            #expect(audio.preload == preload)
        }

        @Test func `Audio with metadata preload for quick info`() {
            let src = WHATWG.HTML.Attribute.Src("podcast.mp3")
            let controls = WHATWG.HTML.Attribute.Controls()
            let preload = WHATWG.HTML.Element.Audio.Preload.metadata

            let audio = WHATWG.HTML.Element.Audio(src: src, controls: controls, preload: preload)

            #expect(audio.preload == preload)
        }

        @Test func `Audio with auto preload for immediate playback`() {
            let src = WHATWG.HTML.Attribute.Src("short-clip.mp3")
            let controls = WHATWG.HTML.Attribute.Controls()
            let preload = WHATWG.HTML.Element.Audio.Preload.auto

            let audio = WHATWG.HTML.Element.Audio(src: src, controls: controls, preload: preload)

            #expect(audio.preload == preload)
        }
    }
}
