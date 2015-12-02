.class public final Lcom/htc/camera/effect/d;
.super Lcom/htc/camera/effect/av;
.source "BacklightSceneFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/effect/av",
        "<",
        "Lcom/htc/camera/effect/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/htc/camera/effect/av;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/effect/c;
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/htc/camera/effect/c;

    invoke-direct {v0, p1}, Lcom/htc/camera/effect/c;-><init>(Lcom/htc/camera/HTCCamera;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/effect/EffectBase;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/htc/camera/effect/d;->a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/effect/c;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/htc/camera/HTCCamera;)Z
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    return v0
.end method
