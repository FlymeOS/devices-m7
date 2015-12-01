.class public final Lcom/htc/camera/effect/ah;
.super Lcom/htc/camera/effect/av;
.source "LowlightSceneFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/effect/av",
        "<",
        "Lcom/htc/camera/effect/ag;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/htc/camera/effect/av;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/effect/ag;
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/htc/camera/effect/ag;

    invoke-direct {v0, p1}, Lcom/htc/camera/effect/ag;-><init>(Lcom/htc/camera/HTCCamera;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/effect/EffectBase;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Lcom/htc/camera/effect/ah;->a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/effect/ag;

    move-result-object v0

    return-object v0
.end method
