/*
 GamiStreamSnag - A beautiful UI wrapper for the yt-dlp command line tool
 Copyright (C) 2025 Bradley Andrew Marques

 This program is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

public struct Resolution: Sendable, Equatable, Hashable {
    public let width: UInt16
    public let height: UInt16

    /// Create new instance of `Resolution` using provided width and height.
    ///
    /// - Parameters:
    ///   - width: The horizontal measurement in pixels.
    ///   - height: The vertical measurement in pixels.
    ///
    ///  - Precondition: `width > 0 && height > 0`
    public init(width: UInt16, height: UInt16) throws {
        guard width > 0, height > 0 else {
            throw MetadataError.invalidResolution(width: width, height: height)
        }
        self.width = width
        self.height = height
    }

    /// Create new instance of `Resolution` using provided width and height.
    /// Internal unchecked initializer for known-good constants.
    /// Skips validation but asserts in debug builds.
    /// - Parameters:
    ///   - width: The horizontal measurement in pixels.
    ///   - height: The vertical measurement in pixels.
    ///
    fileprivate init(unchecked width: UInt16, height: UInt16) {
        assert(width > 0 && height > 0, "Resolution dimensions must be positive")
        self.width = width
        self.height = height
    }
}

extension Resolution {
    static let standardDefinition = Resolution(
      unchecked: ResolutionConstants.standardDefinition.width,
      height: ResolutionConstants.standardDefinition.height
    )
    static let widescreenStandardDefinition = Resolution(
      unchecked: ResolutionConstants.widescreenStandardDefinition.width,
      height: ResolutionConstants.widescreenStandardDefinition.height
    )
    static let highDefinition = Resolution(
      unchecked: ResolutionConstants.highDefinition.width,
      height: ResolutionConstants.highDefinition.height
    )
    static let fullHD = Resolution(
      unchecked: ResolutionConstants.fullHD.width,
      height: ResolutionConstants.fullHD.height
    )
    static let quadHD = Resolution(
      unchecked: ResolutionConstants.quadHD.width,
      height: ResolutionConstants.quadHD.height
    )
    static let ultraHD = Resolution(
      unchecked: ResolutionConstants.ultraHD.width,
      height: ResolutionConstants.ultraHD.height
    )
    static let fullUHD = Resolution(
      unchecked: ResolutionConstants.fullUHD.width,
      height: ResolutionConstants.fullUHD.height
    )
}
