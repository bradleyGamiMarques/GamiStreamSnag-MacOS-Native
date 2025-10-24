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

 public enum ResolutionConstants {
    public static let standardDefinition = (width: UInt16(640), height: UInt16(480))
    public static let widescreenStandardDefinition = (width: UInt16(854), height: UInt16(480))
    public static let highDefinition = (width: UInt16(1280), height: UInt16(720))
    public static let fullHD = (width: UInt16(1920), height: UInt16(1080))
    public static let quadHD = (width: UInt16(2560), height: UInt16(1440))
    public static let ultraHD = (width: UInt16(3840), height: UInt16(2160))
    public static let fullUHD = (width: UInt16(7680), height: UInt16(4320))
}
