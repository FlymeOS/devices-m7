.class public Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;
.super Lcom/htc/camera/component/cm;
.source "CustomizedCameraModeStatisticController.java"


# instance fields
.field protected mCustomizedCameraModeCount:I

.field private mHasChanged:Z


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    .line 40
    const-string v0, "CustomizedCameraModeStatisticController"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/component/cm;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;->mHasChanged:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;Z)Z
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;->mHasChanged:Z

    return p1
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-super {p0}, Lcom/htc/camera/component/cm;->initializeOverride()V

    .line 51
    invoke-virtual {p0}, Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v5

    .line 54
    invoke-virtual {p0}, Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;->loadFromPreference()V

    .line 56
    invoke-virtual {p0}, Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 57
    if-eqz v0, :cond_2

    .line 60
    iget-object v1, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureModeList:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 61
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    move v4, v2

    move v3, v2

    .line 62
    :goto_0
    if-ge v4, v6, :cond_0

    .line 64
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/camera/capturemode/CaptureMode;

    invoke-virtual {v2}, Lcom/htc/camera/capturemode/CaptureMode;->isUserDefined()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 65
    add-int/lit8 v2, v3, 0x1

    .line 62
    :goto_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    goto :goto_0

    .line 68
    :cond_0
    iget v1, p0, Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;->mCustomizedCameraModeCount:I

    if-eq v1, v3, :cond_1

    .line 70
    iput v3, p0, Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;->mCustomizedCameraModeCount:I

    .line 71
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;->mHasChanged:Z

    .line 74
    :cond_1
    iget-object v1, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureModeCreatedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/bi/CustomizedCameraModeStatisticController$1;

    invoke-direct {v2, p0}, Lcom/htc/camera/bi/CustomizedCameraModeStatisticController$1;-><init>(Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 87
    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureModeDeletedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/bi/CustomizedCameraModeStatisticController$2;

    invoke-direct {v1, p0}, Lcom/htc/camera/bi/CustomizedCameraModeStatisticController$2;-><init>(Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 103
    :cond_2
    iget-object v0, v5, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/bi/CustomizedCameraModeStatisticController$3;

    invoke-direct {v1, p0}, Lcom/htc/camera/bi/CustomizedCameraModeStatisticController$3;-><init>(Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 121
    return-void

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method protected loadFromPreference()V
    .locals 3

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    .line 129
    const-string v1, "pref_bi_customized_camera_count"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 134
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;->mCustomizedCameraModeCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 138
    iget-object v1, p0, Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;->TAG:Ljava/lang/String;

    const-string v2, "loadFromPreference() - Error when parse integer"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected saveToPreference()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 148
    iget v0, p0, Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;->mCustomizedCameraModeCount:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 149
    iput v3, p0, Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;->mCustomizedCameraModeCount:I

    .line 151
    invoke-virtual {p0}, Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v1

    .line 153
    const-string v2, "pref_bi_customized_camera_count"

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 156
    iput-boolean v3, p0, Lcom/htc/camera/bi/CustomizedCameraModeStatisticController;->mHasChanged:Z

    .line 157
    return-void
.end method
