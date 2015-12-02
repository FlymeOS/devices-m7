.class public abstract Lcom/htc/camera/effect/av;
.super Lcom/htc/camera/effect/o;
.source "SceneEffectFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TEffect:",
        "Lcom/htc/camera/effect/SceneEffectBase;",
        ">",
        "Lcom/htc/camera/effect/o",
        "<TTEffect;>;"
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
.method public c(Lcom/htc/camera/HTCCamera;)Z
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->supportScene()Z

    move-result v0

    return v0
.end method
