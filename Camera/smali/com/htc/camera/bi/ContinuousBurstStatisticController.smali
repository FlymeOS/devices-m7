.class public Lcom/htc/camera/bi/ContinuousBurstStatisticController;
.super Lcom/htc/camera/component/cm;
.source "ContinuousBurstStatisticController.java"


# instance fields
.field protected mContinuousHistory:Ljava/lang/StringBuilder;

.field private mHasChanged:Z

.field private mPhotoTaken:I


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    .line 30
    const-string v0, "ContinuousBurstStaticController"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/component/cm;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/bi/ContinuousBurstStatisticController;)I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/htc/camera/bi/ContinuousBurstStatisticController;->mPhotoTaken:I

    return v0
.end method

.method static synthetic access$002(Lcom/htc/camera/bi/ContinuousBurstStatisticController;I)I
    .locals 0

    .prologue
    .line 14
    iput p1, p0, Lcom/htc/camera/bi/ContinuousBurstStatisticController;->mPhotoTaken:I

    return p1
.end method

.method static synthetic access$008(Lcom/htc/camera/bi/ContinuousBurstStatisticController;)I
    .locals 2

    .prologue
    .line 14
    iget v0, p0, Lcom/htc/camera/bi/ContinuousBurstStatisticController;->mPhotoTaken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/camera/bi/ContinuousBurstStatisticController;->mPhotoTaken:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/camera/bi/ContinuousBurstStatisticController;)Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/htc/camera/bi/ContinuousBurstStatisticController;->mHasChanged:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/camera/bi/ContinuousBurstStatisticController;Z)Z
    .locals 0

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/htc/camera/bi/ContinuousBurstStatisticController;->mHasChanged:Z

    return p1
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 40
    invoke-super {p0}, Lcom/htc/camera/component/cm;->initializeOverride()V

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/bi/ContinuousBurstStatisticController;->mContinuousHistory:Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p0}, Lcom/htc/camera/bi/ContinuousBurstStatisticController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 45
    invoke-virtual {p0}, Lcom/htc/camera/bi/ContinuousBurstStatisticController;->loadFromPreference()V

    .line 47
    sget-object v1, Lcom/htc/camera/HTCCamera;->EVENT_MEDIA_SAVED:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/bi/ContinuousBurstStatisticController$1;

    invoke-direct {v2, p0, v0}, Lcom/htc/camera/bi/ContinuousBurstStatisticController$1;-><init>(Lcom/htc/camera/bi/ContinuousBurstStatisticController;Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 82
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/bi/ContinuousBurstStatisticController$2;

    invoke-direct {v1, p0}, Lcom/htc/camera/bi/ContinuousBurstStatisticController$2;-><init>(Lcom/htc/camera/bi/ContinuousBurstStatisticController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 100
    return-void
.end method

.method protected loadFromPreference()V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/camera/bi/ContinuousBurstStatisticController;->mContinuousHistory:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/camera/bi/ContinuousBurstStatisticController;->mContinuousHistory:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {p0}, Lcom/htc/camera/bi/ContinuousBurstStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    .line 109
    const-string v1, "pref_bi_continuousburst_history"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_0

    .line 111
    iget-object v1, p0, Lcom/htc/camera/bi/ContinuousBurstStatisticController;->mContinuousHistory:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_0
    return-void
.end method

.method protected saveToPreference()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 119
    iget-object v0, p0, Lcom/htc/camera/bi/ContinuousBurstStatisticController;->mContinuousHistory:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/htc/camera/bi/ContinuousBurstStatisticController;->mContinuousHistory:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/htc/camera/bi/ContinuousBurstStatisticController;->mContinuousHistory:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p0}, Lcom/htc/camera/bi/ContinuousBurstStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v1

    .line 124
    const-string v2, "pref_bi_continuousburst_history"

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 127
    iput-boolean v3, p0, Lcom/htc/camera/bi/ContinuousBurstStatisticController;->mHasChanged:Z

    .line 128
    return-void
.end method
