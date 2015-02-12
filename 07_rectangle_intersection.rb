
# Write a function, `rec_intersection(rect1, rect2)` and returns the
# intersection of the two.
#
# Rectangles are represented as a pair of coordinate-pairs: the
# bottom-left and top-right coordinates (given in `[x, y]` notation).
#
# Hint: You can calculate the left-most x coordinate of the
# intersection by taking the maximum of the left-most x coordinate of
# each rectangle. Likewise, you can calculate the top-most y
# coordinate of the intersection by taking the minimum of the top most
# y coordinate of each rectangle.


def rec_intersection(rect1, rect2)
  x1 = [rect1[0][0],rect2[0][0]].max
  y1 = [rect1[0][1],rect2[0][1]].max
  y2 = [rect2[1][1],rect1[1][1]].min
  x2 = [rect2[1][0],rect1[1][0]].min
  if rect2[0][0] > rect1[1][0] || rect2[0][1] > rect1[1][1]
    return nil
  else
    return [[x1,y1],[x2,y2]]
  end
end

#or
def rec_intersection(rect1, rect2)
  if [rect1[0][0],rect1[1][0]].max < [rect2[0][0],rect2[1][0]].min || [rect2[0][1],rect2[1][1]].min > [rect1[0][1],rect1[1][1]].max
    return nil
  else
    return [[[rect1[0][0],rect2[0][0]].max , [rect1[0][1],rect2[0][1]].max], [[rect1[1][0],rect2[1][0]].min , [rect1[1][1],rect2[1][1]].min]]
  end
end
