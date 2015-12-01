.class public final Lcom/htc/camera/sina/c;
.super Lcom/htc/camera/component/cn;
.source "GifModeUIBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/component/cn",
        "<",
        "Lcom/htc/camera/sina/GifModeUI;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "Gif Mode UI"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/cn;-><init>(Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/sina/GifModeUI;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/htc/camera/sina/GifModeUI;

    invoke-direct {v0, p1}, Lcom/htc/camera/sina/GifModeUI;-><init>(Lcom/htc/camera/HTCCamera;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/Component;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/htc/camera/sina/c;->a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/sina/GifModeUI;

    move-result-object v0

    return-object v0
.end method

.method protected isSupported(Lcom/htc/camera/HTCCamera;)Z
    .locals 1

    .prologue
    .line 22
    invoke-static {p1}, Lcom/htc/camera/sina/GifModeController;->isSupported(Lcom/htc/camera/HTCCamera;)Z

    move-result v0

    return v0
.end method
