.class public Lcom/htc/camera/effect/ay;
.super Lcom/htc/camera/effect/bg;
.source "SlowMotionSceneFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/effect/bg",
        "<",
        "Lcom/htc/camera/effect/SlowMotionScene;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/htc/camera/effect/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/effect/SlowMotionScene;
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/htc/camera/effect/SlowMotionScene;

    invoke-direct {v0, p1}, Lcom/htc/camera/effect/SlowMotionScene;-><init>(Lcom/htc/camera/HTCCamera;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/effect/EffectBase;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Lcom/htc/camera/effect/ay;->a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/effect/SlowMotionScene;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/htc/camera/HTCCamera;)Z
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    return v0
.end method
