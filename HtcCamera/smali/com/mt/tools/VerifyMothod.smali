.class public Lcom/mt/tools/VerifyMothod;
.super Ljava/lang/Object;
.source "VerifyMothod.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OpenCamera(I)Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 108
    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method public static doInAnimation(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 26
    const v0, 0x10a0002

    const v1, 0x10a0003

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 27
    return-void
.end method

.method public static doOutAnimation(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 30
    const/high16 v0, 0x7f040000

    const v1, 0x7f040001

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 31
    return-void
.end method

.method public static getAttri(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 53
    const-string v0, "0"

    .line 62
    :goto_0
    return-object v0

    .line 55
    :cond_0
    const/4 v1, 0x0

    .line 57
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_1
    const-string v1, "Orientation"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 60
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public static getJpgOrit(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    const/4 v1, 0x0

    .line 119
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    const-string v1, "Orientation"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 120
    :catch_0
    move-exception v0

    .line 122
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static getPointer(Landroid/view/MotionEvent;)I
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    return v0
.end method

.method public static getSupportedPreviewSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getX(Landroid/view/MotionEvent;I)I
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static getY(Landroid/view/MotionEvent;I)I
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static isHaveFrontCamera()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 94
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    .line 95
    const-string v2, "TEMP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "______-isHaveFrontCamera cameraCount="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mt/tools/MTDebug;->Print(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    if-le v1, v0, :cond_0

    .line 99
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setDefaultZoom(Landroid/webkit/WebSettings;)V
    .locals 2

    .prologue
    .line 66
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 67
    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 69
    :cond_0
    return-void
.end method

.method public static setFlashMode(Landroid/hardware/Camera$Parameters;Z)V
    .locals 1

    .prologue
    .line 76
    if-eqz p1, :cond_0

    .line 77
    const-string v0, "torch"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    const-string v0, "off"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 87
    return-void
.end method
