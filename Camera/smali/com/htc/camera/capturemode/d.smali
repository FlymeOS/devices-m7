.class public final Lcom/htc/camera/capturemode/d;
.super Lcom/htc/camera/capturemode/SimpleCaptureMode;
.source "MainPhotoCaptureMode.java"


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    .line 23
    const-string v0, "Main Camera (Photo) Mode"

    sget-object v1, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    sget-object v2, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/htc/camera/capturemode/SimpleCaptureMode;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;)V

    .line 24
    return-void
.end method

.method constructor <init>(Lcom/htc/camera/capturemode/d;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/capturemode/SimpleCaptureMode;-><init>(Lcom/htc/camera/capturemode/SimpleCaptureMode;Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/htc/camera/capturemode/d;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/htc/camera/capturemode/d;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/capturemode/d;-><init>(Lcom/htc/camera/capturemode/d;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic clone(Ljava/lang/String;)Lcom/htc/camera/capturemode/CaptureMode;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/htc/camera/capturemode/d;->a(Ljava/lang/String;)Lcom/htc/camera/capturemode/d;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/d;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    const v1, 0x7f080403

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmallIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/d;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020200

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
