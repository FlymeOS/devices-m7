.class public Lcom/htc/camera/effect/y;
.super Lcom/htc/camera/effect/bg;
.source "HdrVideoSceneFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/effect/bg",
        "<",
        "Lcom/htc/camera/effect/HdrVideoScene;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/htc/camera/effect/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/effect/HdrVideoScene;
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/htc/camera/effect/HdrVideoScene;

    invoke-direct {v0, p1}, Lcom/htc/camera/effect/HdrVideoScene;-><init>(Lcom/htc/camera/HTCCamera;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/effect/EffectBase;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/htc/camera/effect/y;->a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/effect/HdrVideoScene;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/htc/camera/HTCCamera;)Z
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x1

    return v0
.end method
