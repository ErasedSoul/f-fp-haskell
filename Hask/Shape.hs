{-
    Making  own Type and TypeClasses 

-}
module Shape(Point(..)
, Shape(Circle,Rectangle)
,surface,
makeSimpleCircle
)
where
import Prelude
data Shape = Circle Point Float | Rectangle Point Point deriving (Show)
surface :: Shape -> Float
surface (Circle _ r) = pi * r ^ 2
surface (Rectangle (Point a b) (Point c d)) = (abs $ a - c)*(abs $ b - d)
data Point = Point Float Float deriving(Eq,Show)


{-
  If we dont want to deal with point in a cirlce we can 
  make the point  0 0 like this as implemented below 
-}
makeSimpleCircle :: Float -> Shape 
makeSimpleCircle x = Circle (Point 0 0) x










