.class public final Lcom/htc/camera/component/NewMediaBroadcaster;
.super Lcom/htc/camera/component/cm;
.source "NewMediaBroadcaster.java"


# instance fields
.field private final COUNT:I

.field private counter:I

.field eventArgs:[Lcom/htc/camera/io/MediaSaveEventArgs;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 4

    .prologue
    const/16 v3, 0x63

    const/4 v2, 0x0

    .line 127
    const-string v0, "New Media Broadcaster"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/component/cm;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 25
    iput v3, p0, Lcom/htc/camera/component/NewMediaBroadcaster;->COUNT:I

    .line 26
    iput v2, p0, Lcom/htc/camera/component/NewMediaBroadcaster;->counter:I

    .line 27
    new-array v0, v3, [Lcom/htc/camera/io/MediaSaveEventArgs;

    iput-object v0, p0, Lcom/htc/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/htc/camera/io/MediaSaveEventArgs;

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/NewMediaBroadcaster;Lcom/htc/camera/io/MediaSaveEventArgs;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/htc/camera/component/NewMediaBroadcaster;->saveEventArgsinBuffer(Lcom/htc/camera/io/MediaSaveEventArgs;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/component/NewMediaBroadcaster;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/htc/camera/component/NewMediaBroadcaster;->counter:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/camera/component/NewMediaBroadcaster;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/camera/component/NewMediaBroadcaster;->checkAndBroadcastIntent()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/camera/component/NewMediaBroadcaster;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/camera/component/NewMediaBroadcaster;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private broadcastIntent(Landroid/net/Uri;Lcom/htc/camera/component/NewMediaBroadcaster$MEDIATYPE;)V
    .locals 2

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/htc/camera/component/NewMediaBroadcaster;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/component/NewMediaBroadcaster;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-static {p1}, Lcom/htc/lib1/mediamanager/i;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 168
    if-nez v0, :cond_2

    .line 171
    :goto_1
    const-string v0, ""

    .line 172
    sget-object v0, Lcom/htc/camera/component/NewMediaBroadcaster$MEDIATYPE;->Picture:Lcom/htc/camera/component/NewMediaBroadcaster$MEDIATYPE;

    if-ne p2, v0, :cond_1

    .line 173
    const-string v0, "android.hardware.action.NEW_PICTURE"

    .line 176
    :goto_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0}, Lcom/htc/camera/component/NewMediaBroadcaster;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 175
    :cond_1
    const-string v0, "android.hardware.action.NEW_VIDEO"

    goto :goto_2

    :cond_2
    move-object p1, v0

    goto :goto_1
.end method

.method private checkAndBroadcastIntent()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 142
    move v0, v1

    :goto_0
    const/16 v2, 0x63

    if-ge v0, v2, :cond_2

    .line 143
    iget-object v2, p0, Lcom/htc/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/htc/camera/io/MediaSaveEventArgs;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/htc/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/htc/camera/io/MediaSaveEventArgs;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v2, v2, Lcom/htc/camera/media/MediaInfo;->contentUri:Landroid/net/Uri;

    .line 146
    iget-object v3, p0, Lcom/htc/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/htc/camera/io/MediaSaveEventArgs;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v3, v3, Lcom/htc/camera/media/MediaInfo;->fileFormat:Lcom/htc/camera/io/FileFormat;

    invoke-virtual {v3}, Lcom/htc/camera/io/FileFormat;->isImage()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    sget-object v3, Lcom/htc/camera/component/NewMediaBroadcaster$MEDIATYPE;->Picture:Lcom/htc/camera/component/NewMediaBroadcaster$MEDIATYPE;

    invoke-direct {p0, v2, v3}, Lcom/htc/camera/component/NewMediaBroadcaster;->broadcastIntent(Landroid/net/Uri;Lcom/htc/camera/component/NewMediaBroadcaster$MEDIATYPE;)V

    .line 151
    :goto_1
    iget-object v3, p0, Lcom/htc/camera/component/NewMediaBroadcaster;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v2, p0, Lcom/htc/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/htc/camera/io/MediaSaveEventArgs;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 142
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_1
    sget-object v3, Lcom/htc/camera/component/NewMediaBroadcaster$MEDIATYPE;->Video:Lcom/htc/camera/component/NewMediaBroadcaster$MEDIATYPE;

    invoke-direct {p0, v2, v3}, Lcom/htc/camera/component/NewMediaBroadcaster;->broadcastIntent(Landroid/net/Uri;Lcom/htc/camera/component/NewMediaBroadcaster$MEDIATYPE;)V

    goto :goto_1

    .line 155
    :cond_2
    iput v1, p0, Lcom/htc/camera/component/NewMediaBroadcaster;->counter:I

    .line 156
    return-void
.end method

.method private saveEventArgsinBuffer(Lcom/htc/camera/io/MediaSaveEventArgs;)V
    .locals 3

    .prologue
    .line 132
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v0, v0, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v0, v0, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    iget-object v0, v0, Lcom/htc/camera/io/Path;->fileName:Ljava/lang/String;

    const-string v1, ".*(ZOE)\\d+\\.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v0, v0, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    iget-object v0, v0, Lcom/htc/camera/io/Path;->fileName:Ljava/lang/String;

    const-string v1, ".*(BURST)\\d+\\.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/htc/camera/io/MediaSaveEventArgs;

    iget v1, p0, Lcom/htc/camera/component/NewMediaBroadcaster;->counter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/camera/component/NewMediaBroadcaster;->counter:I

    aput-object p1, v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 4

    .prologue
    .line 37
    invoke-super {p0}, Lcom/htc/camera/component/cm;->initializeOverride()V

    .line 39
    invoke-virtual {p0}, Lcom/htc/camera/component/NewMediaBroadcaster;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    .line 41
    invoke-virtual {p0}, Lcom/htc/camera/component/NewMediaBroadcaster;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/HTCCamera;->EVENT_MEDIA_SAVED:Lcom/htc/camera/base/EventKey;

    new-instance v3, Lcom/htc/camera/component/NewMediaBroadcaster$1;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/NewMediaBroadcaster$1;-><init>(Lcom/htc/camera/component/NewMediaBroadcaster;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 58
    new-instance v1, Lcom/htc/camera/component/NewMediaBroadcaster$2;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/NewMediaBroadcaster$2;-><init>(Lcom/htc/camera/component/NewMediaBroadcaster;)V

    .line 90
    new-instance v2, Lcom/htc/camera/component/NewMediaBroadcaster$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/htc/camera/component/NewMediaBroadcaster$3;-><init>(Lcom/htc/camera/component/NewMediaBroadcaster;Lcom/htc/camera/CameraThread;Lcom/htc/camera/event/a;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 100
    iget-object v0, p0, Lcom/htc/camera/component/NewMediaBroadcaster;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/camera/component/NewMediaBroadcaster$4;

    invoke-virtual {p0}, Lcom/htc/camera/component/NewMediaBroadcaster;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/camera/HTCCamera;->actionScreenState:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    invoke-direct {v1, p0, v2, v3}, Lcom/htc/camera/component/NewMediaBroadcaster$4;-><init>(Lcom/htc/camera/component/NewMediaBroadcaster;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-virtual {p0}, Lcom/htc/camera/component/NewMediaBroadcaster;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/HTCCamera;->EVENT_PAUSING:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/component/NewMediaBroadcaster$5;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/NewMediaBroadcaster$5;-><init>(Lcom/htc/camera/component/NewMediaBroadcaster;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 119
    return-void
.end method
