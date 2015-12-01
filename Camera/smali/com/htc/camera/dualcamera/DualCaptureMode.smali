.class public Lcom/htc/camera/dualcamera/DualCaptureMode;
.super Lcom/htc/camera/capturemode/CaptureMode;
.source "DualCaptureMode.java"


# instance fields
.field private m_IsEnter:Z

.field private final m_IsPreviewStartedChangedCallback:Lcom/htc/camera/property/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/c",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_Retry:Z

.field private m_UI:Lcom/htc/camera/dualcamera/IDualCameraController;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/dualcamera/DualCaptureMode;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    const-string v0, "Dual Capture Mode"

    invoke-direct {p0, v0, p1, p2}, Lcom/htc/camera/capturemode/CaptureMode;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/htc/camera/dualcamera/DualCaptureMode$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/dualcamera/DualCaptureMode$1;-><init>(Lcom/htc/camera/dualcamera/DualCaptureMode;)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCaptureMode;->m_IsPreviewStartedChangedCallback:Lcom/htc/camera/property/c;

    .line 51
    invoke-direct {p0, p1}, Lcom/htc/camera/dualcamera/DualCaptureMode;->initialize(Lcom/htc/camera/HTCCamera;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/dualcamera/DualCaptureMode;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/capturemode/CaptureMode;-><init>(Lcom/htc/camera/capturemode/CaptureMode;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/htc/camera/dualcamera/DualCaptureMode$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/dualcamera/DualCaptureMode$1;-><init>(Lcom/htc/camera/dualcamera/DualCaptureMode;)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCaptureMode;->m_IsPreviewStartedChangedCallback:Lcom/htc/camera/property/c;

    .line 42
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/DualCaptureMode;->initialize(Lcom/htc/camera/HTCCamera;)V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/dualcamera/DualCaptureMode;)Z
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCaptureMode;->checkSupportState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/htc/camera/dualcamera/DualCaptureMode;)Lcom/htc/camera/property/c;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCaptureMode;->m_IsPreviewStartedChangedCallback:Lcom/htc/camera/property/c;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/dualcamera/DualCaptureMode;)Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/htc/camera/dualcamera/DualCaptureMode;->m_Retry:Z

    return v0
.end method

.method static synthetic access$202(Lcom/htc/camera/dualcamera/DualCaptureMode;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/htc/camera/dualcamera/DualCaptureMode;->m_Retry:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/camera/dualcamera/DualCaptureMode;)Z
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCaptureMode;->linkToComponent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/htc/camera/dualcamera/DualCaptureMode;)Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/htc/camera/dualcamera/DualCaptureMode;->m_IsEnter:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/camera/dualcamera/DualCaptureMode;)Lcom/htc/camera/dualcamera/IDualCameraController;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCaptureMode;->m_UI:Lcom/htc/camera/dualcamera/IDualCameraController;

    return-object v0
.end method

.method private checkSupportState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 60
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->isSplitCaptureModeSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCaptureMode;->TAG:Ljava/lang/String;

    const-string v2, "checkSupportState() - Split-capture is supported, release dual-capture mode"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCaptureMode;->release()V

    .line 78
    :cond_0
    :goto_0
    return v0

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCaptureMode;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v1

    .line 69
    if-nez v1, :cond_2

    .line 70
    const/4 v0, 0x0

    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {v1}, Lcom/htc/camera/CameraController;->isDualCameraSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCaptureMode;->TAG:Ljava/lang/String;

    const-string v2, "checkSupportState() - Dual-capture is not supported"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCaptureMode;->release()V

    goto :goto_0
.end method

.method private initialize(Lcom/htc/camera/HTCCamera;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 113
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCaptureMode;->isDualCameraMode:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCaptureMode;->use3DPreviewRendering:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_NORMAL_COMPONENTS_INITIALIZED:Lcom/htc/camera/base/PropertyKey;

    new-instance v1, Lcom/htc/camera/dualcamera/DualCaptureMode$2;

    invoke-direct {v1, p0}, Lcom/htc/camera/dualcamera/DualCaptureMode$2;-><init>(Lcom/htc/camera/dualcamera/DualCaptureMode;)V

    invoke-virtual {p1, v0, v1}, Lcom/htc/camera/HTCCamera;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 135
    iget-object v0, p1, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCaptureMode;->m_IsPreviewStartedChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 136
    return-void
.end method

.method private linkToComponent()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 152
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCaptureMode;->m_UI:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-eqz v0, :cond_0

    .line 155
    :goto_0
    return v1

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v2, Lcom/htc/camera/dualcamera/IDualCameraController;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCaptureMode;->m_UI:Lcom/htc/camera/dualcamera/IDualCameraController;

    .line 155
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCaptureMode;->m_UI:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic clone(Ljava/lang/String;)Lcom/htc/camera/capturemode/CaptureMode;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/htc/camera/dualcamera/DualCaptureMode;->clone(Ljava/lang/String;)Lcom/htc/camera/dualcamera/DualCaptureMode;

    move-result-object v0

    return-object v0
.end method

.method public clone(Ljava/lang/String;)Lcom/htc/camera/dualcamera/DualCaptureMode;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/htc/camera/dualcamera/DualCaptureMode;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/dualcamera/DualCaptureMode;-><init>(Lcom/htc/camera/dualcamera/DualCaptureMode;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    const v1, 0x7f080211

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmallIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020206

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateCustomSettings(Ljava/lang/String;)Lcom/htc/camera/CameraSettings;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Lcom/htc/camera/CameraSettings;

    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    if-nez p1, :cond_0

    const-string p1, "dualcapture"

    :cond_0
    invoke-direct {v0, v1, p1}, Lcom/htc/camera/CameraSettings;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onEnter(Lcom/htc/camera/capturemode/CaptureMode;I)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 164
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCaptureMode;->linkToComponent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 166
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCaptureMode;->m_UI:Lcom/htc/camera/dualcamera/IDualCameraController;

    sget-object v2, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->Normal:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v0, v2}, Lcom/htc/camera/dualcamera/IDualCameraController;->setCaptureStyle(Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;)Z

    .line 167
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/htc/camera/capturemode/CaptureMode;->isDualCameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 169
    :cond_0
    const/4 v0, 0x0

    .line 170
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_1

    move v0, v1

    .line 172
    :cond_1
    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCaptureMode;->m_UI:Lcom/htc/camera/dualcamera/IDualCameraController;

    invoke-virtual {v2, v0}, Lcom/htc/camera/dualcamera/IDualCameraController;->enter(I)V

    .line 183
    :goto_0
    iput-boolean v1, p0, Lcom/htc/camera/dualcamera/DualCaptureMode;->m_IsEnter:Z

    .line 185
    return v1

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCaptureMode;->TAG:Ljava/lang/String;

    const-string v2, "onEnter() - No need to enter dual-camera mode"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCaptureMode;->TAG:Ljava/lang/String;

    const-string v2, "onEnter() - Cannot link to component, link later"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iput-boolean v1, p0, Lcom/htc/camera/dualcamera/DualCaptureMode;->m_Retry:Z

    goto :goto_0
.end method

.method protected onExit(Lcom/htc/camera/capturemode/CaptureMode;I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 194
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCaptureMode;->m_UI:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/htc/camera/capturemode/CaptureMode;->isDualCameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    :cond_0
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_2

    .line 198
    const/high16 v0, 0x10000

    .line 199
    :goto_0
    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCaptureMode;->m_UI:Lcom/htc/camera/dualcamera/IDualCameraController;

    invoke-virtual {v2, v0}, Lcom/htc/camera/dualcamera/IDualCameraController;->exit(I)V

    .line 204
    :goto_1
    iput-boolean v1, p0, Lcom/htc/camera/dualcamera/DualCaptureMode;->m_IsEnter:Z

    .line 205
    iput-boolean v1, p0, Lcom/htc/camera/dualcamera/DualCaptureMode;->m_Retry:Z

    .line 206
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCaptureMode;->TAG:Ljava/lang/String;

    const-string v2, "onExit() - No need to exit dual-camera mode"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method
