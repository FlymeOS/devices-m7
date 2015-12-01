.class public Lcom/htc/camera/bi/InVideoCaptureStatisticController;
.super Lcom/htc/camera/component/cm;
.source "InVideoCaptureStatisticController.java"


# instance fields
.field private mHasChanged:Z

.field protected mInVideoCaptureHistory:Ljava/lang/StringBuilder;

.field private mPhotoTaken:I


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    .line 35
    const-string v0, "InVideoCaptureStatisticController"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/component/cm;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/bi/InVideoCaptureStatisticController;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/htc/camera/bi/InVideoCaptureStatisticController;->mPhotoTaken:I

    return v0
.end method

.method static synthetic access$002(Lcom/htc/camera/bi/InVideoCaptureStatisticController;I)I
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/htc/camera/bi/InVideoCaptureStatisticController;->mPhotoTaken:I

    return p1
.end method

.method static synthetic access$008(Lcom/htc/camera/bi/InVideoCaptureStatisticController;)I
    .locals 2

    .prologue
    .line 19
    iget v0, p0, Lcom/htc/camera/bi/InVideoCaptureStatisticController;->mPhotoTaken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/camera/bi/InVideoCaptureStatisticController;->mPhotoTaken:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/camera/bi/InVideoCaptureStatisticController;)Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/htc/camera/bi/InVideoCaptureStatisticController;->mHasChanged:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/camera/bi/InVideoCaptureStatisticController;Z)Z
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/htc/camera/bi/InVideoCaptureStatisticController;->mHasChanged:Z

    return p1
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 45
    invoke-super {p0}, Lcom/htc/camera/component/cm;->initializeOverride()V

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/bi/InVideoCaptureStatisticController;->mInVideoCaptureHistory:Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p0}, Lcom/htc/camera/bi/InVideoCaptureStatisticController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 50
    invoke-virtual {p0}, Lcom/htc/camera/bi/InVideoCaptureStatisticController;->loadFromPreference()V

    .line 53
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/bi/InVideoCaptureStatisticController$1;

    invoke-direct {v2, p0, v0}, Lcom/htc/camera/bi/InVideoCaptureStatisticController$1;-><init>(Lcom/htc/camera/bi/InVideoCaptureStatisticController;Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 84
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/bi/InVideoCaptureStatisticController$2;

    invoke-direct {v2, p0, v0}, Lcom/htc/camera/bi/InVideoCaptureStatisticController$2;-><init>(Lcom/htc/camera/bi/InVideoCaptureStatisticController;Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 99
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/bi/InVideoCaptureStatisticController$3;

    invoke-direct {v1, p0}, Lcom/htc/camera/bi/InVideoCaptureStatisticController$3;-><init>(Lcom/htc/camera/bi/InVideoCaptureStatisticController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 117
    return-void
.end method

.method protected loadFromPreference()V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/camera/bi/InVideoCaptureStatisticController;->mInVideoCaptureHistory:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/camera/bi/InVideoCaptureStatisticController;->mInVideoCaptureHistory:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p0}, Lcom/htc/camera/bi/InVideoCaptureStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    .line 126
    const-string v1, "pref_bi_in_video_capture_history"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_0

    .line 128
    iget-object v1, p0, Lcom/htc/camera/bi/InVideoCaptureStatisticController;->mInVideoCaptureHistory:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_0
    return-void
.end method

.method protected saveToPreference()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 136
    iget-object v0, p0, Lcom/htc/camera/bi/InVideoCaptureStatisticController;->mInVideoCaptureHistory:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/htc/camera/bi/InVideoCaptureStatisticController;->mInVideoCaptureHistory:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/htc/camera/bi/InVideoCaptureStatisticController;->mInVideoCaptureHistory:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p0}, Lcom/htc/camera/bi/InVideoCaptureStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v1

    .line 141
    const-string v2, "pref_bi_in_video_capture_history"

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 144
    iput-boolean v3, p0, Lcom/htc/camera/bi/InVideoCaptureStatisticController;->mHasChanged:Z

    .line 145
    return-void
.end method
