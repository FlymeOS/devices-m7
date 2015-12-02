.class Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;
.super Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;
.source "HtcDLNAMiddleLayerListener.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HtcDLNAMiddleLayerListener "


# instance fields
.field private mControllerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;

.field private mDMRMirrorOutputCallback:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DMRMirrorOutputCallback;

.field private mDiscoverRendererListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverListener;

.field private mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

.field private mRendererList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRendererListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererStatusListener;

.field private mServerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServerStatusListener;


# direct methods
.method public constructor <init>(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    .line 39
    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mDiscoverRendererListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverListener;

    .line 40
    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererStatusListener;

    .line 41
    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServerStatusListener;

    .line 42
    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;

    .line 44
    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    .line 53
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    .line 55
    return-void
.end method

.method private printDLNAControlItemDataLog(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;)V
    .locals 4

    .prologue
    .line 557
    const-string v0, "HtcDLNAMiddleLayerListener "

    const-string v1, "[HtcDLNAMiddleLayerListener] [updateControlItemInfo], ------------------ updateControlItemInfo -------------------------"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControlItemInfo], Thread ID             = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControlItemInfo], Current Duration      = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControlItemInfo], Updated Duration      = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControlItemInfo], Current ThumbNailPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getThumbnailPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControlItemInfo], Updated ThumbNailPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getThumbnailPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControlItemInfo], Current Title         = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControlItemInfo], Updated Title         = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getContentTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControlItemInfo], Current ContentID     = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getCurContentID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControlItemInfo], Updated ContentID     = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getCurContentID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControlItemInfo]  album art path        = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getDownloadStoreAlbumArtPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string v0, "HtcDLNAMiddleLayerListener "

    const-string v1, "[HtcDLNAMiddleLayerListener] [updateControlItemInfo], -------------------------------------------------------------------"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    return-void
.end method

.method private printDLNAControllerStatusLog(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;)V
    .locals 4

    .prologue
    .line 484
    const-string v0, "HtcDLNAMiddleLayerListener "

    const-string v1, "[HtcDLNAMiddleLayerListener] [updateControllerStatus], ------------------ updateControllerStatus -------------------------"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControllerStatus], Thread ID             = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControllerStatus], Current state         = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getPlayState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControllerStatus], Updated state         = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getPlayState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControllerStatus], Current position      = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControllerStatus], Updated position      = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getPosition()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControllerStatus], Current Duration      = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControllerStatus], Updated Duration      = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControllerStatus], Current Title         = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControllerStatus], Updated Title         = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getContentTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControllerStatus], Current ContentID     = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getCurContentID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener] [updateControllerStatus], Updated ContentID     = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getCurContentID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v0, "HtcDLNAMiddleLayerListener "

    const-string v1, "[HtcDLNAMiddleLayerListener] [updateControllerStatus], -------------------------------------------------------------------"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    return-void
.end method


# virtual methods
.method public albumArtDownloadedNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 766
    .line 767
    monitor-enter p0

    .line 768
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;

    .line 769
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    if-eqz v0, :cond_0

    .line 773
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;->onAlbumArtDownloaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    :cond_0
    return-void

    .line 769
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public contentAddedNotify(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 7

    .prologue
    .line 816
    .line 817
    monitor-enter p0

    .line 818
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServerStatusListener;

    .line 819
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 821
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    .line 823
    invoke-virtual/range {v0 .. v6}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServerStatusListener;->onContentAdded(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 825
    :cond_0
    return-void

    .line 819
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public contentBrowsingDoneNotify(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 8

    .prologue
    .line 833
    .line 834
    monitor-enter p0

    .line 835
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServerStatusListener;

    .line 836
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move v7, p7

    .line 840
    invoke-virtual/range {v0 .. v7}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServerStatusListener;->onContentBrowsingDone(Ljava/lang/String;Ljava/lang/String;JJZ)V

    .line 842
    :cond_0
    return-void

    .line 836
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public contentBrowsingErrorNotify(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V
    .locals 7

    .prologue
    .line 850
    .line 851
    monitor-enter p0

    .line 852
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServerStatusListener;

    .line 853
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 855
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    .line 857
    invoke-virtual/range {v0 .. v6}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServerStatusListener;->onContentBrowsingError(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    .line 859
    :cond_0
    return-void

    .line 853
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public contentThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 799
    .line 800
    monitor-enter p0

    .line 801
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServerStatusListener;

    .line 802
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 804
    if-eqz v0, :cond_0

    .line 806
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServerStatusListener;->onContentThumbnailUpdated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    :cond_0
    return-void

    .line 802
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public contentUpdatedNotify(Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 866
    .line 867
    monitor-enter p0

    .line 868
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServerStatusListener;

    .line 869
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 871
    if-eqz v0, :cond_0

    .line 873
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServerStatusListener;->onContentUpdated(Ljava/lang/String;J)V

    .line 875
    :cond_0
    return-void

    .line 869
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public controllerErrorNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 605
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener][controllerErrorNotify] rendererID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errorID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errorReason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    monitor-enter p0

    .line 611
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;

    .line 612
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    if-eqz v0, :cond_0

    .line 615
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;->onError(Ljava/lang/String;ILjava/lang/String;)V

    .line 617
    :cond_0
    return-void

    .line 612
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public controllerResponseNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 627
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener][controllerResponseNotify] rendererID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resReason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const/16 v0, -0x135

    if-ne p2, v0, :cond_2

    .line 652
    :cond_0
    :goto_0
    monitor-enter p0

    .line 653
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;

    .line 654
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    if-eqz v0, :cond_1

    .line 657
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;->onResponse(Ljava/lang/String;ILjava/lang/String;)V

    .line 660
    :cond_1
    :goto_1
    return-void

    .line 634
    :cond_2
    const/16 v0, -0x145

    if-ne p2, v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererStatusListener;

    .line 637
    if-nez v0, :cond_3

    .line 639
    const-string v0, "HtcDLNAMiddleLayerListener "

    const-string v1, "no listener"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 642
    :cond_3
    const-string v1, "HtcDLNAMiddleLayerListener "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The target renderer responses subscride OK, call HtcDLNARendererStatusListener.onConnected(), RendererId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getRendererId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", RendererName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getRendererName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getRendererId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getRendererName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererStatusListener;->onConnected(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notify user state change to DMR\'s state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getPlayState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getPlayState()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    goto/16 :goto_1

    .line 654
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getContentItemDetailsNotify(Ljava/lang/String;Ljava/lang/String;Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;)V
    .locals 3

    .prologue
    .line 670
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener][getContentItemDetailsNotify] serverID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", contentID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", details = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    monitor-enter p0

    .line 675
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;

    .line 676
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServerStatusListener;

    .line 677
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    if-eqz v0, :cond_0

    .line 684
    :try_start_1
    invoke-static {p3}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->getDLNAContentItemDetails(Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;)Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;->onItemDetailsUpdated(Ljava/lang/String;Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;)V

    .line 685
    invoke-static {p3}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->getDLNAContentItemDetails(Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;)Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;

    move-result-object v2

    invoke-virtual {v0, p1, p2, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;->onItemDetailsUpdated(Ljava/lang/String;Ljava/lang/String;Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 691
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 693
    invoke-static {p3}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;->getDLNAContentItemDetails(Lcom/htc/htcdlnainterface/InternalDLNAContentItemDetails;)Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;

    move-result-object v0

    invoke-virtual {v1, p1, p2, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServerStatusListener;->onItemDetailsUpdated(Ljava/lang/String;Ljava/lang/String;Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAContentItemDetails;)V

    .line 695
    :cond_1
    return-void

    .line 677
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 686
    :catch_0
    move-exception v0

    .line 687
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDiscoverRendererListener()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverListener;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mDiscoverRendererListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverListener;

    return-object v0
.end method

.method public getHtcDLNAControllerStatusListener()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;

    return-object v0
.end method

.method public getHtcDLNARendererStatusListener()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererStatusListener;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererStatusListener;

    return-object v0
.end method

.method public getHtcDLNAServerStatusListener()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServerStatusListener;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServerStatusListener;

    return-object v0
.end method

.method public imageDownloadedNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 883
    .line 884
    monitor-enter p0

    .line 885
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServerStatusListener;

    .line 886
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 888
    if-eqz v0, :cond_0

    .line 890
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServerStatusListener;->onImageDownloaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    :cond_0
    return-void

    .line 886
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public mirrorRendererAddedNotify(Lcom/htc/htcdlnainterface/InternalDLNARendererData;)V
    .locals 3

    .prologue
    .line 728
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener][mirrorRendererAddedNotify] rendererData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rendererId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rendererName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    monitor-enter p0

    .line 734
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererStatusListener;

    .line 735
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 736
    if-eqz v0, :cond_0

    .line 737
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererStatusListener;->onMirrorRendererConnected(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    :cond_0
    return-void

    .line 735
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onDMRMirrorOn(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mDMRMirrorOutputCallback:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DMRMirrorOutputCallback;

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mDMRMirrorOutputCallback:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DMRMirrorOutputCallback;

    invoke-interface {v0, p1, p2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DMRMirrorOutputCallback;->onDMRMirrorOn(ILjava/lang/String;)V

    .line 926
    :cond_0
    return-void
.end method

.method public onStartReadingPCMData(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mDMRMirrorOutputCallback:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DMRMirrorOutputCallback;

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mDMRMirrorOutputCallback:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DMRMirrorOutputCallback;

    invoke-interface {v0, p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DMRMirrorOutputCallback;->onStartReadingPCMData(Ljava/lang/String;)V

    .line 934
    :cond_0
    return-void
.end method

.method public onStopReadingPCMData(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 939
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mDMRMirrorOutputCallback:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DMRMirrorOutputCallback;

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mDMRMirrorOutputCallback:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DMRMirrorOutputCallback;

    invoke-interface {v0, p1, p2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DMRMirrorOutputCallback;->onStopReadingPCMData(ILjava/lang/String;)V

    .line 942
    :cond_0
    return-void
.end method

.method public playlistCreatedResultNotify(Ljava/lang/String;JJ)V
    .locals 3

    .prologue
    .line 395
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener][playlistCreatedResultNotify] currentIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", totalCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v0

    .line 399
    invoke-virtual {v0, p4, p5}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setIndex(J)V

    .line 400
    invoke-virtual {v0, p2, p3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setTotal(J)V

    .line 402
    monitor-enter p0

    .line 403
    :try_start_0
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;

    .line 404
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    if-eqz v1, :cond_0

    .line 407
    invoke-virtual {v1, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;->onControllerInfoupdated(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)V

    .line 409
    :cond_0
    return-void

    .line 404
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public rendererAddedNotify(Lcom/htc/htcdlnainterface/InternalDLNARendererData;)V
    .locals 5

    .prologue
    .line 228
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener][rendererAddedNotify] rendererData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rendererID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rendererName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    invoke-static {p1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARendererData;->getDLNARendererData(Lcom/htc/htcdlnainterface/InternalDLNARendererData;)Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARendererData;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getHtcDLNARendererDiscoverer()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getHtcDLNARendererDiscoverer()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->checkIfMatchRenderer(Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARendererData;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    const-string v0, "HtcDLNAMiddleLayerListener "

    const-string v1, "RendererDiscoverer find the same renderer as rendererAddedNotify() callback."

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :goto_0
    return-void

    .line 256
    :cond_0
    monitor-enter p0

    .line 257
    :try_start_0
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererStatusListener;

    .line 258
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    if-nez v1, :cond_1

    .line 261
    const-string v0, "HtcDLNAMiddleLayerListener "

    const-string v1, "no listener"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 266
    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getRendererId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 267
    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setRendererName(Ljava/lang/String;)V

    .line 272
    :cond_2
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getThumbIconType()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_3

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getThumbIconType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 273
    :cond_3
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getThumbIconType()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererStatusListener;->onHtcMediaLinkHdRendererAdded(Ljava/lang/String;Ljava/lang/String;I)V

    .line 276
    :cond_4
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getThumbIconType()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererStatusListener;->onRendererAdded(Ljava/lang/String;Ljava/lang/String;I)V

    .line 280
    invoke-virtual {v1, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererStatusListener;->onRendererAdded(Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARendererData;)V

    goto :goto_0
.end method

.method public rendererListUpdateNotify([Lcom/htc/htcdlnainterface/InternalDLNARendererData;)V
    .locals 8

    .prologue
    .line 319
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener][rendererListUpdateNotify] rendererList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    monitor-enter p0

    .line 324
    :try_start_0
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererStatusListener;

    .line 325
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    if-eqz v1, :cond_0

    .line 329
    const-string v0, "HtcDLNAMiddleLayerListener "

    const-string v2, "[HtcDLNAMiddleLayerListener][rendererListUpdateNotify] onRendererListUpdateNotify"

    invoke-static {v0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-static {p1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARendererData;->getDLNARendererDataArray([Lcom/htc/htcdlnainterface/InternalDLNARendererData;)[Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARendererData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererStatusListener;->onRendererListUpdateNotify([Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARendererData;)V

    .line 334
    :cond_0
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, p1, v0

    .line 336
    monitor-enter p0

    .line 337
    :try_start_1
    iget-object v4, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 340
    const-string v4, "HtcDLNAMiddleLayerListener "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HtcDLNAMiddleLayerListener][rendererListUpdateNotify] renderer found = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-static {v3}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARendererData;->getDLNARendererData(Lcom/htc/htcdlnainterface/InternalDLNARendererData;)Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARendererData;

    move-result-object v4

    .line 352
    iget-object v5, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v5}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getHtcDLNARendererDiscoverer()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v5}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getHtcDLNARendererDiscoverer()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->checkIfMatchRenderer(Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARendererData;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 357
    const-string v0, "HtcDLNAMiddleLayerListener "

    const-string v1, "[HtcDLNAMiddleLayerListener][rendererListUpdateNotify] RendererDiscoverer found mirror renderer."

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :cond_2
    return-void

    .line 325
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 338
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 362
    :cond_3
    if-nez v1, :cond_4

    .line 364
    const-string v3, "HtcDLNAMiddleLayerListener "

    const-string v4, "no listener"

    invoke-static {v3, v4}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    :cond_4
    if-eqz v3, :cond_5

    iget-object v5, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v6}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getRendererId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 370
    iget-object v5, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v5}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v5

    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setRendererName(Ljava/lang/String;)V

    .line 374
    :cond_5
    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getThumbIconType()I

    move-result v5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_6

    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getThumbIconType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    .line 375
    :cond_6
    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getThumbIconType()I

    move-result v7

    invoke-virtual {v1, v5, v6, v7}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererStatusListener;->onHtcMediaLinkHdRendererAdded(Ljava/lang/String;Ljava/lang/String;I)V

    .line 378
    :cond_7
    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/InternalDLNARendererData;->getThumbIconType()I

    move-result v3

    invoke-virtual {v1, v5, v6, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererStatusListener;->onRendererAdded(Ljava/lang/String;Ljava/lang/String;I)V

    .line 382
    invoke-virtual {v1, v4}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererStatusListener;->onRendererAdded(Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARendererData;)V

    goto :goto_1
.end method

.method public rendererRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 293
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener][rendererRemovedNotify] uniqueID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errorID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errorReason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    monitor-enter p0

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererStatusListener;

    .line 301
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    if-nez v0, :cond_0

    .line 305
    const-string v0, "HtcDLNAMiddleLayerListener "

    const-string v1, "no listener"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :goto_0
    return-void

    .line 301
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 308
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererStatusListener;->onRendererRemoved(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public rendererThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 748
    .line 749
    monitor-enter p0

    .line 750
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererStatusListener;

    .line 751
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    if-eqz v0, :cond_0

    .line 754
    invoke-virtual {v0, p1, p2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererStatusListener;->onRendererThumbnailUpdated(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    :cond_0
    return-void

    .line 751
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 2

    .prologue
    .line 902
    monitor-enter p0

    :try_start_0
    const-string v0, "HtcDLNAMiddleLayerListener "

    const-string v1, "[HtcDLNAMiddleLayerListener][Reset] in"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    .line 904
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mDiscoverRendererListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverListener;

    .line 905
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererStatusListener;

    .line 906
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServerStatusListener;

    .line 907
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;

    .line 908
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    .line 909
    const-string v0, "HtcDLNAMiddleLayerListener "

    const-string v1, "[HtcDLNAMiddleLayerListener][Reset] out"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 910
    monitor-exit p0

    return-void

    .line 902
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public serverAddedNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 137
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener][serverAddedNotify] uniqueID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", serverNmaer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServerStatusListener;

    .line 142
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    if-nez v0, :cond_0

    .line 146
    const-string v0, "HtcDLNAMiddleLayerListener "

    const-string v1, "no listener"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :goto_0
    return-void

    .line 142
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 150
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServerStatusListener;->onServerAdded(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public serverListUpdateNotify([Lcom/htc/htcdlnainterface/InternalDLNAServerData;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 186
    const-string v1, "HtcDLNAMiddleLayerListener "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][serverListUpdateNotify] serverList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    monitor-enter p0

    .line 190
    :try_start_0
    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServerStatusListener;

    .line 191
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    if-nez v2, :cond_0

    .line 195
    const-string v0, "HtcDLNAMiddleLayerListener "

    const-string v1, "no listener"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :goto_0
    return-void

    .line 191
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 199
    :cond_0
    array-length v1, p1

    new-array v3, v1, [Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAServerData;

    .line 202
    array-length v4, p1

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v5, p1, v1

    .line 204
    const-string v6, "HtcDLNAMiddleLayerListener "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HtcDLNAMiddleLayerListener][serverListUpdateNotify] server found = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/htc/htcdlnainterface/InternalDLNAServerData;->getServerName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    if-nez v2, :cond_1

    .line 207
    const-string v5, "HtcDLNAMiddleLayerListener "

    const-string v6, "no listener"

    invoke-static {v5, v6}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 211
    :cond_1
    array-length v6, p1

    if-ge v0, v6, :cond_2

    invoke-static {v5}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAServerData;->getDLNAServerData(Lcom/htc/htcdlnainterface/InternalDLNAServerData;)Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAServerData;

    move-result-object v5

    aput-object v5, v3, v0

    .line 212
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 216
    :cond_3
    invoke-virtual {v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServerStatusListener;->serverListUpdateNotify([Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAServerData;)V

    goto :goto_0
.end method

.method public serverRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 161
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener][serverRemovedNotify] uniqueID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errorID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errorReason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    monitor-enter p0

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServerStatusListener;

    .line 167
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    if-nez v0, :cond_0

    .line 171
    const-string v0, "HtcDLNAMiddleLayerListener "

    const-string v1, "no listener"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :goto_0
    return-void

    .line 167
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 175
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServerStatusListener;->onServerRemoved(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public serverThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 782
    .line 783
    monitor-enter p0

    .line 784
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServerStatusListener;

    .line 785
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    if-eqz v0, :cond_0

    .line 789
    invoke-virtual {v0, p1, p2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServerStatusListener;->onServerThumbnailUpdated(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    :cond_0
    return-void

    .line 785
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setDMRMirrorOutputCallback(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DMRMirrorOutputCallback;)V
    .locals 0

    .prologue
    .line 917
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mDMRMirrorOutputCallback:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DMRMirrorOutputCallback;

    .line 918
    return-void
.end method

.method public setDiscoverRendererListener(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverListener;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mDiscoverRendererListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverListener;

    .line 73
    return-void
.end method

.method public setHtcDLNAControllerStatusListener(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;

    .line 128
    return-void
.end method

.method public setHtcDLNARendererStatusListener(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererStatusListener;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererStatusListener;

    .line 91
    return-void
.end method

.method public setHtcDLNAServerStatusListener(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServerStatusListener;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServerStatusListener;

    .line 109
    return-void
.end method

.method public updateControlItemInfo(Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 507
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v1

    .line 509
    invoke-direct {p0, v1, p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->printDLNAControlItemDataLog(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;)V

    .line 511
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getContentAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setAlbum(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getContentArtist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setArtist(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getContentTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setTitle(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getContentDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setDate(Ljava/lang/String;)V

    .line 515
    invoke-virtual {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getCurContentID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 516
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getDuration()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getDuration()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getCurContentID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getCurContentID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 517
    :cond_0
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getDuration()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setDuration(I)V

    .line 520
    :cond_1
    invoke-virtual {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getRendererName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getRendererId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 521
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getRendererId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setRendererName(Ljava/lang/String;)V

    .line 523
    :cond_2
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getCurrentIndex()J

    move-result-wide v2

    .line 524
    invoke-virtual {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getIndex()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_3

    .line 526
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setPosition(I)V

    .line 527
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->setClientSeekTo(I)V

    .line 529
    :cond_3
    invoke-virtual {v1, v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setIndex(J)V

    .line 530
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getPlaylistSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setTotal(J)V

    .line 532
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getDownloadStoreAlbumArtPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setThumbnailPath(Ljava/lang/String;)V

    .line 533
    invoke-virtual {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getThumbnailPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getThumbnailPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 534
    :cond_4
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getThumbnailPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setThumbnailPath(Ljava/lang/String;)V

    .line 537
    :cond_5
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setPlayState(I)V

    .line 538
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControlItemData;->getCurContentID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setCurContentID(Ljava/lang/String;)V

    .line 541
    monitor-enter p0

    .line 542
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;

    .line 543
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    if-eqz v0, :cond_6

    .line 547
    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;->onControllerInfoupdated(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)V

    .line 553
    :goto_0
    return-void

    .line 543
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 551
    :cond_6
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener][updateControlItemInfo] itemData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mControllerListener == null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateControlItemThumbnail(Ljava/lang/String;JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 579
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener][updateControlItemThumbnail] currentIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", thumbnailPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v0

    .line 583
    invoke-virtual {v0, p4}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setThumbnailPath(Ljava/lang/String;)V

    .line 585
    monitor-enter p0

    .line 586
    :try_start_0
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;

    .line 587
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    if-eqz v1, :cond_0

    .line 591
    invoke-virtual {v1, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;->onControllerInfoupdated(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)V

    .line 593
    :cond_0
    return-void

    .line 587
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateControllerStatus(Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/16 v5, 0x3e8

    const/4 v4, 0x1

    .line 421
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateControllerStatus] state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getPlayState()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v1

    .line 427
    invoke-direct {p0, v1, p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->printDLNAControllerStatusLog(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;)V

    .line 433
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getDuration()J

    move-result-wide v2

    cmp-long v0, v2, v6

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getDuration()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setDuration(I)V

    .line 434
    :cond_0
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getCurrentIndex()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setIndex(J)V

    .line 435
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getPosition()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setPosition(I)V

    .line 436
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getMute()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setMute(Z)V

    .line 437
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getShuffle()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setShuffle(Z)V

    .line 438
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getRepeatState()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setRepeat(I)V

    .line 439
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getVolumeValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setVolume(I)V

    .line 440
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getTotalCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setTotal(J)V

    .line 442
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getPosition()J

    move-result-wide v2

    cmp-long v0, v2, v6

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->setClientSeekTo(I)V

    .line 444
    :cond_1
    invoke-virtual {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->getRendererName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getRendererId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mRendererList:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getRendererId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setRendererName(Ljava/lang/String;)V

    .line 446
    :cond_2
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getCurContentID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setCurContentID(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getPlayState()I

    move-result v0

    if-eq v0, v5, :cond_5

    .line 453
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/InternalDLNAControllerStatus;->getPlayState()I

    move-result v2

    invoke-virtual {v0, v2, v4, v4}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    .line 455
    monitor-enter p0

    .line 456
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;

    .line 457
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    if-eqz v0, :cond_4

    .line 460
    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;->onControllerInfoupdated(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)V

    .line 480
    :cond_3
    :goto_0
    return-void

    .line 457
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 462
    :cond_4
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener][updateControllerStatus] DLNAControllerStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", listener == null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 468
    :cond_5
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v0, v5, v4, v4}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    .line 470
    monitor-enter p0

    .line 471
    :try_start_2
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;

    .line 472
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 473
    if-eqz v0, :cond_3

    .line 474
    const-string v1, "HtcDLNAMiddleLayerListener "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcDLNAMiddleLayerListener][updateControllerStatus][onPlaybackCompleted] State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    iget-object v4, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v4}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;->onPlaybackCompleted(I)V

    goto :goto_0

    .line 472
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public updateDownloadStoreAlbumArtNotify(Ljava/lang/String;JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 705
    const-string v0, "HtcDLNAMiddleLayerListener "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcDLNAMiddleLayerListener][updateDownloadStoreAlbumArtNotify] rendererID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currentIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", albumArtPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setThumbnailPath(Ljava/lang/String;)V

    .line 711
    monitor-enter p0

    .line 712
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;

    .line 713
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 715
    if-eqz v0, :cond_0

    .line 717
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getControllerInfo()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAControllerStatusListener;->onControllerInfoupdated(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)V

    .line 719
    :cond_0
    return-void

    .line 713
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
