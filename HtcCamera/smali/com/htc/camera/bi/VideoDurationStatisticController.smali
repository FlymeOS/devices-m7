.class public Lcom/htc/camera/bi/VideoDurationStatisticController;
.super Lcom/htc/camera/component/cm;
.source "VideoDurationStatisticController.java"


# instance fields
.field private captureMode:Lcom/htc/camera/capturemode/CaptureMode;

.field private mCropMeInHasChanged:Z

.field private mCropMeInVideoHistoryTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mDualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

.field private mFrontHasChanged:Z

.field private mFrontVideoHistoryTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMainHasChanged:Z

.field private mMainVideoHistoryTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSynchronizedHasChanged:Z

.field private mSynchronizedVideoHistoryTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    .line 47
    const-string v0, "VideoDurationStatisticController"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/component/cm;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mMainVideoHistoryTable:Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mFrontVideoHistoryTable:Ljava/util/HashMap;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mSynchronizedVideoHistoryTable:Ljava/util/HashMap;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mCropMeInVideoHistoryTable:Ljava/util/HashMap;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/bi/VideoDurationStatisticController;)Lcom/htc/camera/capturemode/CaptureMode;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->captureMode:Lcom/htc/camera/capturemode/CaptureMode;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/camera/bi/VideoDurationStatisticController;Lcom/htc/camera/capturemode/CaptureMode;)Lcom/htc/camera/capturemode/CaptureMode;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->captureMode:Lcom/htc/camera/capturemode/CaptureMode;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/camera/bi/VideoDurationStatisticController;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mFrontHasChanged:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/camera/bi/VideoDurationStatisticController;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mMainHasChanged:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/camera/bi/VideoDurationStatisticController;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mSynchronizedHasChanged:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/camera/bi/VideoDurationStatisticController;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mCropMeInHasChanged:Z

    return v0
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 5

    .prologue
    .line 57
    invoke-super {p0}, Lcom/htc/camera/component/cm;->initializeOverride()V

    .line 58
    invoke-virtual {p0}, Lcom/htc/camera/bi/VideoDurationStatisticController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 59
    const-class v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/bi/VideoDurationStatisticController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    iput-object v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mDualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    .line 60
    invoke-virtual {p0}, Lcom/htc/camera/bi/VideoDurationStatisticController;->loadFromPreference()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->captureMode:Lcom/htc/camera/capturemode/CaptureMode;

    .line 63
    sget-object v0, Lcom/htc/camera/HTCCamera;->EVENT_MEDIA_SAVED:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/bi/VideoDurationStatisticController$1;

    invoke-direct {v2, p0}, Lcom/htc/camera/bi/VideoDurationStatisticController$1;-><init>(Lcom/htc/camera/bi/VideoDurationStatisticController;)V

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 76
    iget-object v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/bi/VideoDurationStatisticController$2;

    iget-object v3, v1, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v4, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/bi/VideoDurationStatisticController$2;-><init>(Lcom/htc/camera/bi/VideoDurationStatisticController;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/bi/VideoDurationStatisticController$3;

    invoke-direct {v1, p0}, Lcom/htc/camera/bi/VideoDurationStatisticController$3;-><init>(Lcom/htc/camera/bi/VideoDurationStatisticController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 106
    return-void
.end method

.method protected loadFromPreference()V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 113
    iget-object v1, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mFrontVideoHistoryTable:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 114
    iget-object v1, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mMainVideoHistoryTable:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 115
    iget-object v1, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mSynchronizedVideoHistoryTable:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 116
    iget-object v1, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mCropMeInVideoHistoryTable:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 118
    invoke-virtual {p0}, Lcom/htc/camera/bi/VideoDurationStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v1

    .line 119
    const-string v2, "pref_bi_frontcam_video_duration"

    invoke-virtual {v1, v2}, Lcom/htc/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    const-string v3, "pref_bi_maincam_video_duration"

    invoke-virtual {v1, v3}, Lcom/htc/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 121
    const-string v4, "pref_bi_synchronized_video_duration"

    invoke-virtual {v1, v4}, Lcom/htc/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 122
    const-string v5, "pref_bi_cropmein_video_duration"

    invoke-virtual {v1, v5}, Lcom/htc/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 125
    if-eqz v2, :cond_1

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 127
    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 128
    array-length v6, v2

    move v1, v0

    :goto_0
    if-ge v1, v6, :cond_1

    aget-object v7, v2, v1

    .line 130
    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 132
    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 133
    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 134
    const/4 v9, 0x1

    aget-object v7, v7, v9

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 136
    iget-object v9, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mFrontVideoHistoryTable:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    :cond_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 143
    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 144
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v6, v2, v1

    .line 146
    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 148
    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 149
    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 150
    const/4 v8, 0x1

    aget-object v6, v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 152
    iget-object v8, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mMainVideoHistoryTable:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 157
    :cond_3
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 159
    const-string v1, ","

    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 160
    array-length v3, v2

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_5

    aget-object v4, v2, v1

    .line 162
    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 164
    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 165
    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 166
    const/4 v7, 0x1

    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 168
    iget-object v7, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mSynchronizedVideoHistoryTable:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 173
    :cond_5
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 175
    const-string v1, ","

    invoke-virtual {v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 176
    array-length v2, v1

    :goto_3
    if-ge v0, v2, :cond_7

    aget-object v3, v1, v0

    .line 178
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 180
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 181
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 182
    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 184
    iget-object v5, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mCropMeInVideoHistoryTable:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 188
    :catch_0
    move-exception v0

    .line 190
    iget-object v1, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->TAG:Ljava/lang/String;

    const-string v2, "loadFromPreference() - Error when parse integer"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    :cond_7
    return-void
.end method

.method protected rebuildComposeKey(Lcom/htc/camera/io/MediaSaveEventArgs;Lcom/htc/camera/capturemode/CaptureMode;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 195
    invoke-virtual {p0}, Lcom/htc/camera/bi/VideoDurationStatisticController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 197
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/htc/camera/bi/VideoDurationStatisticController;->loadFromPreference()V

    .line 200
    :cond_0
    iget-object v0, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v0, v0, Lcom/htc/camera/media/MediaInfo;->duration:Lcom/htc/camera/Duration;

    if-nez v0, :cond_2

    .line 259
    :cond_1
    :goto_0
    return-void

    .line 202
    :cond_2
    iget-object v0, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v0, v0, Lcom/htc/camera/media/MediaInfo;->duration:Lcom/htc/camera/Duration;

    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v2

    long-to-int v2, v2

    .line 204
    if-eqz p2, :cond_1

    .line 209
    instance-of v0, p2, Lcom/htc/camera/capturemode/c;

    if-eqz v0, :cond_5

    .line 211
    iget-object v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mMainVideoHistoryTable:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 213
    iget-object v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mMainVideoHistoryTable:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 214
    iget-object v3, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mMainVideoHistoryTable:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :goto_1
    iput-boolean v4, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mMainHasChanged:Z

    .line 257
    :cond_3
    :goto_2
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    invoke-virtual {p0}, Lcom/htc/camera/bi/VideoDurationStatisticController;->saveToPreference()V

    goto :goto_0

    .line 217
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mMainVideoHistoryTable:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 220
    :cond_5
    instance-of v0, p2, Lcom/htc/camera/capturemode/b;

    if-eqz v0, :cond_7

    .line 222
    iget-object v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mFrontVideoHistoryTable:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 224
    iget-object v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mFrontVideoHistoryTable:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 225
    iget-object v3, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mFrontVideoHistoryTable:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :goto_3
    iput-boolean v4, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mFrontHasChanged:Z

    goto :goto_2

    .line 228
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mFrontVideoHistoryTable:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 231
    :cond_7
    instance-of v0, p2, Lcom/htc/camera/splitcapture/SplitCaptureMode;

    if-eqz v0, :cond_9

    .line 233
    iget-object v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mDualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mDualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 235
    iget-object v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mSynchronizedVideoHistoryTable:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 237
    iget-object v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mSynchronizedVideoHistoryTable:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 238
    iget-object v3, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mSynchronizedVideoHistoryTable:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :goto_4
    iput-boolean v4, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mSynchronizedHasChanged:Z

    goto/16 :goto_2

    .line 241
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mSynchronizedVideoHistoryTable:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 245
    :cond_9
    instance-of v0, p2, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;

    if-eqz v0, :cond_3

    .line 247
    iget-object v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mCropMeInVideoHistoryTable:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 249
    iget-object v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mCropMeInVideoHistoryTable:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 250
    iget-object v3, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mCropMeInVideoHistoryTable:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :goto_5
    iput-boolean v4, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mCropMeInHasChanged:Z

    goto/16 :goto_2

    .line 253
    :cond_a
    iget-object v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mCropMeInVideoHistoryTable:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5
.end method

.method protected saveToPreference()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    invoke-virtual {p0}, Lcom/htc/camera/bi/VideoDurationStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v2

    .line 271
    iget-boolean v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mFrontHasChanged:Z

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mFrontVideoHistoryTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 274
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 275
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    iget-object v4, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mFrontVideoHistoryTable:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 282
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v5, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 284
    iget-object v3, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mFrontVideoHistoryTable:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 286
    const-string v3, "pref_bi_frontcam_video_duration"

    invoke-virtual {v2, v3, v0}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 289
    iput-boolean v5, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mFrontHasChanged:Z

    .line 292
    :cond_2
    iget-boolean v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mMainHasChanged:Z

    if-eqz v0, :cond_5

    .line 293
    iget-object v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mMainVideoHistoryTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 295
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 296
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    iget-object v4, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mMainVideoHistoryTable:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 303
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v5, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 305
    iget-object v3, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mMainVideoHistoryTable:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 307
    const-string v3, "pref_bi_maincam_video_duration"

    invoke-virtual {v2, v3, v0}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 310
    iput-boolean v5, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mMainHasChanged:Z

    .line 313
    :cond_5
    iget-boolean v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mSynchronizedHasChanged:Z

    if-eqz v0, :cond_8

    .line 314
    iget-object v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mSynchronizedVideoHistoryTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 316
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_6

    .line 317
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :cond_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 320
    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    iget-object v4, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mSynchronizedVideoHistoryTable:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 324
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v5, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 326
    iget-object v3, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mSynchronizedVideoHistoryTable:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 328
    const-string v3, "pref_bi_synchronized_video_duration"

    invoke-virtual {v2, v3, v0}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 331
    iput-boolean v5, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mSynchronizedHasChanged:Z

    .line 334
    :cond_8
    iget-boolean v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mCropMeInHasChanged:Z

    if-eqz v0, :cond_b

    .line 335
    iget-object v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mCropMeInVideoHistoryTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 337
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_9

    .line 338
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    :cond_9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 341
    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    iget-object v4, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mCropMeInVideoHistoryTable:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 345
    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v5, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 347
    iget-object v1, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mCropMeInVideoHistoryTable:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 349
    const-string v1, "pref_bi_cropmein_video_duration"

    invoke-virtual {v2, v1, v0}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 352
    iput-boolean v5, p0, Lcom/htc/camera/bi/VideoDurationStatisticController;->mCropMeInHasChanged:Z

    .line 354
    :cond_b
    return-void
.end method
