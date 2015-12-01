.class public abstract Lcom/htc/camera/effect/bg;
.super Lcom/htc/camera/effect/o;
.source "VideoSceneFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TEffect:",
        "Lcom/htc/camera/effect/VideoSceneBase;",
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
    .line 10
    const/4 v0, 0x1

    return v0
.end method
