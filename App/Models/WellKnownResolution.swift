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

public enum WellKnownResolution: CaseIterable {
    case standardDefinition // 640x480
    case widescreenStandardDefinition // 854x480
    case highDefinition // 1280x720
    case fullHD // 1920x1080
    case quadHD // 2560x1440
    case ultraHD // 3840x2160
    case fullUHD // 7680x4320

    public var resolution: Resolution {
        switch self {
        case .standardDefinition: return .standardDefinition
        case .widescreenStandardDefinition: return .widescreenStandardDefinition
        case .highDefinition: return .highDefinition
        case .fullHD: return .fullHD
        case .quadHD: return .quadHD
        case .ultraHD: return .ultraHD
        case .fullUHD: return .fullUHD
        }
    }

    public var localizedDisplayName: String {
        switch self {
        case .standardDefinition: return "SD (640×480)"
        case .widescreenStandardDefinition: return "SD Widescreen (854×480)"
        case .highDefinition: return "HD (1280×720)"
        case .fullHD: return "Full HD (1920×1080)"
        case .quadHD: return "Quad HD (2560×1440)"
        case .ultraHD: return "Ultra HD (3840×2160)"
        case .fullUHD: return "Full UHD (7680×4320)"
        }
    }
}
