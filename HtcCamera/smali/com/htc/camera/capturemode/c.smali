.class public Lcom/htc/camera/capturemode/c;
.super Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;
.source "MainCameraCaptureMode.java"


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0, v0}, Lcom/htc/camera/capturemode/c;-><init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraMode;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraMode;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 50
    const-string v1, "Main Camera Capture Mode"

    sget-object v3, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/capturemode/c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;-><init>(Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/htc/camera/capturemode/c;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/htc/camera/capturemode/c;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/capturemode/c;-><init>(Lcom/htc/camera/capturemode/c;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic clone(Ljava/lang/String;)Lcom/htc/camera/capturemode/CaptureMode;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/htc/camera/capturemode/c;->a(Ljava/lang/String;)Lcom/htc/camera/capturemode/c;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/c;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    const v1, 0x7f080403

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmallIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/c;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020200

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
