.class public abstract Lcom/htc/camera/capturemode/SimpleCaptureMode;
.super Lcom/htc/camera/capturemode/CaptureMode;
.source "SimpleCaptureMode.java"


# instance fields
.field private final m_CameraModeTypeChangedCallback:Lcom/htc/camera/property/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/c",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private m_TargetCameraMode:Lcom/htc/camera/CameraMode;

.field private m_TargetCameraType:Lcom/htc/camera/CameraType;


# direct methods
.method protected constructor <init>(Lcom/htc/camera/capturemode/SimpleCaptureMode;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/capturemode/CaptureMode;-><init>(Lcom/htc/camera/capturemode/CaptureMode;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lcom/htc/camera/capturemode/SimpleCaptureMode$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/capturemode/SimpleCaptureMode$1;-><init>(Lcom/htc/camera/capturemode/SimpleCaptureMode;)V

    iput-object v0, p0, Lcom/htc/camera/capturemode/SimpleCaptureMode;->m_CameraModeTypeChangedCallback:Lcom/htc/camera/property/c;

    .line 40
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/SimpleCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/camera/capturemode/SimpleCaptureMode;->m_TargetCameraType:Lcom/htc/camera/CameraType;

    iget-object v2, p1, Lcom/htc/camera/capturemode/SimpleCaptureMode;->m_TargetCameraMode:Lcom/htc/camera/CameraMode;

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/camera/capturemode/SimpleCaptureMode;->initialize(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;)V

    .line 41
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;)V
    .locals 6

    .prologue
    .line 44
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/capturemode/SimpleCaptureMode;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p5}, Lcom/htc/camera/capturemode/CaptureMode;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lcom/htc/camera/capturemode/SimpleCaptureMode$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/capturemode/SimpleCaptureMode$1;-><init>(Lcom/htc/camera/capturemode/SimpleCaptureMode;)V

    iput-object v0, p0, Lcom/htc/camera/capturemode/SimpleCaptureMode;->m_CameraModeTypeChangedCallback:Lcom/htc/camera/property/c;

    .line 49
    invoke-direct {p0, p2, p3, p4}, Lcom/htc/camera/capturemode/SimpleCaptureMode;->initialize(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/capturemode/SimpleCaptureMode;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/htc/camera/capturemode/SimpleCaptureMode;->updatePreviewRestartState()V

    return-void
.end method

.method private initialize(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 58
    iput-object p2, p0, Lcom/htc/camera/capturemode/SimpleCaptureMode;->m_TargetCameraType:Lcom/htc/camera/CameraType;

    .line 59
    iput-object p3, p0, Lcom/htc/camera/capturemode/SimpleCaptureMode;->m_TargetCameraMode:Lcom/htc/camera/CameraMode;

    .line 60
    invoke-direct {p0}, Lcom/htc/camera/capturemode/SimpleCaptureMode;->updatePreviewRestartState()V

    .line 61
    sget-object v0, Lcom/htc/camera/capturemode/SimpleCaptureMode$2;->$SwitchMap$com$htc$camera$CameraMode:[I

    invoke-virtual {p3}, Lcom/htc/camera/CameraMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/capturemode/SimpleCaptureMode;->needRestartPreviewAfterEntering:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/capturemode/SimpleCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p1, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/capturemode/SimpleCaptureMode;->m_CameraModeTypeChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 76
    iget-object v0, p1, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/capturemode/SimpleCaptureMode;->m_CameraModeTypeChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 77
    return-void

    .line 64
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/capturemode/SimpleCaptureMode;->isPhotoSceneSupported:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/capturemode/SimpleCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/htc/camera/capturemode/SimpleCaptureMode;->isVideoModeSupported:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/capturemode/SimpleCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/capturemode/SimpleCaptureMode;->isPhotoModeSupported:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/capturemode/SimpleCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/htc/camera/capturemode/SimpleCaptureMode;->isVideoSceneSupported:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/capturemode/SimpleCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updatePreviewRestartState()V
    .locals 3

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/SimpleCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 113
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/capturemode/SimpleCaptureMode;->m_TargetCameraMode:Lcom/htc/camera/CameraMode;

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/capturemode/SimpleCaptureMode;->m_TargetCameraType:Lcom/htc/camera/CameraType;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 114
    :goto_0
    iget-object v1, p0, Lcom/htc/camera/capturemode/SimpleCaptureMode;->needRestartPreviewAfterEntering:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/capturemode/SimpleCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    return-void

    .line 113
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onEnter(Lcom/htc/camera/capturemode/CaptureMode;I)Z
    .locals 4

    .prologue
    .line 85
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 86
    :goto_0
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/SimpleCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/capturemode/SimpleCaptureMode;->m_TargetCameraType:Lcom/htc/camera/CameraType;

    iget-object v3, p0, Lcom/htc/camera/capturemode/SimpleCaptureMode;->m_TargetCameraMode:Lcom/htc/camera/CameraMode;

    invoke-virtual {v1, v2, v3, v0}, Lcom/htc/camera/HTCCamera;->switchMode(Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;Z)Z

    move-result v0

    return v0

    .line 85
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onExit(Lcom/htc/camera/capturemode/CaptureMode;I)V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method protected onRelease()V
    .locals 3

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/SimpleCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 103
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/capturemode/SimpleCaptureMode;->m_CameraModeTypeChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->removeChangedCallback(Lcom/htc/camera/property/c;)Z

    .line 104
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/capturemode/SimpleCaptureMode;->m_CameraModeTypeChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->removeChangedCallback(Lcom/htc/camera/property/c;)Z

    .line 105
    return-void
.end method
