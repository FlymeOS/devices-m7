.class public interface abstract Lcom/htc/htcdlnainterface/IDLNAPluginNotify;
.super Ljava/lang/Object;
.source "IDLNAPluginNotify.java"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract albumArtDownloadedNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract contentAddedNotify(Ljava/lang/String;Ljava/lang/String;JJ)V
.end method

.method public abstract contentBrowsingDoneNotify(Ljava/lang/String;Ljava/lang/String;JJZ)V
.end method

.method public abstract contentBrowsingErrorNotify(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V
.end method

.method public abstract contentThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract contentUpdatedNotify(Ljava/lang/String;J)V
.end method

.method public abstract controllerErrorNotify(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract controllerResponseNotify(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract getContentItemDetailsNotify(Ljava/lang/String;Ljava/lang/String;Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;)V
.end method

.method public abstract imageDownloadedNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract mirrorRendererAddedNotify(Lcom/htc/htcdlnainterface/InternalDLNARendererData;)V
.end method

.method public abstract onDMRMirrorOn(ILjava/lang/String;)V
.end method

.method public abstract onStartReadingPCMData(Ljava/lang/String;)V
.end method

.method public abstract onStopReadingPCMData(ILjava/lang/String;)V
.end method

.method public abstract playlistCreatedResultNotify(Ljava/lang/String;JJ)V
.end method

.method public abstract rendererAddedNotify(Lcom/htc/htcdlnainterface/InternalDLNARendererData;)V
.end method

.method public abstract rendererListUpdateNotify([Lcom/htc/htcdlnainterface/InternalDLNARendererData;)V
.end method

.method public abstract rendererRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract rendererThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract serverAddedNotify(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract serverListUpdateNotify([Lcom/htc/htcdlnainterface/InternalDLNAServerData;)V
.end method

.method public abstract serverRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract serverThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateControlItemInfo(Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;)V
.end method

.method public abstract updateControlItemThumbnail(Ljava/lang/String;JLjava/lang/String;)V
.end method

.method public abstract updateControllerStatus(Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;)V
.end method

.method public abstract updateDownloadStoreAlbumArtNotify(Ljava/lang/String;JLjava/lang/String;)V
.end method
