! Object methods !
visit: aBlock
  aBlock value: self.
!!

! Collection methods !
visit: aBlock
  self do: [:element | element visit: aBlock].
!!

! String methods !
visit: aBlock
  aBlock value: self.
!!