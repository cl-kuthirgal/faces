(in-package #:faces)

;; Features to use
;; ---------------
;; Most of these will take a character's glyph and return certain values

;; Start with features from 'The Anatomy of a Thousand Typefaces
;; - stroke-contrast: Ratio between thinnest and thickest stroke.
;; - x-height
;; - proportion: Width to height of lowercase 'o'
;; - weight: Ratio of filled to unfilled bounding box. This looks pretty
;;           English specific in certain sense.

;; More features which might be tuned in priority based on a discriminative
;; training
;; - n-holes: Number of holes in the shape
;; - side-profiles: Off topic, what is the meaning of a fully circular side
;;                  profile? It does look sufficient to represent everything.
;; - characteristic-angle: Angles with the most discriminative side profiles.
