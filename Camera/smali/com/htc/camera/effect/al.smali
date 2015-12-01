.class public final Lcom/htc/camera/effect/al;
.super Lcom/htc/camera/effect/g;
.source "NegativeEffectFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/effect/g",
        "<",
        "Lcom/htc/camera/effect/ak;",
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
.method public final a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/effect/ak;
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/htc/camera/effect/ak;

    invoke-direct {v0, p1}, Lcom/htc/camera/effect/ak;-><init>(Lcom/htc/camera/HTCCamera;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/effect/EffectBase;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Lcom/htc/camera/effect/al;->a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/effect/ak;

    move-result-object v0

    return-object v0
.end method
