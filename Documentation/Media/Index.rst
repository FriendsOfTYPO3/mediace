.. ==================================================
.. FOR YOUR INFORMATION
.. --------------------------------------------------
.. -*- coding: utf-8 -*- with BOM.

.. include:: ../Includes.txt


.. _cobj-media:

MEDIA
^^^^^

The Media content element is a dispatcher which gets its HTML output
from one of the available render objects. By default, these render
objects include :ref:`SWFOBJECT <cobj-swfobject>` (Flash driven by
JavaScript), :ref:`QTOBJECT <cobj-qtobject>` (QuickTime driven by
JavaScript) and :ref:`MULTIMEDIA <cobj-multimedia>` (the original
Multimedia object rendered with EMBED tags).

The property "renderType" defines which object will be used for
rendering. If set to its default value "auto", the Media content
element uses the media file's extension to choose the right renderer.
This auto-detection may not work as well for external URLs so setting
the renderType manually is preferable in that case.

If one of the existing renderTypes does not meet your needs, new
renderTypes can be registered and rendered with a custom extension.

The Media content element contains the following 3 :sup:`rd` party
files in typo3/contrib/flashmedia:

- qtobject/qtobject.js (JavaScript for :ref:`QTOBJECT <cobj-qtobject>`)

- swfobject/swfobject.js (JavaScript for :ref:`SWFOBJECT <cobj-swfobject>`)

- swfobject/expressInstall.swf (This is displayed if the client’s Flash
  version is too low)

- flvplayer.swf (TYPO3 video player for flv, swf, mp4, m4u etc)

- player.swf (Audio player from 1pixelout)

- player.txt (License for the audio player)

If you want to use a different player, it can be configured via
TypoScript.

.. note::

   Files are treated as URLs. You need to set fully qualified URLs. Use
   config.baseURL and/or config.absRefPrefix to get fully qualified URLs
   automatically.


.. _cobj-media-table:

.. ### BEGIN~OF~TABLE ###

.. container:: table-row

   Property
         flexParams

   Data type
         string /:ref:`stdWrap <t3tsref:stdwrap>`

   Description
         Used for Flexform configuration of the content element

   Default
         flexParams.field = pi\_flexform


.. container:: table-row

   Property
         alternativeContent

   Data type
         :ref:`->stdWrap <t3tsref:stdwrap>`

   Description
         Alternative content, which is printed out, if the client deactivated
         JavaScript or has no Flash. Otherwise, the media will replace this
         content.

   Default
         alternativeContent.field = bodytext


.. container:: table-row

   Property
         type

   Data type
         string /:ref:`stdWrap <t3tsref:stdwrap>`

   Description
         Defines media type: "video" or "audio".

   Default
         video


.. container:: table-row

   Property
         renderType

   Data type
         string /:ref:`stdWrap <t3tsref:stdwrap>`

   Description
         Used to select the render object.

         Possible values are: auto, swf, qt, embed.

         Extensions may add a custom renderType as well.

         swf will be used, if renderType is "auto".

         **Note:** renderType embed will be rendered by the cObject
         :ref:`MULTIMEDIA <cobj-multimedia>`, swf by
         :ref:`SWFOBJECT <cobj-swfobject>` and qt by :ref:`QTOBJECT <cobj-qtobject>`.
         For the according documentation see the sections on these cObjects.

   Default
         auto


.. container:: table-row

   Property
         allowEmptyUrl

   Data type
         boolean

   Description
         If set to 0, you see a warning if no file/URL is configured. If you do
         some advanced setup such as configuring a JavaScript-driven player
         with a playlist, you may use the object without a URL and need to set
         the value to 1.

   Default
         0


.. container:: table-row

   Property
         fileExtHandler

   Data type
         array

   Description
         The mappings between file extensions and render types can be
         configured here and will be used when renderType = auto.

         Possible values are MEDIA, SWF, QT.

         **Example:** ::

            fileExtHandler {
              default = MEDIA
              mp3 = SWF
              mp4 = SWF
              m4v = SWF
              mov = QT
              avi = MEDIA
              asf = MEDIA
              class = MEDIA
              swa = SWF
            }


.. container:: table-row

   Property
         mimeConf.swfobject

         mimeConf.qtobject

   Data type
         array

   Description
         Configuration for a specific renderType. For each media type you can
         set default values.

         **Example:** ::

            mimeConf.swfobject.audio {
              defaultWidth = 100
              defaultHeight = 50
            }


.. container:: table-row

   Property
         file

   Data type
         string /:ref:`stdWrap <t3tsref:stdwrap>`

   Description
         URL of the media file.


.. container:: table-row

   Property
         parameter

   Data type
         array

   Description
         There are some configuration values which are set via the media
         content element. They are used to override the default settings. It is
         not expected to use them directly via TypoScript.

         parameter {

         mmFilemmRenderType

         mmforcePlayer

         mmType

         mmWidth

         mmHeight

         mmMediaOptions

         mmMediaOptionsContainer

         }


.. container:: table-row

   Property
         forcePlayer

   Data type
         string /:ref:`stdWrap <t3tsref:stdwrap>`

   Description
         If the file is a URL and forcePlayer is not set, the URL will be
         called directly instead of using a player.


.. container:: table-row

   Property
         width

   Data type
         integer /:ref:`stdWrap <t3tsref:stdwrap>`

   Description
         Media width, will be overridden by parameter.mmWidth.


.. container:: table-row

   Property
         height

   Data type
         integer /:ref:`stdWrap <t3tsref:stdwrap>`

   Description
         Media height, will be overridden by parameter.mmHeight.


.. container:: table-row

   Property
         stdWrap

   Data type
         :ref:`->stdWrap <t3tsref:stdwrap>`


.. ###### END~OF~TABLE ######


[tsref:(cObject).MEDIA]

