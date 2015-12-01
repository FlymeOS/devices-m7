.class public Lcom/htc/camera/splitcapture/SplitVideoController;
.super Lcom/htc/camera/splitcapture/ISplitVideoController;
.source "SplitVideoController.java"

# interfaces
.implements Lcom/htc/camera/ad;
.implements Lcom/htc/camera/al;


# instance fields
.field private m_BufferBrushSurface:Landroid/view/Surface;

.field private m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

.field private m_CurrentActualDuration:Lcom/htc/camera/Duration;

.field private m_CurrentDuration:Lcom/htc/camera/Duration;

.field private m_CurrentRecordingLimitDuration:Lcom/htc/camera/Duration;

.field private m_CurrentVideoPath:Lcom/htc/camera/io/Path;

.field m_FinalVideo:Lcom/htc/camera/splitcapture/SplitVideo;

.field private m_FinalVideoPath:Lcom/htc/camera/io/Path;

.field m_FirstVideo:Lcom/htc/camera/splitcapture/SplitVideo;

.field private m_FirstVideoCameraType:Lcom/htc/camera/CameraType;

.field private m_IsDeleteFinal:Z

.field private m_IsMediaPlayerPrepared:Z

.field private m_IsNewSurfaceReceived:Z

.field private m_LastCaptureHandle:Lcom/htc/camera/CaptureHandle;

.field private m_LatestMediaPlayerInfo:Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;

.field private m_MainVideoResolutionProvider:Lcom/htc/camera/splitcapture/SplitVideoController$SplitVideoMainResolutionProvider;

.field private m_MediaPlayer:Landroid/media/MediaPlayer;

.field private m_NextTempVideoPath:Lcom/htc/camera/io/Path;

.field private m_RenderingSurfaceHandle:Lcom/htc/camera/Handle;

.field m_SecondVideo:Lcom/htc/camera/splitcapture/SplitVideo;

.field private m_SecondVideoResolutionProvider:Lcom/htc/camera/splitcapture/SplitCaptureFrontVideoResolutionProvider;

.field private m_SetMainVideoResolutionHandle:Lcom/htc/camera/Handle;

.field private m_SetSecondVideoResolutionHandle:Lcom/htc/camera/Handle;

.field private m_ThumbnailImageManager:Lcom/htc/camera/aj;

.field private m_UI:Lcom/htc/camera/splitcapture/SplitVideoUI;

.field private m_VideoDCFInfo:Lcom/htc/camera/io/DCFInfo;

.field private m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

.field private m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

.field private m_currentFreeSpace:J

.field onMediaPlayerCompleteListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field onMediaPlayerCompleteThenSeekBackListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field onMediaPlayerPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 3

    .prologue
    .line 217
    const-string v0, "Split Video Controller"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/splitcapture/ISplitVideoController;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V

    .line 150
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoController$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/splitcapture/SplitVideoController$1;-><init>(Lcom/htc/camera/splitcapture/SplitVideoController;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->onMediaPlayerPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 160
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoController$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/splitcapture/SplitVideoController$2;-><init>(Lcom/htc/camera/splitcapture/SplitVideoController;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->onMediaPlayerCompleteThenSeekBackListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 186
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoController$3;

    invoke-direct {v0, p0}, Lcom/htc/camera/splitcapture/SplitVideoController$3;-><init>(Lcom/htc/camera/splitcapture/SplitVideoController;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->onMediaPlayerCompleteListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 218
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/splitcapture/SplitVideoController;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_IsNewSurfaceReceived:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/camera/splitcapture/SplitVideoController;Z)Z
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_IsNewSurfaceReceived:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/camera/splitcapture/SplitVideoController;)Lcom/htc/camera/splitcapture/SplitVideoUI;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_UI:Lcom/htc/camera/splitcapture/SplitVideoUI;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/camera/splitcapture/SplitVideoController;Lcom/htc/camera/component/Component;I)Z
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/splitcapture/SplitVideoController;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/camera/splitcapture/SplitVideoController;)Lcom/htc/camera/CameraSettings;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/camera/splitcapture/SplitVideoController;Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/camera/splitcapture/SplitVideoController;->onPreparingParamsBeforeRecording(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/camera/splitcapture/SplitVideoController;Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/splitcapture/SplitVideoController;->onRecordingStateChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/camera/splitcapture/SplitVideoController;Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/imaging/ThumbnailEventArgs;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/camera/splitcapture/SplitVideoController;->onVideoThumbnailCreated(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/imaging/ThumbnailEventArgs;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/camera/splitcapture/SplitVideoController;)Lcom/htc/camera/Duration;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_CurrentRecordingLimitDuration:Lcom/htc/camera/Duration;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/splitcapture/SplitVideoController;Lcom/htc/camera/component/Component;I)Z
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/splitcapture/SplitVideoController;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/camera/splitcapture/SplitVideoController;)Lcom/htc/camera/CaptureHandle;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_LastCaptureHandle:Lcom/htc/camera/CaptureHandle;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/camera/splitcapture/SplitVideoController;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_IsDeleteFinal:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/htc/camera/splitcapture/SplitVideoController;Z)Z
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_IsDeleteFinal:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/htc/camera/splitcapture/SplitVideoController;Lcom/htc/camera/component/Component;I)Z
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/splitcapture/SplitVideoController;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/htc/camera/splitcapture/SplitVideoController;Landroid/media/MediaPlayer;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/htc/camera/splitcapture/SplitVideoController;->startMediaPlayerInternal(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/htc/camera/splitcapture/SplitVideoController;Z)Z
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_IsMediaPlayerPrepared:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/camera/splitcapture/SplitVideoController;)Lcom/htc/camera/io/Path;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideoPath:Lcom/htc/camera/io/Path;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/htc/camera/splitcapture/SplitVideoController;Lcom/htc/camera/io/Path;)Lcom/htc/camera/io/Path;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_NextTempVideoPath:Lcom/htc/camera/io/Path;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/htc/camera/splitcapture/SplitVideoController;)Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_LatestMediaPlayerInfo:Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/htc/camera/splitcapture/SplitVideoController;Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;)Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_LatestMediaPlayerInfo:Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/htc/camera/splitcapture/SplitVideoController;)Landroid/view/Surface;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_BufferBrushSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/htc/camera/splitcapture/SplitVideoController;Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/htc/camera/splitcapture/SplitVideoController;->prepareMediaPlayer(Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/htc/camera/splitcapture/SplitVideoController;Lcom/htc/camera/component/Component;I)Z
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/splitcapture/SplitVideoController;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/htc/camera/splitcapture/SplitVideoController;Lcom/htc/camera/component/Component;I)Z
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/splitcapture/SplitVideoController;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/htc/camera/splitcapture/SplitVideoController;Lcom/htc/camera/component/Component;I)Z
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/splitcapture/SplitVideoController;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/splitcapture/SplitVideoController;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/camera/splitcapture/SplitVideoController;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/camera/splitcapture/SplitVideoController;)Lcom/htc/camera/ui/IOpenGLViewfinder;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private exitCaptureMode(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 304
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v1, "exitCaptureMode() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    if-eqz v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SetMainVideoResolutionHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SetMainVideoResolutionHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1, v3}, Lcom/htc/camera/ICaptureResolutionManager;->restoreVideoResolutionProvider(Lcom/htc/camera/Handle;I)V

    .line 312
    iput-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SetMainVideoResolutionHandle:Lcom/htc/camera/Handle;

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SetSecondVideoResolutionHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SetSecondVideoResolutionHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1, v3}, Lcom/htc/camera/ICaptureResolutionManager;->restoreVideoResolutionProvider(Lcom/htc/camera/Handle;I)V

    .line 319
    iput-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SetSecondVideoResolutionHandle:Lcom/htc/camera/Handle;

    .line 325
    :cond_1
    :goto_0
    invoke-direct {p0, v3}, Lcom/htc/camera/splitcapture/SplitVideoController;->finishCapture(Z)V

    .line 327
    iput-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    .line 328
    iput-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SecondVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    .line 329
    iput-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FirstVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    .line 330
    iput-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_BufferBrushSurface:Landroid/view/Surface;

    .line 332
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 334
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v1, "exitCaptureMode() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    return-void

    .line 323
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v1, "exitCaptureMode() - unable to restore video resolution provider, because cannot find ICaptureResolutionManager"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private finishCapture(Z)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 342
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v2, "finishCapture() - start"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoController;->stopMediaPlayer()V

    .line 348
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideo;->getVideoPath()Lcom/htc/camera/io/Path;

    move-result-object v0

    .line 350
    :goto_0
    iput-boolean v3, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_IsNewSurfaceReceived:Z

    .line 352
    new-instance v2, Lcom/htc/camera/splitcapture/SplitVideoController$4;

    invoke-direct {v2, p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoController$4;-><init>(Lcom/htc/camera/splitcapture/SplitVideoController;Lcom/htc/camera/io/Path;)V

    .line 380
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FirstVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    if-eqz v0, :cond_a

    .line 382
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FirstVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    iget-object v5, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    if-eq v0, v5, :cond_7

    .line 384
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FirstVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideo;->removeReference()I

    move-result v0

    .line 385
    iget-object v5, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finishCapture() - m_FirstVideo references = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    if-nez v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v5, "finishCapture() - delete m_FirstVideo"

    invoke-static {v0, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v5, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FirstVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v6, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->CAPTURING_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-eq v0, v6, :cond_0

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v6, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->CAPTURED_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-ne v0, v6, :cond_6

    :cond_0
    move-object v0, v2

    :goto_1
    invoke-virtual {v5, v0}, Lcom/htc/camera/splitcapture/SplitVideo;->delete(Ljava/lang/Runnable;)V

    .line 390
    iput-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FirstVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    :cond_1
    move v0, v3

    .line 413
    :goto_2
    iget-object v3, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SecondVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    if-eqz v3, :cond_2

    .line 415
    iget-object v3, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SecondVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    iget-object v5, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    if-eq v3, v5, :cond_9

    .line 417
    iget-object v3, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SecondVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v3}, Lcom/htc/camera/splitcapture/SplitVideo;->removeReference()I

    move-result v3

    .line 418
    iget-object v5, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finishCapture() - m_SecondVideo references = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    if-nez v3, :cond_2

    .line 421
    iget-object v3, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v5, "finishCapture() - delete m_SecondVideo"

    invoke-static {v3, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v5, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SecondVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    iget-object v3, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v3}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v6, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->READY_RETAKE_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-ne v3, v6, :cond_8

    move-object v3, v2

    :goto_3
    invoke-virtual {v5, v3}, Lcom/htc/camera/splitcapture/SplitVideo;->delete(Ljava/lang/Runnable;)V

    .line 423
    iput-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SecondVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    .line 447
    :cond_2
    :goto_4
    iget-object v3, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    if-eqz v3, :cond_3

    if-eqz p1, :cond_3

    .line 449
    iget-object v3, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v3}, Lcom/htc/camera/splitcapture/SplitVideo;->removeReference()I

    move-result v3

    .line 450
    iget-object v5, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finishCapture() - final video references = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isDeleteFinal = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    if-nez v3, :cond_3

    .line 453
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v3, "finishCapture() - delete final video"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v0, v2}, Lcom/htc/camera/splitcapture/SplitVideo;->delete(Ljava/lang/Runnable;)V

    .line 455
    iput-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    move v0, v4

    .line 460
    :cond_3
    if-eqz v0, :cond_4

    .line 480
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v1, "finishCapture() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    return-void

    :cond_5
    move-object v0, v1

    .line 348
    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    .line 389
    goto/16 :goto_1

    .line 396
    :cond_7
    if-eqz p1, :cond_a

    .line 398
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FirstVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideo;->removeReference()I

    .line 399
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideo;->removeReference()I

    move-result v0

    .line 400
    iget-object v5, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finishCapture() - m_FirstVideo == m_FinalVideo, references = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isDeleteFinal = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    if-nez v0, :cond_a

    .line 403
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v3, "finishCapture() - delete first(=final) video"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FirstVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v0, v2}, Lcom/htc/camera/splitcapture/SplitVideo;->delete(Ljava/lang/Runnable;)V

    .line 405
    iput-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FirstVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    .line 406
    iput-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    move v0, v4

    .line 407
    goto/16 :goto_2

    :cond_8
    move-object v3, v1

    .line 422
    goto/16 :goto_3

    .line 429
    :cond_9
    if-eqz p1, :cond_2

    .line 431
    iget-object v3, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SecondVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v3}, Lcom/htc/camera/splitcapture/SplitVideo;->removeReference()I

    .line 432
    iget-object v3, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v3}, Lcom/htc/camera/splitcapture/SplitVideo;->removeReference()I

    move-result v3

    .line 433
    iget-object v5, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finishCapture() - m_SecondVideo == m_FinalVideo, references = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isDeleteFinal = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    if-nez v3, :cond_2

    .line 436
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v3, "finishCapture() - delete right(=final) video"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SecondVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v0, v2}, Lcom/htc/camera/splitcapture/SplitVideo;->delete(Ljava/lang/Runnable;)V

    .line 438
    iput-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SecondVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    .line 439
    iput-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    move v0, v4

    .line 440
    goto/16 :goto_4

    :cond_a
    move v0, v3

    goto/16 :goto_2
.end method

.method private getNextVideoPath()Lcom/htc/camera/io/Path;
    .locals 1

    .prologue
    .line 488
    sget-object v0, Lcom/htc/camera/CameraThread;->VIDEO_DCF_INFO:Lcom/htc/camera/io/DCFInfo;

    invoke-direct {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->getNextVideoPath(Lcom/htc/camera/io/DCFInfo;)Lcom/htc/camera/io/Path;

    move-result-object v0

    return-object v0
.end method

.method private static getNextVideoPath(Lcom/htc/camera/CameraSettings;Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/StorageSlot;Lcom/htc/camera/io/FileFormat;)Lcom/htc/camera/io/Path;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 496
    .line 497
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move-object v0, v6

    .line 522
    :goto_0
    return-object v0

    .line 501
    :cond_1
    invoke-static {p2}, Lcom/htc/camera/io/DCFUtility;->getDcimPath(Lcom/htc/camera/io/StorageSlot;)Ljava/lang/String;

    move-result-object v1

    .line 502
    new-instance v4, Lcom/htc/camera/Reference;

    invoke-direct {v4}, Lcom/htc/camera/Reference;-><init>()V

    .line 503
    new-instance v5, Lcom/htc/camera/Reference;

    invoke-direct {v5}, Lcom/htc/camera/Reference;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    .line 504
    invoke-static/range {v0 .. v5}, Lcom/htc/camera/io/DCFUtility;->findNextDirAndFileCounters(Lcom/htc/camera/Settings;Ljava/lang/String;Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/FileFormat;Lcom/htc/camera/Reference;Lcom/htc/camera/Reference;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v6

    .line 512
    goto :goto_0

    .line 514
    :cond_2
    new-instance v2, Lcom/htc/camera/io/FileCounter;

    iget-object v0, v4, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v2, v0}, Lcom/htc/camera/io/FileCounter;-><init>(I)V

    .line 515
    new-instance v3, Lcom/htc/camera/io/FileCounter;

    iget-object v0, v5, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, v0}, Lcom/htc/camera/io/FileCounter;-><init>(I)V

    .line 516
    new-instance v0, Lcom/htc/camera/io/DCFPath;

    invoke-static {p1, v2}, Lcom/htc/camera/io/DCFUtility;->getDirectoryName(Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/FileCounter;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v3, p3}, Lcom/htc/camera/io/DCFUtility;->getFileName(Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileFormat;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/htc/camera/io/DCFPath;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileCounter;)V

    goto :goto_0
.end method

.method private getNextVideoPath(Lcom/htc/camera/io/DCFInfo;)Lcom/htc/camera/io/Path;
    .locals 3

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/StorageSlot;

    sget-object v2, Lcom/htc/camera/io/FileFormat;->Mpeg4:Lcom/htc/camera/io/FileFormat;

    invoke-static {v1, p1, v0, v2}, Lcom/htc/camera/splitcapture/SplitVideoController;->getNextVideoPath(Lcom/htc/camera/CameraSettings;Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/StorageSlot;Lcom/htc/camera/io/FileFormat;)Lcom/htc/camera/io/Path;

    move-result-object v0

    return-object v0
.end method

.method private initializeRecordingFilePaths()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 793
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoController;->getNextVideoPath()Lcom/htc/camera/io/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideoPath:Lcom/htc/camera/io/Path;

    .line 795
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideoPath:Lcom/htc/camera/io/Path;

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeRecordingFilePaths() - m_RecordingVideoFilePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideoPath:Lcom/htc/camera/io/Path;

    invoke-virtual {v2}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", File name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideoPath:Lcom/htc/camera/io/Path;

    invoke-virtual {v2}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/camera/io/Path;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideoPath:Lcom/htc/camera/io/Path;

    invoke-virtual {v1}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/camera/io/Path;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 800
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeRecordingFilePaths() - filePrefix = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    :goto_0
    new-instance v0, Lcom/htc/camera/io/DCFInfo;

    const-string v1, "MEDIA"

    const/16 v5, 0x64

    const v6, 0x7fffffff

    move-object v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/io/DCFInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_VideoDCFInfo:Lcom/htc/camera/io/DCFInfo;

    .line 813
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_VideoDCFInfo:Lcom/htc/camera/io/DCFInfo;

    invoke-direct {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->getNextVideoPath(Lcom/htc/camera/io/DCFInfo;)Lcom/htc/camera/io/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_NextTempVideoPath:Lcom/htc/camera/io/Path;

    .line 814
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_NextTempVideoPath:Lcom/htc/camera/io/Path;

    if-eqz v0, :cond_1

    .line 815
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeRecordingFilePaths() - nextTempVideoFilePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_NextTempVideoPath:Lcom/htc/camera/io/Path;

    invoke-virtual {v2}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", File name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_NextTempVideoPath:Lcom/htc/camera/io/Path;

    invoke-virtual {v2}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/camera/io/Path;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    :goto_1
    return-void

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v1, "initializeRecordingFilePaths() - m_RecordingVideoFilePath is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    goto :goto_0

    .line 818
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v1, "initializeRecordingFilePaths() - m_NextTempVideoFilePath is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private linkToComponents()V
    .locals 2

    .prologue
    .line 827
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    if-nez v0, :cond_0

    .line 829
    const-class v0, Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureResolutionManager;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    .line 830
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    if-nez v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v1, "linkToComponents() - Cannot find ICaptureResolutionManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

    if-nez v0, :cond_1

    .line 837
    const-class v0, Lcom/htc/camera/IViewFinder3D;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IViewFinder3D;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

    .line 838
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

    if-nez v0, :cond_1

    .line 839
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v1, "linkToComponents() - Cannot find IViewFinder3D interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-nez v0, :cond_2

    .line 845
    const-class v0, Lcom/htc/camera/ui/IOpenGLViewfinder;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ui/IOpenGLViewfinder;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    .line 846
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-nez v0, :cond_2

    .line 847
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v1, "linkToComponents() - Cannot find IOpenGLViewfinder interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    :cond_2
    return-void
.end method

.method private mergeAudioAndVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .prologue
    .line 857
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v2, "mergeAudioAndVideo() - start"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    new-instance v6, Landroid/media/MediaExtractor;

    invoke-direct {v6}, Landroid/media/MediaExtractor;-><init>()V

    .line 861
    new-instance v7, Landroid/media/MediaExtractor;

    invoke-direct {v7}, Landroid/media/MediaExtractor;-><init>()V

    .line 863
    const/4 v5, -0x1

    .line 864
    const/4 v4, -0x1

    .line 867
    const/4 v2, 0x0

    .line 873
    :try_start_0
    new-instance v3, Landroid/media/MediaMuxer;

    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-direct {v3, v0, v1}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 876
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 877
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v8

    .line 878
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9, v8}, Ljava/util/HashMap;-><init>(I)V

    .line 880
    const/4 v1, 0x0

    move v2, v5

    move v5, v1

    :goto_0
    if-ge v5, v8, :cond_3

    .line 882
    invoke-virtual {v6, v5}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v10

    .line 883
    const-string v1, "mime"

    invoke-virtual {v10, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 884
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mergeAudioAndVideo() - track["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] format is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    const/4 v1, 0x0

    .line 888
    const-string v12, "audio/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 889
    const/4 v1, 0x1

    .line 891
    :cond_0
    if-eqz v1, :cond_1

    .line 893
    invoke-virtual {v6, v5}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 894
    invoke-virtual {v3, v10}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v1

    .line 895
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    const-string v1, "max-input-size"

    invoke-virtual {v10, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 897
    const-string v1, "max-input-size"

    invoke-virtual {v10, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 898
    if-le v1, v2, :cond_2

    :goto_1
    move v2, v1

    .line 880
    :cond_1
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 898
    goto :goto_1

    .line 902
    :cond_3
    if-gez v2, :cond_16

    .line 903
    const/high16 v2, 0x100000

    move v5, v2

    .line 904
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mergeAudioAndVideo() - audioBufferSize = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 908
    invoke-virtual {v7}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v8

    .line 909
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10, v8}, Ljava/util/HashMap;-><init>(I)V

    .line 911
    const/4 v1, 0x0

    move v2, v4

    move v4, v1

    :goto_3
    if-ge v4, v8, :cond_7

    .line 913
    invoke-virtual {v7, v4}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v11

    .line 914
    const-string v1, "mime"

    invoke-virtual {v11, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 915
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mergeAudioAndVideo() - track["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] format is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v1, v13}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    const/4 v1, 0x0

    .line 919
    const-string v13, "video/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 920
    const/4 v1, 0x1

    .line 922
    :cond_4
    if-eqz v1, :cond_5

    .line 924
    invoke-virtual {v7, v4}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 925
    invoke-virtual {v3, v11}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v1

    .line 926
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    const-string v1, "max-input-size"

    invoke-virtual {v11, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 928
    const-string v1, "max-input-size"

    invoke-virtual {v11, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 929
    if-le v1, v2, :cond_6

    :goto_4
    move v2, v1

    .line 911
    :cond_5
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_3

    :cond_6
    move v1, v2

    .line 929
    goto :goto_4

    .line 933
    :cond_7
    if-gez v2, :cond_8

    .line 934
    const/high16 v2, 0x100000

    .line 935
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mergeAudioAndVideo() - videoBufferSize = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 939
    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 940
    const/16 v4, 0x18

    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 942
    if-eqz v1, :cond_9

    .line 943
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 944
    if-ltz v1, :cond_9

    .line 945
    invoke-virtual {v3, v1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 957
    :cond_9
    const/4 v4, 0x0

    .line 959
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 960
    new-instance v8, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v8}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 962
    const/4 v11, 0x0

    .line 964
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 965
    new-instance v12, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v12}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 968
    invoke-virtual {v3}, Landroid/media/MediaMuxer;->start()V

    .line 972
    :goto_5
    iput v11, v12, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 973
    invoke-virtual {v7, v2, v11}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v1

    iput v1, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 974
    iget v1, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v1, :cond_a

    iget-wide v13, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_CurrentDuration:Lcom/htc/camera/Duration;

    invoke-virtual {v1}, Lcom/htc/camera/Duration;->getMilliseconds()J

    move-result-wide v15

    const-wide/16 v17, 0x3e8

    mul-long v15, v15, v17

    cmp-long v1, v13, v15

    if-ltz v1, :cond_e

    .line 976
    :cond_a
    iget-wide v10, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 977
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mergeAudioAndVideo() - video EOS. endMs = "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    const/4 v1, 0x0

    iput v1, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 995
    :goto_6
    iput v4, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 996
    invoke-virtual {v6, v5, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v1

    iput v1, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 997
    iget v1, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v1, :cond_11

    .line 999
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v2, "mergeAudioAndVideo() - audio EOS."

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    const/4 v1, 0x0

    iput v1, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 1022
    :goto_7
    invoke-virtual {v3}, Landroid/media/MediaMuxer;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1031
    if-eqz v6, :cond_b

    .line 1032
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->release()V

    .line 1036
    :cond_b
    if-eqz v7, :cond_c

    .line 1037
    invoke-virtual {v7}, Landroid/media/MediaExtractor;->release()V

    .line 1041
    :cond_c
    if-eqz v3, :cond_d

    .line 1042
    invoke-virtual {v3}, Landroid/media/MediaMuxer;->release()V

    .line 1046
    :cond_d
    :goto_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v2, "mergeAudioAndVideo() - end"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    return-void

    .line 983
    :cond_e
    :try_start_2
    invoke-virtual {v7}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v13

    iput-wide v13, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 984
    invoke-virtual {v7}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v1

    iput v1, v12, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 985
    invoke-virtual {v7}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v1

    .line 987
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1, v2, v12}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 988
    invoke-virtual {v7}, Landroid/media/MediaExtractor;->advance()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5

    .line 1024
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 1026
    :goto_9
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v4, "mergeAudioAndVideo() - Error occured"

    invoke-static {v3, v4, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1031
    if-eqz v6, :cond_f

    .line 1032
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->release()V

    .line 1036
    :cond_f
    if-eqz v7, :cond_10

    .line 1037
    invoke-virtual {v7}, Landroid/media/MediaExtractor;->release()V

    .line 1041
    :cond_10
    if-eqz v2, :cond_d

    .line 1042
    invoke-virtual {v2}, Landroid/media/MediaMuxer;->release()V

    goto :goto_8

    .line 1005
    :cond_11
    :try_start_4
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v1

    iput-wide v1, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 1006
    iget-wide v1, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v1, v1, v10

    if-lez v1, :cond_15

    .line 1008
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v2, "mergeAudioAndVideo() - reach video end time, stop merging audio"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    .line 1031
    :catchall_0
    move-exception v1

    :goto_a
    if-eqz v6, :cond_12

    .line 1032
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->release()V

    .line 1036
    :cond_12
    if-eqz v7, :cond_13

    .line 1037
    invoke-virtual {v7}, Landroid/media/MediaExtractor;->release()V

    .line 1041
    :cond_13
    if-eqz v3, :cond_14

    .line 1042
    invoke-virtual {v3}, Landroid/media/MediaMuxer;->release()V

    .line 1031
    :cond_14
    throw v1

    .line 1013
    :cond_15
    :try_start_5
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v1

    iput v1, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 1014
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v1

    .line 1016
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1, v5, v8}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 1017
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->advance()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_6

    .line 1031
    :catchall_1
    move-exception v1

    move-object v3, v2

    goto :goto_a

    :catchall_2
    move-exception v1

    move-object v3, v2

    goto :goto_a

    .line 1024
    :catch_1
    move-exception v1

    goto :goto_9

    :cond_16
    move v5, v2

    goto/16 :goto_2
.end method

.method private onPreparingParamsBeforeRecording(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 1700
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v1, "onPreparingParamsBeforeRecording() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideoPath:Lcom/htc/camera/io/Path;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->CAPTURING_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->READY:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-ne v0, v1, :cond_1

    .line 1707
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoController;->initializeRecordingFilePaths()V

    .line 1709
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_NextTempVideoPath:Lcom/htc/camera/io/Path;

    if-nez v0, :cond_2

    .line 1711
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_VideoDCFInfo:Lcom/htc/camera/io/DCFInfo;

    invoke-direct {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->getNextVideoPath(Lcom/htc/camera/io/DCFInfo;)Lcom/htc/camera/io/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_NextTempVideoPath:Lcom/htc/camera/io/Path;

    .line 1712
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_NextTempVideoPath:Lcom/htc/camera/io/Path;

    if-eqz v0, :cond_4

    .line 1713
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreparingParamsBeforeRecording() - get new temp view path, m_NextTempVideoFilePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_NextTempVideoPath:Lcom/htc/camera/io/Path;

    invoke-virtual {v2}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    :cond_2
    :goto_0
    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoController$17;->$SwitchMap$com$htc$camera$splitcapture$SplitVideoCaptureState:[I

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1758
    :goto_1
    :pswitch_0
    iget-object v0, p3, Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;->mediaRecorderParameters:Lcom/htc/camera/MediaRecorderParameters;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_CurrentRecordingLimitDuration:Lcom/htc/camera/Duration;

    invoke-virtual {v1}, Lcom/htc/camera/Duration;->getMilliseconds()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/MediaRecorderParameters;->setMaxDuration(I)V

    .line 1760
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_CurrentVideoPath:Lcom/htc/camera/io/Path;

    if-eqz v0, :cond_5

    .line 1761
    iget-object v0, p3, Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;->mediaRecorderParameters:Lcom/htc/camera/MediaRecorderParameters;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_CurrentVideoPath:Lcom/htc/camera/io/Path;

    invoke-virtual {v1}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/MediaRecorderParameters;->setOutputFile(Ljava/lang/String;)V

    .line 1765
    :goto_2
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->captureRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    iget v0, v0, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    .line 1766
    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    iget v1, v1, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    sub-int/2addr v0, v1

    .line 1767
    if-gez v0, :cond_3

    .line 1768
    add-int/lit16 v0, v0, 0x168

    .line 1770
    :cond_3
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v2, "onPreparingParamsBeforeRecording() - Set video source: 2, set orientation: "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1772
    iget-object v1, p3, Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;->mediaRecorderParameters:Lcom/htc/camera/MediaRecorderParameters;

    invoke-virtual {v1, v4}, Lcom/htc/camera/MediaRecorderParameters;->setCamera(Landroid/hardware/Camera;)V

    .line 1773
    iget-object v1, p3, Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;->mediaRecorderParameters:Lcom/htc/camera/MediaRecorderParameters;

    invoke-virtual {v1, v0}, Lcom/htc/camera/MediaRecorderParameters;->setOrientationHint(I)V

    .line 1774
    iget-object v0, p3, Lcom/htc/camera/MediaRecorderParamsSetupEventArgs;->mediaRecorderParameters:Lcom/htc/camera/MediaRecorderParameters;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/camera/MediaRecorderParameters;->setVideoSource(I)V

    .line 1776
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v1, "onPreparingParamsBeforeRecording() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1777
    return-void

    .line 1715
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v1, "onPreparingParamsBeforeRecording() - cannot get next temp video path"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1722
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_NextTempVideoPath:Lcom/htc/camera/io/Path;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_CurrentVideoPath:Lcom/htc/camera/io/Path;

    .line 1723
    iput-object v4, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_NextTempVideoPath:Lcom/htc/camera/io/Path;

    .line 1726
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_CurrentDuration:Lcom/htc/camera/Duration;

    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getMilliseconds()J

    move-result-wide v0

    add-long/2addr v0, v5

    invoke-static {v0, v1}, Lcom/htc/camera/Duration;->fromMilliseconds(J)Lcom/htc/camera/Duration;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_CurrentRecordingLimitDuration:Lcom/htc/camera/Duration;

    goto :goto_1

    .line 1736
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_NextTempVideoPath:Lcom/htc/camera/io/Path;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_CurrentVideoPath:Lcom/htc/camera/io/Path;

    .line 1737
    iput-object v4, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_NextTempVideoPath:Lcom/htc/camera/io/Path;

    .line 1740
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_CurrentActualDuration:Lcom/htc/camera/Duration;

    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getMilliseconds()J

    move-result-wide v0

    add-long/2addr v0, v5

    invoke-static {v0, v1}, Lcom/htc/camera/Duration;->fromMilliseconds(J)Lcom/htc/camera/Duration;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_CurrentRecordingLimitDuration:Lcom/htc/camera/Duration;

    goto/16 :goto_1

    .line 1744
    :pswitch_3
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_CurrentActualDuration:Lcom/htc/camera/Duration;

    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getMilliseconds()J

    move-result-wide v0

    add-long/2addr v0, v5

    invoke-static {v0, v1}, Lcom/htc/camera/Duration;->fromMilliseconds(J)Lcom/htc/camera/Duration;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_CurrentRecordingLimitDuration:Lcom/htc/camera/Duration;

    .line 1753
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_NextTempVideoPath:Lcom/htc/camera/io/Path;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_CurrentVideoPath:Lcom/htc/camera/io/Path;

    .line 1754
    iput-object v4, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_NextTempVideoPath:Lcom/htc/camera/io/Path;

    goto/16 :goto_1

    .line 1763
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v1, "onPreparingParamsBeforeRecording() - m_CurrentVideoPath is null, use default video path"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1719
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private onPreparingToRetake1ST()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 1784
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v2, "onPreparingToRetake1ST() - start"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->captureState:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->READY_RETAKE_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1790
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1791
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1792
    :cond_0
    iput-object v5, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;

    .line 1794
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SecondVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    if-ne v0, v2, :cond_1

    move v0, v1

    .line 1796
    :goto_0
    new-instance v3, Lcom/htc/camera/splitcapture/SplitVideoController$13;

    invoke-direct {v3, p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoController$13;-><init>(Lcom/htc/camera/splitcapture/SplitVideoController;Z)V

    .line 1845
    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FirstVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    if-eqz v2, :cond_3

    .line 1848
    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FirstVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v2}, Lcom/htc/camera/splitcapture/SplitVideo;->removeReference()I

    move-result v2

    .line 1849
    :goto_1
    if-eqz v2, :cond_2

    .line 1851
    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FirstVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v2}, Lcom/htc/camera/splitcapture/SplitVideo;->removeReference()I

    move-result v2

    goto :goto_1

    .line 1794
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1854
    :cond_2
    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FirstVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    iget-object v4, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    if-eq v2, v4, :cond_6

    .line 1856
    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v4, "onPreparingToRetake1ST() - delete FirstVideo"

    invoke-static {v2, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FirstVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v2, v5}, Lcom/htc/camera/splitcapture/SplitVideo;->delete(Ljava/lang/Runnable;)V

    .line 1858
    iput-object v5, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FirstVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    .line 1869
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    if-eqz v2, :cond_5

    .line 1871
    if-eqz v0, :cond_7

    .line 1874
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_NextTempVideoPath:Lcom/htc/camera/io/Path;

    if-nez v0, :cond_4

    .line 1875
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_VideoDCFInfo:Lcom/htc/camera/io/DCFInfo;

    invoke-direct {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->getNextVideoPath(Lcom/htc/camera/io/DCFInfo;)Lcom/htc/camera/io/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_NextTempVideoPath:Lcom/htc/camera/io/Path;

    .line 1876
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v2, "onPreparingToRetake1ST() - rename final video"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1877
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SecondVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_NextTempVideoPath:Lcom/htc/camera/io/Path;

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/camera/splitcapture/SplitVideo;->rename(Lcom/htc/camera/io/Path;ZLjava/lang/Runnable;)V

    .line 1878
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideo;->removeReference()I

    .line 1879
    iput-object v5, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    .line 1896
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v1, "onPreparingToRetake1ST() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1897
    return-void

    .line 1862
    :cond_6
    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v4, "onPreparingToRetake1ST() - delete FirstVideo(=FinalVideo)"

    invoke-static {v2, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1863
    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FirstVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v2, v3}, Lcom/htc/camera/splitcapture/SplitVideo;->delete(Ljava/lang/Runnable;)V

    .line 1864
    iput-object v5, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FirstVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    .line 1865
    iput-object v5, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    goto :goto_2

    .line 1884
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideo;->removeReference()I

    move-result v0

    .line 1885
    if-nez v0, :cond_8

    .line 1887
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v1, "onPreparingToRetake1ST() - delete final video"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v0, v3}, Lcom/htc/camera/splitcapture/SplitVideo;->delete(Ljava/lang/Runnable;)V

    .line 1889
    iput-object v5, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    goto :goto_3

    .line 1892
    :cond_8
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreparingToRetake1ST() - cannot delete final video since still have "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " references"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private onPreparingToRetake2ND()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 1904
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v2, "onPreparingToRetake2ND() - start"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1906
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->captureState:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->CAPTURED_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1909
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1910
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1911
    :cond_0
    iput-object v5, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;

    .line 1913
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FirstVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    if-ne v0, v2, :cond_1

    move v0, v1

    .line 1915
    :goto_0
    new-instance v3, Lcom/htc/camera/splitcapture/SplitVideoController$14;

    invoke-direct {v3, p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoController$14;-><init>(Lcom/htc/camera/splitcapture/SplitVideoController;Z)V

    .line 1964
    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SecondVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    if-eqz v2, :cond_3

    .line 1967
    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SecondVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v2}, Lcom/htc/camera/splitcapture/SplitVideo;->removeReference()I

    move-result v2

    .line 1968
    :goto_1
    if-eqz v2, :cond_2

    .line 1970
    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SecondVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v2}, Lcom/htc/camera/splitcapture/SplitVideo;->removeReference()I

    move-result v2

    goto :goto_1

    .line 1913
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1973
    :cond_2
    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SecondVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    iget-object v4, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    if-eq v2, v4, :cond_6

    .line 1975
    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v4, "onPreparingToRetake2ND() - delete SecondVideo"

    invoke-static {v2, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SecondVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v2, v5}, Lcom/htc/camera/splitcapture/SplitVideo;->delete(Ljava/lang/Runnable;)V

    .line 1977
    iput-object v5, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SecondVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    .line 1988
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    if-eqz v2, :cond_5

    .line 1990
    if-eqz v0, :cond_7

    .line 1993
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v2, "onPreparingToRetake2ND() - rename final video"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1994
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_NextTempVideoPath:Lcom/htc/camera/io/Path;

    if-nez v0, :cond_4

    .line 1995
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_VideoDCFInfo:Lcom/htc/camera/io/DCFInfo;

    invoke-direct {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->getNextVideoPath(Lcom/htc/camera/io/DCFInfo;)Lcom/htc/camera/io/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_NextTempVideoPath:Lcom/htc/camera/io/Path;

    .line 1996
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FirstVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_NextTempVideoPath:Lcom/htc/camera/io/Path;

    invoke-virtual {v0, v2, v1, v3}, Lcom/htc/camera/splitcapture/SplitVideo;->rename(Lcom/htc/camera/io/Path;ZLjava/lang/Runnable;)V

    .line 1997
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideo;->removeReference()I

    .line 1998
    iput-object v5, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    .line 2015
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v1, "onPreparingToRetake2ND() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2016
    return-void

    .line 1981
    :cond_6
    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v4, "onPreparingToRetake2ND() - delete SecondVideo(=FinalVideo)"

    invoke-static {v2, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SecondVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v2, v3}, Lcom/htc/camera/splitcapture/SplitVideo;->delete(Ljava/lang/Runnable;)V

    .line 1983
    iput-object v5, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SecondVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    .line 1984
    iput-object v5, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    goto :goto_2

    .line 2003
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideo;->removeReference()I

    move-result v0

    .line 2004
    if-nez v0, :cond_8

    .line 2006
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v1, "onPreparingToRetake2ND() - delete final video"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2007
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v0, v3}, Lcom/htc/camera/splitcapture/SplitVideo;->delete(Ljava/lang/Runnable;)V

    .line 2008
    iput-object v5, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    goto :goto_3

    .line 2011
    :cond_8
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreparingToRetake2ND() - cannot delete final video since still have "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " references"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private onRecordingStateChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/RecordingState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/RecordingState;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2023
    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoController$17;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 2120
    :cond_0
    :goto_0
    return-void

    .line 2027
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-eqz v0, :cond_1

    .line 2029
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    new-instance v1, Lcom/htc/camera/splitcapture/SplitVideoController$15;

    invoke-direct {v1, p0}, Lcom/htc/camera/splitcapture/SplitVideoController$15;-><init>(Lcom/htc/camera/splitcapture/SplitVideoController;)V

    invoke-interface {v0, v1}, Lcom/htc/camera/ui/IOpenGLViewfinder;->queueRenderingEvent(Ljava/lang/Runnable;)V

    .line 2047
    :cond_1
    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoController$17;->$SwitchMap$com$htc$camera$splitcapture$SplitVideoCaptureState:[I

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 2050
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->captureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->CAPTURING_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 2053
    :pswitch_3
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->captureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->CAPTURING_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 2059
    :pswitch_4
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->captureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->RE_CAPTURING_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 2066
    :pswitch_5
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v2, "onRecordingStateChanged() - Attach record surface"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2067
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getMediaRecorder()Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    .line 2068
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v0, v0, Lcom/htc/camera/ICaptureResolutionManager;->videoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 2069
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

    if-nez v1, :cond_3

    .line 2070
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v1, "onRecordingStateChanged() - No IViewFinder3D interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2076
    :catch_0
    move-exception v0

    .line 2078
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v2, "onRecordingStateChanged() - getHtcRecordSurface"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 2068
    goto :goto_1

    .line 2071
    :cond_3
    if-nez v0, :cond_4

    .line 2072
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v1, "onRecordingStateChanged() - No video resolution"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2074
    :cond_4
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v0

    sget-object v4, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/htc/camera/IViewFinder3D;->attachRenderingSurface(Landroid/view/Surface;IILcom/htc/camera/rotate/UIRotation;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_RenderingSurfaceHandle:Lcom/htc/camera/Handle;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2084
    :pswitch_6
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Stopping:Lcom/htc/camera/RecordingState;

    if-ne v0, v2, :cond_0

    .line 2086
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_UI:Lcom/htc/camera/splitcapture/SplitVideoUI;

    const/16 v2, 0x271b

    invoke-virtual {p0, v0, v2}, Lcom/htc/camera/splitcapture/SplitVideoController;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 2088
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_RenderingSurfaceHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 2090
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v2, "onRecordingStateChanged() - Detach record surface"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2091
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

    if-eqz v0, :cond_5

    .line 2092
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_RenderingSurfaceHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v2}, Lcom/htc/camera/IViewFinder3D;->detachRenderingSurface(Lcom/htc/camera/Handle;)V

    .line 2095
    :goto_2
    iput-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_RenderingSurfaceHandle:Lcom/htc/camera/Handle;

    goto/16 :goto_0

    .line 2094
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v2, "onRecordingStateChanged() - No IViewFinder3D interface"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2101
    :pswitch_7
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_UI:Lcom/htc/camera/splitcapture/SplitVideoUI;

    const/16 v2, 0x271a

    invoke-virtual {p0, v0, v2}, Lcom/htc/camera/splitcapture/SplitVideoController;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 2104
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_6

    .line 2105
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 2107
    :cond_6
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoController;->stopMediaPlayer()V

    .line 2109
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_RenderingSurfaceHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 2111
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v2, "onRecordingStateChanged() - Detach record surface"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

    if-eqz v0, :cond_7

    .line 2113
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_RenderingSurfaceHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v2}, Lcom/htc/camera/IViewFinder3D;->detachRenderingSurface(Lcom/htc/camera/Handle;)V

    .line 2116
    :goto_3
    iput-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_RenderingSurfaceHandle:Lcom/htc/camera/Handle;

    goto/16 :goto_0

    .line 2115
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v2, "onRecordingStateChanged() - No IViewFinder3D interface"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2023
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 2047
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private onVideoThumbnailCreated(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/imaging/ThumbnailEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/imaging/ThumbnailEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/imaging/ThumbnailEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2127
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v1, "onVideoThumbnailCreated() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2141
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v1, "onVideoThumbnailCreated() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    return-void
.end method

.method private prepareMediaPlayer(Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;)V
    .locals 2

    .prologue
    .line 2164
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoController$16;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/splitcapture/SplitVideoController$16;-><init>(Lcom/htc/camera/splitcapture/SplitVideoController;Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;)V

    .line 2196
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    invoke-interface {v1, v0}, Lcom/htc/camera/ui/IOpenGLViewfinder;->queueRenderingEvent(Ljava/lang/Runnable;)V

    .line 2197
    return-void
.end method

.method private restoreMainVideoResolutionProvider()V
    .locals 3

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    if-eqz v0, :cond_1

    .line 1376
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SetMainVideoResolutionHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 1378
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SetMainVideoResolutionHandle:Lcom/htc/camera/Handle;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/ICaptureResolutionManager;->restoreVideoResolutionProvider(Lcom/htc/camera/Handle;I)V

    .line 1379
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SetMainVideoResolutionHandle:Lcom/htc/camera/Handle;

    .line 1386
    :goto_0
    return-void

    .line 1382
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v1, "restoreMainVideoResolutionProvider() - m_SetMainVideoResolutionHandle is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1385
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v1, "restoreMainVideoResolutionProvider() - unable to restore video resolution provider, because cannot find ICaptureResolutionManager"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private restoreSecondVideoResolutionProvider()V
    .locals 3

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    if-eqz v0, :cond_1

    .line 1409
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SetSecondVideoResolutionHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 1411
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SetSecondVideoResolutionHandle:Lcom/htc/camera/Handle;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/ICaptureResolutionManager;->restoreVideoResolutionProvider(Lcom/htc/camera/Handle;I)V

    .line 1412
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SetSecondVideoResolutionHandle:Lcom/htc/camera/Handle;

    .line 1419
    :goto_0
    return-void

    .line 1415
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v1, "restoreSecondVideoResolutionProvider() - m_SetSecondVideoResolutionHandle is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1418
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v1, "restoreSecondVideoResolutionProvider() - unable to restore video resolution provider, because cannot find ICaptureResolutionManager"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setMainVideoResolutionProvider()V
    .locals 3

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    if-eqz v0, :cond_0

    .line 1395
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_MainVideoResolutionProvider:Lcom/htc/camera/splitcapture/SplitVideoController$SplitVideoMainResolutionProvider;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/ICaptureResolutionManager;->setVideoResolutionProvider(Lcom/htc/camera/am;I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SetMainVideoResolutionHandle:Lcom/htc/camera/Handle;

    .line 1399
    :goto_0
    return-void

    .line 1398
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v1, "setMainVideoResolutionProvider() - unable to set custom video resolution provider, because cannot find ICaptureResolutionManager"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setSecondVideoResolutionProvider()V
    .locals 3

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    if-eqz v0, :cond_0

    .line 1430
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v0, v0, Lcom/htc/camera/ICaptureResolutionManager;->videoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 1431
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SecondVideoResolutionProvider:Lcom/htc/camera/splitcapture/SplitCaptureFrontVideoResolutionProvider;

    invoke-virtual {v1, v0}, Lcom/htc/camera/splitcapture/SplitCaptureFrontVideoResolutionProvider;->setVideoResolution(Lcom/htc/camera/Resolution;)V

    .line 1432
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SecondVideoResolutionProvider:Lcom/htc/camera/splitcapture/SplitCaptureFrontVideoResolutionProvider;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/ICaptureResolutionManager;->setVideoResolutionProvider(Lcom/htc/camera/am;I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SetSecondVideoResolutionHandle:Lcom/htc/camera/Handle;

    .line 1436
    :goto_0
    return-void

    .line 1435
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v1, "setSecondVideoResolutionProvider() - unable to set custom video resolution provider, because cannot find ICaptureResolutionManager"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startMediaPlayer(ZZZ)V
    .locals 2

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-nez v0, :cond_0

    .line 1484
    :goto_0
    return-void

    .line 1455
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    new-instance v1, Lcom/htc/camera/splitcapture/SplitVideoController$11;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/htc/camera/splitcapture/SplitVideoController$11;-><init>(Lcom/htc/camera/splitcapture/SplitVideoController;ZZZ)V

    invoke-interface {v0, v1}, Lcom/htc/camera/ui/IOpenGLViewfinder;->queueRenderingEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private startMediaPlayerInternal(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 1488
    if-nez p1, :cond_0

    .line 1501
    :goto_0
    return-void

    .line 1491
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v1, "startMediaPlayerInternal() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1500
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v1, "startMediaPlayerInternal() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1496
    :catch_0
    move-exception v0

    .line 1498
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v2, "startMediaPlayer() - Error occured"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private stopMediaPlayer()V
    .locals 2

    .prologue
    .line 1529
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoController$12;

    invoke-direct {v0, p0}, Lcom/htc/camera/splitcapture/SplitVideoController$12;-><init>(Lcom/htc/camera/splitcapture/SplitVideoController;)V

    .line 1554
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    invoke-interface {v1, v0}, Lcom/htc/camera/ui/IOpenGLViewfinder;->queueRenderingEvent(Ljava/lang/Runnable;)V

    .line 1555
    return-void
.end method


# virtual methods
.method public canPause()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public enter(I)Z
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v1, "Rube: enter SplitVideoController"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoController;->linkToComponents()V

    .line 240
    const/16 v0, 0x2713

    invoke-virtual {p0, p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 242
    const/4 v0, 0x1

    return v0
.end method

.method public estimateRemainingPhotoCount(Lcom/htc/camera/io/StorageSlot;J)J
    .locals 2

    .prologue
    .line 251
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public estimateRemainingRecordingSeconds(Lcom/htc/camera/io/StorageSlot;J)J
    .locals 7

    .prologue
    const-wide/16 v5, 0x3

    .line 260
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    const-wide/16 v0, -0x1

    .line 291
    :goto_0
    return-wide v0

    .line 263
    :cond_0
    iput-wide p2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_currentFreeSpace:J

    .line 264
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v0, v0, Lcom/htc/camera/ICaptureResolutionManager;->videoBitRate:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 265
    const-wide/16 v1, 0x0

    .line 266
    sget-object v4, Lcom/htc/camera/splitcapture/SplitVideoController$17;->$SwitchMap$com$htc$camera$splitcapture$SplitVideoCaptureState:[I

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_0

    .line 285
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v3, "estimateRemainingRecordingSeconds() - in unrecognizable state"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v1

    .line 289
    :goto_1
    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "estimateRemainingRecordingSeconds() - remaining time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " seconds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 275
    :pswitch_0
    iget-wide v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_currentFreeSpace:J

    add-int/lit16 v2, v3, 0x4e20

    div-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    div-long/2addr v0, v2

    div-long/2addr v0, v5

    goto :goto_1

    .line 281
    :pswitch_1
    iget-wide v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_currentFreeSpace:J

    add-int/lit16 v2, v3, 0x4e20

    div-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    div-long/2addr v0, v2

    div-long/2addr v0, v5

    goto :goto_1

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public exit(I)V
    .locals 6

    .prologue
    .line 300
    const/16 v2, 0x271f

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/splitcapture/SplitVideoController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 301
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 557
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 695
    invoke-super {p0, p1}, Lcom/htc/camera/splitcapture/ISplitVideoController;->handleMessage(Landroid/os/Message;)V

    .line 698
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 560
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/splitcapture/SplitVideoUI;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_UI:Lcom/htc/camera/splitcapture/SplitVideoUI;

    goto :goto_0

    .line 564
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_BufferBrushSurface:Landroid/view/Surface;

    .line 565
    iput-boolean v5, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_IsNewSurfaceReceived:Z

    goto :goto_0

    .line 571
    :pswitch_3
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 572
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->captureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->READY:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 578
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->exitCaptureMode(I)V

    goto :goto_0

    .line 582
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v1, v0

    .line 583
    :goto_1
    sget-object v3, Lcom/htc/camera/splitcapture/SplitVideoController$17;->$SwitchMap$com$htc$camera$splitcapture$SplitVideoCaptureState:[I

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 595
    :pswitch_6
    if-nez v1, :cond_1

    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_IsNewSurfaceReceived:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_LatestMediaPlayerInfo:Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;

    if-nez v0, :cond_0

    .line 598
    :cond_1
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SecondVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v1}, Lcom/htc/camera/splitcapture/SplitVideo;->getVideoPath()Lcom/htc/camera/io/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_BufferBrushSurface:Landroid/view/Surface;

    invoke-direct {v0, p0, v5, v1, v2}, Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;-><init>(Lcom/htc/camera/splitcapture/SplitVideoController;ZLcom/htc/camera/io/Path;Landroid/view/Surface;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_LatestMediaPlayerInfo:Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;

    .line 599
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_LatestMediaPlayerInfo:Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;

    invoke-direct {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->prepareMediaPlayer(Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 582
    goto :goto_1

    .line 587
    :pswitch_7
    if-nez v1, :cond_3

    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_IsNewSurfaceReceived:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_LatestMediaPlayerInfo:Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;

    if-nez v0, :cond_0

    .line 589
    :cond_3
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FirstVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v1}, Lcom/htc/camera/splitcapture/SplitVideo;->getVideoPath()Lcom/htc/camera/io/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_BufferBrushSurface:Landroid/view/Surface;

    invoke-direct {v0, p0, v5, v1, v2}, Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;-><init>(Lcom/htc/camera/splitcapture/SplitVideoController;ZLcom/htc/camera/io/Path;Landroid/view/Surface;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_LatestMediaPlayerInfo:Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;

    .line 590
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_LatestMediaPlayerInfo:Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;

    invoke-direct {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->prepareMediaPlayer(Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;)V

    goto/16 :goto_0

    .line 604
    :pswitch_8
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v1}, Lcom/htc/camera/splitcapture/SplitVideo;->getVideoPath()Lcom/htc/camera/io/Path;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_BufferBrushSurface:Landroid/view/Surface;

    invoke-direct {v0, p0, v2, v1, v3}, Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;-><init>(Lcom/htc/camera/splitcapture/SplitVideoController;ZLcom/htc/camera/io/Path;Landroid/view/Surface;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_LatestMediaPlayerInfo:Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;

    .line 605
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_LatestMediaPlayerInfo:Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;

    invoke-direct {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->prepareMediaPlayer(Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;)V

    goto/16 :goto_0

    .line 620
    :pswitch_9
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoController;->stopMediaPlayer()V

    .line 622
    iput-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    .line 623
    iput-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SecondVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    .line 624
    iput-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FirstVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    .line 627
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->captureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->READY:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 631
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_4
    iput-boolean v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_IsDeleteFinal:Z

    .line 632
    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_IsDeleteFinal:Z

    invoke-direct {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->finishCapture(Z)V

    goto/16 :goto_0

    .line 636
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 637
    if-nez v0, :cond_5

    .line 638
    invoke-direct {p0, v2, v5, v5}, Lcom/htc/camera/splitcapture/SplitVideoController;->startMediaPlayer(ZZZ)V

    goto/16 :goto_0

    .line 640
    :cond_5
    invoke-direct {p0, v5, v2, v2}, Lcom/htc/camera/splitcapture/SplitVideoController;->startMediaPlayer(ZZZ)V

    goto/16 :goto_0

    .line 644
    :pswitch_c
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoController;->onPreparingToRetake1ST()V

    goto/16 :goto_0

    .line 648
    :pswitch_d
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoController;->onPreparingToRetake2ND()V

    goto/16 :goto_0

    .line 652
    :pswitch_e
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoController;->stopMediaPlayer()V

    goto/16 :goto_0

    .line 656
    :pswitch_f
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoController;->setMainVideoResolutionProvider()V

    goto/16 :goto_0

    .line 660
    :pswitch_10
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoController;->restoreMainVideoResolutionProvider()V

    goto/16 :goto_0

    .line 664
    :pswitch_11
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoController;->setSecondVideoResolutionProvider()V

    goto/16 :goto_0

    .line 668
    :pswitch_12
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitVideoController;->restoreSecondVideoResolutionProvider()V

    goto/16 :goto_0

    .line 672
    :pswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/Duration;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_CurrentDuration:Lcom/htc/camera/Duration;

    goto/16 :goto_0

    .line 676
    :pswitch_14
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    .line 677
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/htc/camera/RecordingState;->Stopping:Lcom/htc/camera/RecordingState;

    if-ne v1, v3, :cond_6

    iget-object v1, v0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/htc/camera/RecordingState;->Reviewing:Lcom/htc/camera/RecordingState;

    if-ne v1, v3, :cond_6

    iget-object v1, v0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    if-eq v1, v3, :cond_0

    .line 681
    :cond_6
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recording times up. Current duration limit has been set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_CurrentRecordingLimitDuration:Lcom/htc/camera/Duration;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_LastCaptureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-virtual {v0, v1, v5, v2}, Lcom/htc/camera/CameraThread;->stopVideoRecording(Lcom/htc/camera/CaptureHandle;ZZ)V

    goto/16 :goto_0

    .line 687
    :pswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/Duration;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_CurrentActualDuration:Lcom/htc/camera/Duration;

    goto/16 :goto_0

    .line 691
    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/CameraType;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FirstVideoCameraType:Lcom/htc/camera/CameraType;

    goto/16 :goto_0

    .line 557
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_4
        :pswitch_c
        :pswitch_15
        :pswitch_16
        :pswitch_f
        :pswitch_10
    .end packed-switch

    .line 583
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 707
    invoke-super {p0}, Lcom/htc/camera/splitcapture/ISplitVideoController;->initializeOverride()V

    .line 710
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->captureState:Lcom/htc/camera/property/Property;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 712
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    .line 713
    sget-object v1, Lcom/htc/camera/CameraThread;->EVENT_MEDIA_SAVED:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitVideoController$5;

    invoke-direct {v2, p0}, Lcom/htc/camera/splitcapture/SplitVideoController$5;-><init>(Lcom/htc/camera/splitcapture/SplitVideoController;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraThread;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 722
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->preparingParamsBeforeRecording:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitVideoController$6;

    invoke-direct {v2, p0}, Lcom/htc/camera/splitcapture/SplitVideoController$6;-><init>(Lcom/htc/camera/splitcapture/SplitVideoController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 733
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitVideoController$7;

    invoke-direct {v2, p0}, Lcom/htc/camera/splitcapture/SplitVideoController$7;-><init>(Lcom/htc/camera/splitcapture/SplitVideoController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 744
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->videoThumbnailCreatedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitVideoController$8;

    invoke-direct {v2, p0}, Lcom/htc/camera/splitcapture/SplitVideoController$8;-><init>(Lcom/htc/camera/splitcapture/SplitVideoController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 755
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->mediaRecorderInfoCallbackEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitVideoController$9;

    invoke-direct {v2, p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoController$9;-><init>(Lcom/htc/camera/splitcapture/SplitVideoController;Lcom/htc/camera/CameraThread;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 764
    iget-object v0, v0, Lcom/htc/camera/CameraThread;->requestDeleteLatestMediaEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/splitcapture/SplitVideoController$10;

    invoke-direct {v1, p0}, Lcom/htc/camera/splitcapture/SplitVideoController$10;-><init>(Lcom/htc/camera/splitcapture/SplitVideoController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 781
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoController$SplitVideoMainResolutionProvider;

    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/splitcapture/SplitVideoController$SplitVideoMainResolutionProvider;-><init>(Lcom/htc/camera/splitcapture/SplitVideoController;Lcom/htc/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_MainVideoResolutionProvider:Lcom/htc/camera/splitcapture/SplitVideoController$SplitVideoMainResolutionProvider;

    .line 782
    new-instance v0, Lcom/htc/camera/splitcapture/SplitCaptureFrontVideoResolutionProvider;

    invoke-direct {v0}, Lcom/htc/camera/splitcapture/SplitCaptureFrontVideoResolutionProvider;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SecondVideoResolutionProvider:Lcom/htc/camera/splitcapture/SplitCaptureFrontVideoResolutionProvider;

    .line 784
    const-class v0, Lcom/htc/camera/aj;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->startMonitoringComponent(Ljava/lang/Class;)V

    .line 785
    return-void
.end method

.method protected onMonitoredComponentAdded(Lcom/htc/camera/component/Component;)V
    .locals 1

    .prologue
    .line 1359
    invoke-super {p0, p1}, Lcom/htc/camera/splitcapture/ISplitVideoController;->onMonitoredComponentAdded(Lcom/htc/camera/component/Component;)V

    .line 1361
    instance-of v0, p1, Lcom/htc/camera/aj;

    if-eqz v0, :cond_0

    .line 1363
    check-cast p1, Lcom/htc/camera/aj;

    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    .line 1364
    const-class v0, Lcom/htc/camera/aj;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->stopMonitoringComponent(Ljava/lang/Class;)V

    .line 1366
    :cond_0
    return-void
.end method

.method public pauseVideoRecording(Lcom/htc/camera/CaptureHandle;Landroid/media/MediaRecorder;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2150
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_UI:Lcom/htc/camera/splitcapture/SplitVideoUI;

    if-nez v0, :cond_0

    move v0, v1

    .line 2156
    :goto_0
    return v0

    .line 2152
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 2153
    goto :goto_0

    .line 2155
    :cond_1
    invoke-static {p2}, Lcom/htc/lib3/media/HtcMediaRecorderUtils;->b(Landroid/media/MediaRecorder;)V

    .line 2156
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public resumeVideoRecording(Lcom/htc/camera/CaptureHandle;Landroid/media/MediaRecorder;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2205
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_UI:Lcom/htc/camera/splitcapture/SplitVideoUI;

    if-nez v0, :cond_0

    move v0, v1

    .line 2211
    :goto_0
    return v0

    .line 2207
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 2208
    goto :goto_0

    .line 2210
    :cond_1
    invoke-static {p2}, Lcom/htc/lib3/media/HtcMediaRecorderUtils;->c(Landroid/media/MediaRecorder;)V

    .line 2211
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setDuration(Lcom/htc/camera/Duration;)V
    .locals 0

    .prologue
    .line 1445
    return-void
.end method

.method public startVideoRecording(Lcom/htc/camera/CaptureHandle;Landroid/media/MediaRecorder;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1509
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_UI:Lcom/htc/camera/splitcapture/SplitVideoUI;

    if-nez v0, :cond_0

    move v0, v1

    .line 1521
    :goto_0
    return v0

    .line 1511
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 1512
    goto :goto_0

    .line 1514
    :cond_1
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_LastCaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 1518
    invoke-virtual {p2}, Landroid/media/MediaRecorder;->start()V

    .line 1521
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public stopVideoRecording(Lcom/htc/camera/CaptureHandle;Landroid/media/MediaRecorder;)Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x2714

    const/16 v2, 0x2712

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 1563
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_UI:Lcom/htc/camera/splitcapture/SplitVideoUI;

    if-nez v0, :cond_1

    .line 1692
    :cond_0
    :goto_0
    return v3

    .line 1565
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1568
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v1, "stopVideoRecording() - before mediaRecorder.stop()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    invoke-virtual {p2}, Landroid/media/MediaRecorder;->stop()V

    .line 1570
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v1, "stopVideoRecording() - after mediaRecorder.stop()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoController$17;->$SwitchMap$com$htc$camera$splitcapture$SplitVideoCaptureState:[I

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1673
    :goto_1
    :pswitch_0
    if-eqz v3, :cond_4

    .line 1676
    new-instance v0, Lcom/htc/camera/io/SaveVideoTask;

    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/camera/io/SaveVideoTask;-><init>(Lcom/htc/camera/CameraThread;)V

    .line 1677
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v1}, Lcom/htc/camera/splitcapture/SplitVideo;->getVideoPath()Lcom/htc/camera/io/Path;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/camera/io/SaveVideoTask;->filePath:Lcom/htc/camera/io/Path;

    .line 1678
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_LastCaptureHandle:Lcom/htc/camera/CaptureHandle;

    iput-object v1, v0, Lcom/htc/camera/io/SaveVideoTask;->captureHandle:Lcom/htc/camera/CaptureHandle;

    .line 1679
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraThread;->saveVideo(Lcom/htc/camera/io/SaveVideoTask;)V

    .line 1690
    :goto_2
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_LastCaptureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->endCaptureVideo(Lcom/htc/camera/CaptureHandle;)V

    move v3, v6

    .line 1692
    goto :goto_0

    .line 1575
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->captureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v4, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->CAPTURED_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0, v1, v4}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1576
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideo;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_CurrentVideoPath:Lcom/htc/camera/io/Path;

    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/splitcapture/SplitVideo;-><init>(Lcom/htc/camera/io/Path;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FirstVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    .line 1577
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopVideoRecording() - m_FirstVideo has "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FirstVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v4}, Lcom/htc/camera/splitcapture/SplitVideo;->addReference()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " references"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_UI:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FirstVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideo;->getVideoPath()Lcom/htc/camera/io/Path;

    move-result-object v5

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/splitcapture/SplitVideoController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_1

    .line 1582
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->captureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v4, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->CAPTURED_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0, v1, v4}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1583
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideo;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_CurrentVideoPath:Lcom/htc/camera/io/Path;

    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/splitcapture/SplitVideo;-><init>(Lcom/htc/camera/io/Path;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SecondVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    .line 1584
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SecondVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideo;->addReference()I

    .line 1596
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FirstVideoCameraType:Lcom/htc/camera/CameraType;

    sget-object v1, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    if-ne v0, v1, :cond_2

    .line 1597
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SecondVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideo;->getVideoPath()Lcom/htc/camera/io/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SecondVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v1}, Lcom/htc/camera/splitcapture/SplitVideo;->getVideoPath()Lcom/htc/camera/io/Path;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideoPath:Lcom/htc/camera/io/Path;

    invoke-virtual {v4}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v1, v4}, Lcom/htc/camera/splitcapture/SplitVideoController;->mergeAudioAndVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    :goto_3
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideo;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideoPath:Lcom/htc/camera/io/Path;

    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/splitcapture/SplitVideo;-><init>(Lcom/htc/camera/io/Path;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    .line 1601
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideo;->addReference()I

    .line 1603
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_UI:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideo;->getVideoPath()Lcom/htc/camera/io/Path;

    move-result-object v5

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/splitcapture/SplitVideoController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1619
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_UI:Lcom/htc/camera/splitcapture/SplitVideoUI;

    move-object v0, p0

    move v2, v7

    move v4, v3

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/splitcapture/SplitVideoController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    move v3, v6

    .line 1628
    goto/16 :goto_1

    .line 1599
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FirstVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideo;->getVideoPath()Lcom/htc/camera/io/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SecondVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v1}, Lcom/htc/camera/splitcapture/SplitVideo;->getVideoPath()Lcom/htc/camera/io/Path;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideoPath:Lcom/htc/camera/io/Path;

    invoke-virtual {v4}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v1, v4}, Lcom/htc/camera/splitcapture/SplitVideoController;->mergeAudioAndVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1630
    :pswitch_3
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->captureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v4, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->RE_CAPTURED_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0, v1, v4}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1631
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideo;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_CurrentVideoPath:Lcom/htc/camera/io/Path;

    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/splitcapture/SplitVideo;-><init>(Lcom/htc/camera/io/Path;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FirstVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    .line 1632
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopVideoRecording() - m_FirstVideo has "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FirstVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v4}, Lcom/htc/camera/splitcapture/SplitVideo;->addReference()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " references"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_UI:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FirstVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideo;->getVideoPath()Lcom/htc/camera/io/Path;

    move-result-object v5

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/splitcapture/SplitVideoController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1646
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FirstVideoCameraType:Lcom/htc/camera/CameraType;

    sget-object v1, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    if-ne v0, v1, :cond_3

    .line 1647
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SecondVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideo;->getVideoPath()Lcom/htc/camera/io/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FirstVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v1}, Lcom/htc/camera/splitcapture/SplitVideo;->getVideoPath()Lcom/htc/camera/io/Path;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideoPath:Lcom/htc/camera/io/Path;

    invoke-virtual {v2}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/camera/splitcapture/SplitVideoController;->mergeAudioAndVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    :goto_4
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideo;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideoPath:Lcom/htc/camera/io/Path;

    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitVideoController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/splitcapture/SplitVideo;-><init>(Lcom/htc/camera/io/Path;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    .line 1651
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideo;->addReference()I

    .line 1667
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_UI:Lcom/htc/camera/splitcapture/SplitVideoUI;

    move-object v0, p0

    move v2, v7

    move v4, v3

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/splitcapture/SplitVideoController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    move v3, v6

    .line 1669
    goto/16 :goto_1

    .line 1649
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FirstVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideo;->getVideoPath()Lcom/htc/camera/io/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FirstVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v1}, Lcom/htc/camera/splitcapture/SplitVideo;->getVideoPath()Lcom/htc/camera/io/Path;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideoPath:Lcom/htc/camera/io/Path;

    invoke-virtual {v2}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/camera/splitcapture/SplitVideoController;->mergeAudioAndVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1684
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    if-eqz v0, :cond_5

    .line 1685
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->m_LastCaptureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-interface {v0, v1}, Lcom/htc/camera/aj;->ignoreCapture(Lcom/htc/camera/CaptureHandle;)V

    goto/16 :goto_2

    .line 1687
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;

    const-string v1, "stopVideoRecording() - m_ThumbnailImageManager is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1573
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
