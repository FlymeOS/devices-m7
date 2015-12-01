.class public final Lcom/htc/camera/dualcamera/HumanJointCaptureMode;
.super Lcom/htc/camera/capturemode/CaptureMode;
.source "HumanJointCaptureMode.java"


# instance fields
.field private m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

.field private final m_FakeRotationChangedCallback:Lcom/htc/camera/property/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/c",
            "<",
            "Lcom/htc/camera/rotate/UIRotation;",
            ">;"
        }
    .end annotation
.end field

.field private m_HumanJointContainer:Landroid/widget/RelativeLayout;

.field private final m_IsCaptureUIOpenChangedCallback:Lcom/htc/camera/property/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/c",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final m_RotationChangedCallback:Lcom/htc/camera/property/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/c",
            "<",
            "Lcom/htc/camera/rotate/UIRotation;",
            ">;"
        }
    .end annotation
.end field

.field private m_RotationManager:Lcom/htc/camera/IUIRotationManager;

.field private m_SettingsMenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

.field private final m_SettingsMenuStateChangedCallback:Lcom/htc/camera/property/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/c",
            "<",
            "Lcom/htc/camera/UIState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 147
    const-string v0, "Human-Joint Capture Mode"

    invoke-direct {p0, v0, p1, p2}, Lcom/htc/camera/capturemode/CaptureMode;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$1;-><init>(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_FakeRotationChangedCallback:Lcom/htc/camera/property/c;

    .line 77
    new-instance v0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$2;-><init>(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_RotationChangedCallback:Lcom/htc/camera/property/c;

    .line 86
    new-instance v0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$3;

    invoke-direct {v0, p0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$3;-><init>(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_SettingsMenuStateChangedCallback:Lcom/htc/camera/property/c;

    .line 94
    new-instance v0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$4;

    invoke-direct {v0, p0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$4;-><init>(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_IsCaptureUIOpenChangedCallback:Lcom/htc/camera/property/c;

    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->initialize(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/dualcamera/IDualCameraController;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/capturemode/CaptureMode;-><init>(Lcom/htc/camera/capturemode/CaptureMode;Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$1;-><init>(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_FakeRotationChangedCallback:Lcom/htc/camera/property/c;

    .line 77
    new-instance v0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$2;-><init>(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_RotationChangedCallback:Lcom/htc/camera/property/c;

    .line 86
    new-instance v0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$3;

    invoke-direct {v0, p0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$3;-><init>(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_SettingsMenuStateChangedCallback:Lcom/htc/camera/property/c;

    .line 94
    new-instance v0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$4;

    invoke-direct {v0, p0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$4;-><init>(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_IsCaptureUIOpenChangedCallback:Lcom/htc/camera/property/c;

    .line 130
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->initialize(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/dualcamera/IDualCameraController;)V

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;)Lcom/htc/camera/IUIRotationManager;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->updateUIVisibility()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->linkToCompoents()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->initializeUI()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;Lcom/htc/camera/dualcamera/IDualCameraController;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->onDualCameraControllerFound(Lcom/htc/camera/dualcamera/IDualCameraController;)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;Lcom/htc/camera/SupportState;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->onHumanJointSupportStateChanged(Lcom/htc/camera/SupportState;)V

    return-void
.end method

.method private enterHumanJointMode(I)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 164
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-nez v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "enterHumanJointMode() - No IDualCameraController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_0
    :goto_0
    return v2

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    sget-object v3, Lcom/htc/camera/dualcamera/IDualCameraController;->PROPERTY_HUMAN_JOINT_SUPPORT_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/htc/camera/dualcamera/IDualCameraController;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/htc/camera/SupportState;->NOT_SUPPORT:Lcom/htc/camera/SupportState;

    if-ne v0, v3, :cond_2

    .line 171
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "onEnter() - Human-joint is not supported"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    .line 178
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_CAPTURE_UI_LOADED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v3, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 180
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_CAPTURE_UI_LOADED:Lcom/htc/camera/base/PropertyKey;

    new-instance v4, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$5;

    invoke-direct {v4, p0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$5;-><init>(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;)V

    invoke-virtual {v3, v0, v4}, Lcom/htc/camera/HTCCamera;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 206
    :goto_1
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v3, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v4, Lcom/htc/camera/CameraSettings;->PROPERTY_HUMAN_JOINT_MASK_TYPE:Lcom/htc/camera/base/PropertyKey;

    sget-object v5, Lcom/htc/camera/dualcamera/HumanJointMaskType;->ORIGINAL:Lcom/htc/camera/dualcamera/HumanJointMaskType;

    invoke-virtual {v0, v4, v5}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 210
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_4

    move v0, v1

    .line 212
    :goto_2
    iget-object v4, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    sget-object v5, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->HumanJoint:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v4, v5}, Lcom/htc/camera/dualcamera/IDualCameraController;->setCaptureStyle(Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 214
    iget-object v2, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    invoke-virtual {v2, v0}, Lcom/htc/camera/dualcamera/IDualCameraController;->enter(I)V

    .line 217
    iget-object v0, v3, Lcom/htc/camera/HTCCamera;->settingsMenuState:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_SettingsMenuStateChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 218
    iget-object v0, v3, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_IsCaptureUIOpenChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 219
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_NORMAL_COMPONENTS_INITIALIZED:Lcom/htc/camera/base/PropertyKey;

    new-instance v2, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$6;

    invoke-direct {v2, p0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$6;-><init>(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;)V

    invoke-virtual {v3, v0, v2}, Lcom/htc/camera/HTCCamera;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    move v2, v1

    .line 233
    goto :goto_0

    .line 199
    :cond_3
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->linkToCompoents()V

    .line 202
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->initializeUI()V

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method private initialize(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/dualcamera/IDualCameraController;)V
    .locals 3

    .prologue
    .line 257
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->isVideoModeSupported:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 260
    if-nez p2, :cond_0

    .line 262
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_REALTIME_COMPONENTS_CREATED:Lcom/htc/camera/base/PropertyKey;

    new-instance v1, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$7;

    invoke-direct {v1, p0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$7;-><init>(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;)V

    invoke-virtual {p1, v0, v1}, Lcom/htc/camera/HTCCamera;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 280
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-direct {p0, p2}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->onDualCameraControllerFound(Lcom/htc/camera/dualcamera/IDualCameraController;)V

    goto :goto_0
.end method

.method private initializeUI()V
    .locals 3

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 289
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_HumanJointContainer:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 291
    const v0, 0x7f0e00f5

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_1

    .line 293
    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 297
    :goto_0
    const v2, 0x7f0e0194

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_HumanJointContainer:Landroid/widget/RelativeLayout;

    .line 298
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_HumanJointContainer:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e0195

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcIconButton;

    iput-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_SettingsMenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    .line 300
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_SettingsMenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    const v2, 0x7f020085

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setIconResource(I)V

    .line 302
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_SettingsMenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    new-instance v2, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$8;

    invoke-direct {v2, p0, v1}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$8;-><init>(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/IUIRotationManager;->fakeRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/IUIRotationManager;->fakeRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    .line 317
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_SettingsMenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {p0, v1, v0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V

    .line 321
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->updateUIVisibility()V

    .line 322
    return-void

    .line 295
    :cond_1
    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getCaptureUiContainer()Landroid/view/ViewGroup;

    move-result-object v0

    goto :goto_0

    .line 316
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/IUIRotationManager;->rotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    goto :goto_1
.end method

.method private linkToCompoents()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    if-nez v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/IUIRotationManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IUIRotationManager;

    iput-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    .line 332
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    if-eqz v0, :cond_2

    .line 334
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/IUIRotationManager;->fakeRotation:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_FakeRotationChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 335
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/IUIRotationManager;->rotation:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_RotationChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 337
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_HumanJointContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/IUIRotationManager;->fakeRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/IUIRotationManager;->fakeRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    .line 340
    :goto_0
    iget-object v1, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_SettingsMenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {p0, v1, v0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V

    .line 346
    :cond_0
    :goto_1
    return-void

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/htc/camera/IUIRotationManager;->rotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    goto :goto_0

    .line 344
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "enterCaptureType() - cannot find interface IUIRotationManager"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onDualCameraControllerFound(Lcom/htc/camera/dualcamera/IDualCameraController;)V
    .locals 3

    .prologue
    .line 370
    iput-object p1, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    .line 371
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    sget-object v1, Lcom/htc/camera/dualcamera/IDualCameraController;->PROPERTY_HUMAN_JOINT_SUPPORT_STATE:Lcom/htc/camera/base/PropertyKey;

    new-instance v2, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$9;

    invoke-direct {v2, p0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$9;-><init>(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/dualcamera/IDualCameraController;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 379
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->state:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/capturemode/CaptureMode$State;->Entered:Lcom/htc/camera/capturemode/CaptureMode$State;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->enterHumanJointMode(I)Z

    .line 381
    :cond_0
    return-void
.end method

.method private onHumanJointSupportStateChanged(Lcom/htc/camera/SupportState;)V
    .locals 2

    .prologue
    .line 438
    sget-object v0, Lcom/htc/camera/SupportState;->NOT_SUPPORT:Lcom/htc/camera/SupportState;

    if-ne p1, v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "onHumanJointSupportStateChanged() - Human-joint is not supported"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->release()V

    .line 443
    :cond_0
    return-void
.end method

.method private updateUIVisibility()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 459
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->state:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/capturemode/CaptureMode$State;->Entered:Lcom/htc/camera/capturemode/CaptureMode$State;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->state:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/capturemode/CaptureMode$State;->Entering:Lcom/htc/camera/capturemode/CaptureMode$State;

    if-eq v0, v2, :cond_0

    .line 461
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_HumanJointContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v1, v1}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->showUI(Landroid/view/View;ZZ)V

    .line 462
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "updateUIVisibility() - not entered/entering yet. Hide user interface."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :goto_0
    return-void

    .line 466
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    .line 467
    iget-object v0, v2, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 470
    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/htc/camera/HTCCamera;->settingsMenuState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    .line 472
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_HumanJointContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0, v0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->showUI(Landroid/view/View;ZZ)V

    .line 473
    iget-object v1, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUIVisibility() - isVisible = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 470
    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic clone(Ljava/lang/String;)Lcom/htc/camera/capturemode/CaptureMode;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->clone(Ljava/lang/String;)Lcom/htc/camera/dualcamera/HumanJointCaptureMode;

    move-result-object v0

    return-object v0
.end method

.method public clone(Ljava/lang/String;)Lcom/htc/camera/dualcamera/HumanJointCaptureMode;
    .locals 1

    .prologue
    .line 156
    new-instance v0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;-><init>(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    const v1, 0x7f080213

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmallIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020202

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateCustomSettings(Ljava/lang/String;)Lcom/htc/camera/CameraSettings;
    .locals 11

    .prologue
    const-wide/16 v9, 0x5

    const-wide/16 v7, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 353
    new-instance v1, Lcom/htc/camera/dualcamera/c;

    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, "human-joint"

    :cond_0
    invoke-direct {v1, v0, p1}, Lcom/htc/camera/dualcamera/c;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V

    .line 354
    iget-object v0, v1, Lcom/htc/camera/CameraSettings;->frontReviewDuration:Lcom/htc/camera/property/Property;

    iget-object v2, v1, Lcom/htc/camera/CameraSettings;->mainReviewDuration:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/property/PropertyBindingMode;->TwoWay:Lcom/htc/camera/property/PropertyBindingMode;

    invoke-virtual {v0, v2, v4, v4, v3}, Lcom/htc/camera/property/Property;->bind(Lcom/htc/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;Lcom/htc/camera/property/PropertyBindingMode;)V

    .line 355
    new-instance v0, Lcom/htc/camera/data/PropertyBinding;

    sget-object v2, Lcom/htc/camera/CameraSettings;->PROPERTY_MAIN_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    sget-object v4, Lcom/htc/camera/CameraSettings;->PROPERTY_FRONT_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    sget-object v5, Lcom/htc/camera/data/BindingMode;->TWO_WAY:Lcom/htc/camera/data/BindingMode;

    move-object v3, v1

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/data/PropertyBinding;-><init>(Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/data/BindingMode;)V

    invoke-static {v0}, Lcom/htc/camera/data/BindingManager;->addBinding(Lcom/htc/camera/data/Binding;)V

    .line 356
    new-instance v0, Lcom/htc/camera/data/PropertyBinding;

    sget-object v2, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_MAIN_TAP_TO_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    sget-object v4, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_FRONT_TAP_TO_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    sget-object v5, Lcom/htc/camera/data/BindingMode;->TWO_WAY:Lcom/htc/camera/data/BindingMode;

    move-object v3, v1

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/data/PropertyBinding;-><init>(Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/data/BindingMode;)V

    invoke-static {v0}, Lcom/htc/camera/data/BindingManager;->addBinding(Lcom/htc/camera/data/Binding;)V

    .line 357
    const-string v0, "pref_camera_review_duration_front"

    invoke-static {v9, v10}, Lcom/htc/camera/Duration;->fromSeconds(J)Lcom/htc/camera/Duration;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/CameraSettings;->setDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 358
    const-string v0, "pref_camera_review_duration_main"

    invoke-static {v9, v10}, Lcom/htc/camera/Duration;->fromSeconds(J)Lcom/htc/camera/Duration;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/CameraSettings;->setDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 359
    const-string v0, "pref_camera_self_timer_main"

    invoke-static {v7, v8}, Lcom/htc/camera/Duration;->fromSeconds(J)Lcom/htc/camera/Duration;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/CameraSettings;->setDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 360
    const-string v0, "pref_camera_self_timer_front"

    invoke-static {v7, v8}, Lcom/htc/camera/Duration;->fromSeconds(J)Lcom/htc/camera/Duration;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/CameraSettings;->setDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 361
    const-string v0, "pref_camera_tap_capture"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/CameraSettings;->setDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 362
    const-string v0, "pref_camera_tap_capture_front"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/CameraSettings;->setDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 363
    return-object v1
.end method

.method protected onEnter(Lcom/htc/camera/capturemode/CaptureMode;I)Z
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-eqz v0, :cond_0

    .line 389
    invoke-direct {p0, p2}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->enterHumanJointMode(I)Z

    move-result v0

    .line 398
    :goto_0
    return v0

    .line 390
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_REALTIME_COMPONENTS_CREATED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "onEnter() - IDualCameraController interface is not ready, enter later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const/4 v0, 0x1

    goto :goto_0

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "onEnter() - No IDualCameraController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onExit(Lcom/htc/camera/capturemode/CaptureMode;I)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 408
    iget-object v1, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_HumanJointContainer:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 409
    iget-object v1, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_HumanJointContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0, v0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->showUI(Landroid/view/View;ZZ)V

    .line 412
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    if-eqz v1, :cond_1

    .line 414
    iget-object v1, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v1, v1, Lcom/htc/camera/IUIRotationManager;->fakeRotation:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_FakeRotationChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->removeChangedCallback(Lcom/htc/camera/property/c;)Z

    .line 415
    iget-object v1, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v1, v1, Lcom/htc/camera/IUIRotationManager;->rotation:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_RotationChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->removeChangedCallback(Lcom/htc/camera/property/c;)Z

    .line 416
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    .line 419
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 420
    iget-object v2, v1, Lcom/htc/camera/HTCCamera;->settingsMenuState:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_SettingsMenuStateChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v2, v3}, Lcom/htc/camera/property/Property;->removeChangedCallback(Lcom/htc/camera/property/c;)Z

    .line 421
    iget-object v1, v1, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_IsCaptureUIOpenChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->removeChangedCallback(Lcom/htc/camera/property/c;)Z

    .line 423
    iget-object v1, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-eqz v1, :cond_4

    .line 426
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_2

    .line 427
    const/4 v0, 0x1

    .line 428
    :cond_2
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_3

    .line 429
    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 430
    :cond_3
    iget-object v1, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    invoke-virtual {v1, v0}, Lcom/htc/camera/dualcamera/IDualCameraController;->exit(I)V

    .line 432
    :cond_4
    return-void
.end method

.method protected onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_HumanJointContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->m_SettingsMenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {p0, v0, p2}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V

    .line 453
    :cond_0
    return-void
.end method

.method protected final rotateView(Landroid/view/View;FFILjava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 500
    if-eqz p1, :cond_1

    .line 502
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 503
    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->rotationBy(F)Landroid/view/ViewPropertyAnimator;

    .line 504
    invoke-virtual {v0, p3}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    .line 505
    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 507
    if-eqz p5, :cond_0

    .line 509
    if-lez p4, :cond_2

    .line 511
    new-instance v1, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$10;

    invoke-direct {v1, p0, p5}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$10;-><init>(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 538
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 540
    :cond_1
    return-void

    .line 535
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method

.method protected final rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 2

    .prologue
    .line 480
    const/16 v0, 0x190

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;ILjava/lang/Runnable;)V

    .line 481
    return-void
.end method

.method protected final rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;ILjava/lang/Runnable;)V
    .locals 6

    .prologue
    const/high16 v4, 0x43b40000    # 360.0f

    .line 484
    if-eqz p1, :cond_1

    .line 486
    invoke-virtual {p2}, Lcom/htc/camera/rotate/UIRotation;->getSurfaceDegrees()I

    move-result v0

    int-to-float v3, v0

    .line 487
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v2

    .line 488
    sub-float v0, v3, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 490
    cmpl-float v0, v3, v2

    if-lez v0, :cond_2

    .line 491
    sub-float/2addr v3, v4

    :cond_0
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    .line 495
    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->rotateView(Landroid/view/View;FFILjava/lang/Runnable;)V

    .line 497
    :cond_1
    return-void

    .line 493
    :cond_2
    sub-float/2addr v2, v4

    goto :goto_0
.end method

.method protected showUI(Landroid/view/View;ZILjava/lang/Runnable;)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 555
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->threadAccessCheck()V

    .line 558
    if-nez p1, :cond_1

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    if-eqz p2, :cond_3

    .line 564
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 567
    if-lez p3, :cond_2

    .line 569
    invoke-static {p1, v2, v3, v1, p3}, Lcom/htc/camera/a;->a(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    .line 570
    if-eqz p4, :cond_0

    .line 572
    new-instance v1, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$11;

    invoke-direct {v1, p0, p4}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$11;-><init>(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 589
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 590
    if-eqz p4, :cond_0

    .line 591
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 597
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 599
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 600
    if-lez p3, :cond_4

    .line 602
    invoke-static {p1, v3, v2, v1, p3}, Lcom/htc/camera/a;->a(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    .line 603
    if-eqz p4, :cond_0

    .line 605
    new-instance v1, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$12;

    invoke-direct {v1, p0, p4}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$12;-><init>(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 622
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 623
    if-eqz p4, :cond_0

    .line 624
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected showUI(Landroid/view/View;ZZ)V
    .locals 1

    .prologue
    .line 546
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->showUI(Landroid/view/View;ZZLjava/lang/Runnable;)V

    .line 547
    return-void
.end method

.method protected showUI(Landroid/view/View;ZZLjava/lang/Runnable;)V
    .locals 1

    .prologue
    const/16 v0, 0x190

    .line 550
    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->showUI(Landroid/view/View;ZILjava/lang/Runnable;)V

    .line 551
    return-void

    .line 550
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
