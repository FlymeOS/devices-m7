.class public Lcom/htc/camera/capturemode/b;
.super Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;
.source "FrontCameraCaptureMode.java"


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0, v0}, Lcom/htc/camera/capturemode/b;-><init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraMode;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method constructor <init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraMode;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 31
    const-string v1, "Front Camera Capture Mode"

    sget-object v3, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method constructor <init>(Lcom/htc/camera/capturemode/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;-><init>(Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/htc/camera/capturemode/b;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/htc/camera/capturemode/b;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/capturemode/b;-><init>(Lcom/htc/camera/capturemode/b;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic clone(Ljava/lang/String;)Lcom/htc/camera/capturemode/CaptureMode;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/htc/camera/capturemode/b;->a(Ljava/lang/String;)Lcom/htc/camera/capturemode/b;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/b;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    const v1, 0x7f080402

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmallIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/b;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020213

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateCustomSettings(Ljava/lang/String;)Lcom/htc/camera/CameraSettings;
    .locals 3

    .prologue
    .line 67
    new-instance v0, Lcom/htc/camera/CameraSettings;

    invoke-virtual {p0}, Lcom/htc/camera/capturemode/b;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    if-nez p1, :cond_0

    const-string p1, "front"

    :cond_0
    invoke-direct {v0, v1, p1}, Lcom/htc/camera/CameraSettings;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V

    .line 68
    const-string v1, "pref_live_face_beautifier"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->setDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    return-object v0
.end method
