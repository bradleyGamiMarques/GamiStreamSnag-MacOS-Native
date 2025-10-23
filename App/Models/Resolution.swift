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
    static let standardDefinition = Resolution(unchecked: 640, height: 480)
    static let widescreenStandardDefinition = Resolution(unchecked: 854, height: 480)
    static let highDefinition = Resolution(unchecked: 1280, height: 720)
    static let fullHD = Resolution(unchecked: 1920, height: 1080)
    static let quadHD = Resolution(unchecked: 2560, height: 1440)
    static let ultraHD = Resolution(unchecked: 3840, height: 2160)
    static let fullUHD = Resolution(unchecked: 7680, height: 4320)
}
