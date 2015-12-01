.class public Lcom/htc/camera/bi/SwipeCameraStatisticController;
.super Lcom/htc/camera/component/cm;
.source "SwipeCameraStatisticController.java"


# instance fields
.field private mHasChanged:Z

.field private mIsSliding:Z

.field private mSwitchFromMenu:I

.field private mSwitchFromSliding:I


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    .line 35
    const-string v0, "SwipeCameraStatisticController"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/component/cm;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/bi/SwipeCameraStatisticController;)Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/htc/camera/bi/SwipeCameraStatisticController;->mIsSliding:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/camera/bi/SwipeCameraStatisticController;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/htc/camera/bi/SwipeCameraStatisticController;->mIsSliding:Z

    return p1
.end method

.method static synthetic access$108(Lcom/htc/camera/bi/SwipeCameraStatisticController;)I
    .locals 2

    .prologue
    .line 18
    iget v0, p0, Lcom/htc/camera/bi/SwipeCameraStatisticController;->mSwitchFromSliding:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/camera/bi/SwipeCameraStatisticController;->mSwitchFromSliding:I

    return v0
.end method

.method static synthetic access$208(Lcom/htc/camera/bi/SwipeCameraStatisticController;)I
    .locals 2

    .prologue
    .line 18
    iget v0, p0, Lcom/htc/camera/bi/SwipeCameraStatisticController;->mSwitchFromMenu:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/camera/bi/SwipeCameraStatisticController;->mSwitchFromMenu:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/camera/bi/SwipeCameraStatisticController;)Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/htc/camera/bi/SwipeCameraStatisticController;->mHasChanged:Z

    return v0
.end method

.method static synthetic access$302(Lcom/htc/camera/bi/SwipeCameraStatisticController;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/htc/camera/bi/SwipeCameraStatisticController;->mHasChanged:Z

    return p1
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 45
    invoke-super {p0}, Lcom/htc/camera/component/cm;->initializeOverride()V

    .line 46
    invoke-virtual {p0}, Lcom/htc/camera/bi/SwipeCameraStatisticController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Lcom/htc/camera/bi/SwipeCameraStatisticController;->loadFromPreference()V

    .line 51
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->switchingCameraSlidingEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/bi/SwipeCameraStatisticController$1;

    invoke-direct {v2, p0}, Lcom/htc/camera/bi/SwipeCameraStatisticController$1;-><init>(Lcom/htc/camera/bi/SwipeCameraStatisticController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 60
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->switchingCameraEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/bi/SwipeCameraStatisticController$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/bi/SwipeCameraStatisticController$2;-><init>(Lcom/htc/camera/bi/SwipeCameraStatisticController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 79
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/bi/SwipeCameraStatisticController$3;

    invoke-direct {v1, p0}, Lcom/htc/camera/bi/SwipeCameraStatisticController$3;-><init>(Lcom/htc/camera/bi/SwipeCameraStatisticController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 96
    return-void
.end method

.method protected loadFromPreference()V
    .locals 3

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/htc/camera/bi/SwipeCameraStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    .line 104
    const-string v1, "pref_bi_swipe_camera_history"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 110
    :try_start_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 113
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/camera/bi/SwipeCameraStatisticController;->mSwitchFromMenu:I

    .line 114
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/bi/SwipeCameraStatisticController;->mSwitchFromSliding:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 118
    iget-object v1, p0, Lcom/htc/camera/bi/SwipeCameraStatisticController;->TAG:Ljava/lang/String;

    const-string v2, "loadFromPreference() - Error when parse integer"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected saveToPreference()V
    .locals 3

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/htc/camera/bi/SwipeCameraStatisticController;->mSwitchFromMenu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/camera/bi/SwipeCameraStatisticController;->mSwitchFromSliding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-virtual {p0}, Lcom/htc/camera/bi/SwipeCameraStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v1

    .line 132
    const-string v2, "pref_bi_swipe_camera_history"

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/bi/SwipeCameraStatisticController;->mHasChanged:Z

    .line 136
    return-void
.end method
