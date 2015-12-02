.class public abstract Lcom/htc/camera/effect/u;
.super Lcom/htc/camera/effect/o;
.source "GpuEffectFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TEffect:",
        "Lcom/htc/camera/effect/GpuEffectBase;",
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
.method public final c(Lcom/htc/camera/HTCCamera;)Z
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->supportGpuEffect()Z

    move-result v0

    return v0
.end method
