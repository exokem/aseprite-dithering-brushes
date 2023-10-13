# Dithering Brushes

This extension provides a dedicated tool for quickly switching between dithering brushes. The tool window is accessible under 'Edit > Dithering Brushes'.

**Density** controls the balance between the foreground and background colors. A higher density means that more of the pattern will be occupied by the foreground color.

The **colors** displayed are linked to the current foreground/background colors, and cannot be changed through the 'Dithering Brushes' menu directly.

The **pattern preview** shows the pattern associated with the current density using the current foreground/background colors.

The **pattern size increment** refers to the number of pixels by which the pattern should be expanded. Dithering patterns have a fixed minimum size of 4x4 pixels, so a pattern size increment of 2 will tile the 4x4 pattern into a 6x6 space. If **force tiling** is checked, increment values will be clamped to multiples of 4 to ensure that patterns tile perfectly. Patterns may not tile correctly for other increments. Negative values are not supported. For best results, use multiples of 4.

The **brush scale** refers to a scale factor that is applied to the incremented pattern. For a brush scale of 2, the 6x6 pattern from before will be scaled into a 12x12 brush. Values less than or equal to zero are not supported.

There are some extra controls for the pattern size and brush scale fields because I felt that just having a number input could be annoying to use. The sliders for these two fields will adjust them if you scroll the mouse wheel while hovering over them.

### // [Download](https://exokem.itch.io/aseprite-dithering-brushes) // [Source](https://github.com/Exokem/aseprite-dithering-brushes) //