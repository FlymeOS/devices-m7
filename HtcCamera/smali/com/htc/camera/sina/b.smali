.class public final Lcom/htc/camera/sina/b;
.super Lcom/htc/camera/effect/o;
.source "GifModeSceneFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/effect/o",
        "<",
        "Lcom/htc/camera/sina/GifModeScene;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/htc/camera/effect/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/sina/GifModeScene;
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/htc/camera/sina/GifModeScene;

    invoke-direct {v0, p1}, Lcom/htc/camera/sina/GifModeScene;-><init>(Lcom/htc/camera/HTCCamera;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/effect/EffectBase;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/htc/camera/sina/b;->a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/sina/GifModeScene;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/htc/camera/HTCCamera;)Z
    .locals 1

    .prologue
    .line 17
    invoke-static {p1}, Lcom/htc/camera/sina/GifModeController;->isSupported(Lcom/htc/camera/HTCCamera;)Z

    move-result v0

    return v0
.end method
