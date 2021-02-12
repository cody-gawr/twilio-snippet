import Foundation

enum RoomState {
    case disconnected
    case connecting // Includes fetching access token
    case connected
}
