.class public interface abstract Lcom/htc/htcdlnainterface/IDLNAPluginService;
.super Ljava/lang/Object;
.source "IDLNAPluginService.java"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract albumArtDownload(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract browse(ILjava/lang/String;Ljava/lang/String;JIJ)V
.end method

.method public abstract browseCancel(ILjava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract cancelContentThumbnail(II)V
.end method

.method public abstract changeDuration(ILjava/lang/String;J)V
.end method

.method public abstract changePushPlaylistItem(ILjava/lang/String;J)V
.end method

.method public abstract changeRemotePlaylistItem(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract checkErrorExists(ILjava/lang/String;)Z
.end method

.method public abstract checkRendererIdExists(ILjava/lang/String;)Z
.end method

.method public abstract checkSessionCookieInUse(II)Z
.end method

.method public abstract continueBrowseDown(ILjava/lang/String;Ljava/lang/String;JJII)V
.end method

.method public abstract createMediaController(ILjava/lang/String;Lcom/htc/htcdlnainterface/InternalDLNAStatusBarData;)I
.end method

.method public abstract destroyMediaController(ILjava/lang/String;)V
.end method

.method public abstract getContentThumbnail(ILjava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract getDMCContentItemDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;
.end method

.method public abstract getDMCControlItemInfo(ILjava/lang/String;)V
.end method

.method public abstract getDMCControlStatus(ILjava/lang/String;)Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;
.end method

.method public abstract getDMCCurrentContainerID(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDMCCurrentContentID(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDMCCurrentLocalPlayId(ILjava/lang/String;)I
.end method

.method public abstract getDMCCurrentLocalPlayIndex(ILjava/lang/String;)I
.end method

.method public abstract getDMCLocalContentItemDetails(III)V
.end method

.method public abstract getDMCMuteControlSupport(ILjava/lang/String;)Z
.end method

.method public abstract getDMCPhotoSlideshowState(ILjava/lang/String;)I
.end method

.method public abstract getDMCVolumeControlSupport(ILjava/lang/String;)Z
.end method

.method public abstract getDMPContentItemDetails(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getLastErrorId(ILjava/lang/String;)I
.end method

.method public abstract getLastErrorReason(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getMirrorRenderer(I)Lcom/htc/htcdlnainterface/InternalDLNARendererData;
.end method

.method public abstract getPlayPosition(ILjava/lang/String;)J
.end method

.method public abstract getPlaylistPlayIndex(ILjava/lang/String;)J
.end method

.method public abstract getPlaylistTotalCount(ILjava/lang/String;)J
.end method

.method public abstract getRendererIdData(Ljava/lang/String;)Lcom/htc/htcdlnainterface/InternalDLNARendererData;
.end method

.method public abstract getRendererList(I)V
.end method

.method public abstract getRendererThumbnail(ILjava/lang/String;)V
.end method

.method public abstract getServerList(I)V
.end method

.method public abstract getServerThumbnail(ILjava/lang/String;)V
.end method

.method public abstract imageDownload(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract isPCMStreaming()Z
.end method

.method public abstract isShuffleEnabled(ILjava/lang/String;)Z
.end method

.method public abstract newPushEncryptBuffer(ILjava/lang/String;Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;)V
.end method

.method public abstract newPushEncryptSingle(ILjava/lang/String;Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;)V
.end method

.method public abstract newPushPCMBuffer(ILjava/lang/String;)V
.end method

.method public abstract newPushPlaylist(ILjava/lang/String;I[IIJ)Z
.end method

.method public abstract newPushSingle(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract newPushSingle2(ILjava/lang/String;Lcom/htc/htcdlnainterface/InternalDLNAPushMediaInfo;)V
.end method

.method public abstract newRemotePlaylist(ILjava/lang/String;Lcom/htc/htcdlnainterface/InternalDLNARemotePlaylistInfo;)Z
.end method

.method public abstract newRemoteSingle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract newSingleURI(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract pause(ILjava/lang/String;)V
.end method

.method public abstract play(ILjava/lang/String;)V
.end method

.method public abstract reArrangePushPlaylist(ILjava/lang/String;I[I)Z
.end method

.method public abstract reSearchDevices(I)V
.end method

.method public abstract registerCallback(ILcom/htc/htcdlnainterface/IDLNAPluginNotify;)V
.end method

.method public abstract setAutoReleaseAfterPlayCompleted(IZ)Z
.end method

.method public abstract setBrowseThumbSize(ILjava/lang/String;)Z
.end method

.method public abstract setControllingTimeout(J)V
.end method

.method public abstract setDMCPhotoSlideshowState(ILjava/lang/String;I)Z
.end method

.method public abstract setDMCThumbSize(ILjava/lang/String;)Z
.end method

.method public abstract setDMPAlbumArtSize(ILjava/lang/String;)Z
.end method

.method public abstract setFilterType(II)V
.end method

.method public abstract setMute(ILjava/lang/String;Z)V
.end method

.method public abstract setOutputPath(ILjava/lang/String;)V
.end method

.method public abstract setRepeat(ILjava/lang/String;I)V
.end method

.method public abstract setSeek(ILjava/lang/String;J)V
.end method

.method public abstract setShuffle(ILjava/lang/String;Z)V
.end method

.method public abstract setSubtitleParameter(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setVolume(ILjava/lang/String;I)V
.end method

.method public abstract startDMRAudioMirror(ILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract stop(ILjava/lang/String;)V
.end method

.method public abstract stopDMRMirror()V
.end method

.method public abstract subscribeServer(ILjava/lang/String;)V
.end method

.method public abstract switchPlaylistNextItem(ILjava/lang/String;)V
.end method

.method public abstract switchPlaylistPrevItem(ILjava/lang/String;)V
.end method

.method public abstract unregisterCallback(ILcom/htc/htcdlnainterface/IDLNAPluginNotify;)V
.end method

.method public abstract unsubscribeServer(ILjava/lang/String;)V
.end method
