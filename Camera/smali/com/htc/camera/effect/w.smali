.class public Lcom/htc/camera/effect/w;
.super Lcom/htc/camera/effect/g;
.source "GrayscaleEffectFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/effect/g",
        "<",
        "Lcom/htc/camera/effect/v;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/htc/camera/effect/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/effect/v;
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/htc/camera/effect/v;

    invoke-direct {v0, p1}, Lcom/htc/camera/effect/v;-><init>(Lcom/htc/camera/HTCCamera;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/effect/EffectBase;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Lcom/htc/camera/effect/w;->a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/effect/v;

    move-result-object v0

    return-object v0
.end method
