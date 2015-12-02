.class public abstract Lcom/htc/camera/effect/o;
.super Ljava/lang/Object;
.source "EffectFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TEffect:",
        "Lcom/htc/camera/effect/EffectBase;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract b(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/effect/EffectBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/HTCCamera;",
            ")TTEffect;"
        }
    .end annotation
.end method

.method public abstract c(Lcom/htc/camera/HTCCamera;)Z
.end method
