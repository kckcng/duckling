-- Copyright (c) 2016-present, Facebook, Inc.
-- All rights reserved.
--
-- This source code is licensed under the BSD-style license found in the
-- LICENSE file in the root directory of this source tree.


{-# LANGUAGE OverloadedStrings #-}

module Duckling.Duration.TR.Corpus
  ( corpus
  ) where

import Data.String
import Prelude

import Duckling.Duration.Types
import Duckling.Locale
import Duckling.Resolve
import Duckling.Testing.Types
import Duckling.TimeGrain.Types (Grain (..))

corpus :: Corpus
corpus = (testContext {locale = makeLocale TR Nothing}, testOptions, allExamples)

allExamples :: [Example]
allExamples = concat
  [ examples (single 1 Second)
             [ "bir sn"
             , "1 saniye"
             , "1\""
             ]
  , examples (single 2 Minute)
             [ "2 dk"
             , "iki dakika"
             , "2'"
             ]
  , examples (single 30 Day)
             [ "30 gün"
             ]
  , examples (single 7 Week)
             [ "yedi hafta"
             ]
  , examples (single 1 Month)
             [ "1 ay"
             , "bir ay"
             ]
  , examples (single 3 Quarter)
             [ "3 çeyrek yıl"
             ]
  , examples (single 2 Year)
             [ "2 yıl"
             ]
  ]
