module Snap.Snaplet.HandleIt( module Snap.Snaplet.HandleIt.Header
                            , module Snap.Snaplet.HandleIt.Router
                            , handleItInit) where

import Snap.Snaplet(SnapletInit, makeSnaplet)
import Snap.Snaplet.HandleIt.Header
import Snap.Snaplet.HandleIt.Router
import Snap.Snaplet.Heist(HasHeist)
import Paths_snaplet_handle_it

-- | Initiates Handle-it
handleItInit :: HasHeist a => Router () -> SnapletInit a (HandleIt Routing)
handleItInit routes = makeSnaplet "handleIt" "" Nothing $ do
     manageRouting (routing routes) >>= return . HandleIt
