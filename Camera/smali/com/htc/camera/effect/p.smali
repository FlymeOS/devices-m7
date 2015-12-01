.class public final Lcom/htc/camera/effect/p;
.super Lcom/htc/camera/component/cn;
.source "EffectManagerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/component/cn",
        "<",
        "Lcom/htc/camera/effect/EffectManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    const-string v0, "Effect Manager"

    sget-object v1, Lcom/htc/camera/component/ComponentCategory;->Launch:Lcom/htc/camera/component/ComponentCategory;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/component/cn;-><init>(Ljava/lang/String;Lcom/htc/camera/component/ComponentCategory;)V

    .line 12
    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/effect/EffectManager;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/htc/camera/effect/EffectManager;

    invoke-direct {v0, p1}, Lcom/htc/camera/effect/EffectManager;-><init>(Lcom/htc/camera/HTCCamera;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/Component;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/htc/camera/effect/p;->a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/effect/EffectManager;

    move-result-object v0

    return-object v0
.end method
