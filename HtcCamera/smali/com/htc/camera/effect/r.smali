.class public final Lcom/htc/camera/effect/r;
.super Lcom/htc/camera/effect/av;
.source "EisSceneFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/effect/av",
        "<",
        "Lcom/htc/camera/effect/EisScene;",
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
.method public a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/effect/EisScene;
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/htc/camera/effect/EisScene;

    invoke-direct {v0, p1}, Lcom/htc/camera/effect/EisScene;-><init>(Lcom/htc/camera/HTCCamera;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/effect/EffectBase;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Lcom/htc/camera/effect/r;->a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/effect/EisScene;

    move-result-object v0

    return-object v0
.end method
