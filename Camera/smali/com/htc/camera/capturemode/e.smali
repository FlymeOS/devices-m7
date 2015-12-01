.class public Lcom/htc/camera/capturemode/e;
.super Lcom/htc/camera/capturemode/SimpleCaptureMode;
.source "MainVideoCaptureMode.java"


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    .line 22
    const-string v0, "Main Camera (Video) Mode"

    sget-object v1, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    sget-object v2, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/htc/camera/capturemode/SimpleCaptureMode;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;)V

    .line 23
    return-void
.end method

.method constructor <init>(Lcom/htc/camera/capturemode/e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/capturemode/SimpleCaptureMode;-><init>(Lcom/htc/camera/capturemode/SimpleCaptureMode;Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/htc/camera/capturemode/e;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/htc/camera/capturemode/e;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/capturemode/e;-><init>(Lcom/htc/camera/capturemode/e;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic clone(Ljava/lang/String;)Lcom/htc/camera/capturemode/CaptureMode;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/htc/camera/capturemode/e;->a(Ljava/lang/String;)Lcom/htc/camera/capturemode/e;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/e;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    const v1, 0x7f080404

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmallIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/e;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateCustomSettings(Ljava/lang/String;)Lcom/htc/camera/CameraSettings;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/htc/camera/CameraSettings;

    invoke-virtual {p0}, Lcom/htc/camera/capturemode/e;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    if-nez p1, :cond_0

    const-string p1, "main-video"

    :cond_0
    invoke-direct {v0, v1, p1}, Lcom/htc/camera/CameraSettings;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V

    return-object v0
.end method
