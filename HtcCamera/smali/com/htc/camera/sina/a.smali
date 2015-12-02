.class public final Lcom/htc/camera/sina/a;
.super Lcom/htc/camera/component/t;
.source "GifModeControllerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/component/t",
        "<",
        "Lcom/htc/camera/sina/GifModeController;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "Gif Mode Controller"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/t;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/sina/GifModeController;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/htc/camera/sina/GifModeController;

    invoke-direct {v0, p1}, Lcom/htc/camera/sina/GifModeController;-><init>(Lcom/htc/camera/CameraThread;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/component/Component;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/htc/camera/sina/a;->a(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/sina/GifModeController;

    move-result-object v0

    return-object v0
.end method

.method protected isSupported(Lcom/htc/camera/HTCCamera;)Z
    .locals 1

    .prologue
    .line 23
    invoke-static {p1}, Lcom/htc/camera/sina/GifModeController;->isSupported(Lcom/htc/camera/HTCCamera;)Z

    move-result v0

    return v0
.end method
