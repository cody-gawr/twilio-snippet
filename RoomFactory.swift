import TwilioVideo

class RoomFactory {
    func makeRoom() -> Room {
        let localParticipant = LocalParticipant(
            identity: UserStoreFactory().makeUserStore().user.displayName,
            micTrackFactory: MicTrackFactory(),
            cameraManagerFactory: CameraManagerFactory()
        )
        return Room(
            localParticipant: localParticipant,
            accessTokenStore: TwilioAccessTokenStoreFactory().makeTwilioAccessTokenStore(),
            connectOptionsFactory: ConnectOptionsFactory(),
            notificationCenter: .default,
            twilioVideoSDKType: TwilioVideoSDK.self
        )
    }
}
