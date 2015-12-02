.class public final Lcom/htc/camera/zoe/ZoeCaptureMode;
.super Lcom/htc/camera/capturemode/CaptureMode;
.source "ZoeCaptureMode.java"


# instance fields
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

.field private m_ZoeController:Lcom/htc/camera/zoe/IZoeController;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/zoe/ZoeCaptureMode;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    const-string v0, "Zoe Capture Mode"

    invoke-direct {p0, v0, p1, p2}, Lcom/htc/camera/capturemode/CaptureMode;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/htc/camera/zoe/ZoeCaptureMode$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/zoe/ZoeCaptureMode$1;-><init>(Lcom/htc/camera/zoe/ZoeCaptureMode;)V

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeCaptureMode;->m_IsPreviewStartedChangedCallback:Lcom/htc/camera/property/c;

    .line 51
    invoke-direct {p0, p1}, Lcom/htc/camera/zoe/ZoeCaptureMode;->initialize(Lcom/htc/camera/HTCCamera;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/zoe/ZoeCaptureMode;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/capturemode/CaptureMode;-><init>(Lcom/htc/camera/capturemode/CaptureMode;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/htc/camera/zoe/ZoeCaptureMode$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/zoe/ZoeCaptureMode$1;-><init>(Lcom/htc/camera/zoe/ZoeCaptureMode;)V

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeCaptureMode;->m_IsPreviewStartedChangedCallback:Lcom/htc/camera/property/c;

    .line 42
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/camera/zoe/ZoeCaptureMode;->initialize(Lcom/htc/camera/HTCCamera;)V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/zoe/ZoeCaptureMode;)Z
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeCaptureMode;->checkZoeSupportState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/htc/camera/zoe/ZoeCaptureMode;)Lcom/htc/camera/property/c;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeCaptureMode;->m_IsPreviewStartedChangedCallback:Lcom/htc/camera/property/c;

    return-object v0
.end method

.method private checkZoeSupportState()Z
    .locals 4

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeCaptureMode;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 61
    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 71
    :goto_0
    return v0

    .line 65
    :cond_0
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->isZoeSupported()Lcom/htc/camera/SupportState;

    move-result-object v0

    .line 66
    sget-object v1, Lcom/htc/camera/SupportState;->SUPPORT:Lcom/htc/camera/SupportState;

    if-eq v0, v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeCaptureMode;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkZoeSupportState() - Support state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeCaptureMode;->release()V

    .line 71
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initialize(Lcom/htc/camera/HTCCamera;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 106
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeCaptureMode;->isVideoModeSupported:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeCaptureMode;->isZoeMode:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeCaptureMode;->needRestartPreviewAfterEntering:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p1, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeCaptureMode;->m_IsPreviewStartedChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 110
    return-void
.end method

.method private linkToController()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 117
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeCaptureMode;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    if-eqz v0, :cond_0

    move v0, v1

    .line 126
    :goto_0
    return v0

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v2, Lcom/htc/camera/zoe/IZoeController;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/zoe/IZoeController;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeCaptureMode;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    .line 120
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeCaptureMode;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeCaptureMode;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    invoke-virtual {v0}, Lcom/htc/camera/zoe/IZoeController;->initialize()V

    move v0, v1

    .line 123
    goto :goto_0

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "linkToController() - No IZoeController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic clone(Ljava/lang/String;)Lcom/htc/camera/capturemode/CaptureMode;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/htc/camera/zoe/ZoeCaptureMode;->clone(Ljava/lang/String;)Lcom/htc/camera/zoe/ZoeCaptureMode;

    move-result-object v0

    return-object v0
.end method

.method public clone(Ljava/lang/String;)Lcom/htc/camera/zoe/ZoeCaptureMode;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/htc/camera/zoe/ZoeCaptureMode;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/zoe/ZoeCaptureMode;-><init>(Lcom/htc/camera/zoe/ZoeCaptureMode;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    const v1, 0x7f080405

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmallIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02020a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateCustomSettings(Ljava/lang/String;)Lcom/htc/camera/CameraSettings;
    .locals 2

    .prologue
    .line 135
    new-instance v0, Lcom/htc/camera/CameraSettings;

    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    if-nez p1, :cond_0

    const-string p1, "zoe"

    :cond_0
    invoke-direct {v0, v1, p1}, Lcom/htc/camera/CameraSettings;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onEnter(Lcom/htc/camera/capturemode/CaptureMode;I)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 144
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeCaptureMode;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeCaptureMode;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/htc/camera/capturemode/CaptureMode;->isZoeMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v4

    .line 150
    iget-object v0, v4, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    invoke-virtual {v0, v3}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v4, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v3}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    move v3, v2

    .line 153
    :goto_0
    if-nez v3, :cond_4

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_4

    move v0, v1

    .line 154
    :goto_1
    or-int/lit8 v5, v0, 0x3

    .line 156
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeCaptureMode;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    invoke-virtual {v0, v5}, Lcom/htc/camera/zoe/IZoeController;->enter(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 158
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeCaptureMode;->TAG:Ljava/lang/String;

    const-string v2, "onEnter() - Fail to enter Zoe mode"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_2
    :goto_2
    return v1

    :cond_3
    move v3, v1

    .line 150
    goto :goto_0

    .line 153
    :cond_4
    const/4 v0, 0x4

    goto :goto_1

    .line 164
    :cond_5
    if-eqz v3, :cond_7

    .line 166
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_6

    move v0, v2

    .line 167
    :goto_3
    sget-object v3, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    sget-object v6, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {v4, v3, v6, v0}, Lcom/htc/camera/HTCCamera;->switchMode(Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;Z)Z

    move-result v0

    if-nez v0, :cond_7

    .line 169
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeCaptureMode;->TAG:Ljava/lang/String;

    const-string v2, "onEnter() - Fail to switch mode"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeCaptureMode;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    invoke-virtual {v0, v5}, Lcom/htc/camera/zoe/IZoeController;->exit(I)V

    goto :goto_2

    :cond_6
    move v0, v1

    .line 166
    goto :goto_3

    :cond_7
    move v1, v2

    .line 176
    goto :goto_2
.end method

.method protected onExit(Lcom/htc/camera/capturemode/CaptureMode;I)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 187
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeCaptureMode;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/htc/camera/capturemode/CaptureMode;->isZoeMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    move v0, v1

    .line 197
    :goto_0
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeCaptureMode;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    invoke-virtual {v1, v0}, Lcom/htc/camera/zoe/IZoeController;->exit(I)V

    .line 199
    :cond_1
    return-void

    .line 192
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/htc/camera/capturemode/CaptureMode;->needRestartPreviewAfterEntering:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 193
    goto :goto_0

    .line 195
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setEffectContextOnEnter(Lcom/htc/camera/effect/EffectContext;)V
    .locals 1

    .prologue
    .line 207
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/htc/camera/effect/EffectContext;->setFlags(I)V

    .line 208
    invoke-super {p0, p1}, Lcom/htc/camera/capturemode/CaptureMode;->setEffectContextOnEnter(Lcom/htc/camera/effect/EffectContext;)V

    .line 209
    return-void
.end method
