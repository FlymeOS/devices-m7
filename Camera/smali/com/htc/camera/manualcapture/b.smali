.class public final Lcom/htc/camera/manualcapture/b;
.super Lcom/htc/camera/effect/o;
.source "ManualCaptureSceneFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/effect/o",
        "<",
        "Lcom/htc/camera/manualcapture/ManualCaptureScene;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/htc/camera/effect/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/manualcapture/ManualCaptureScene;
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/htc/camera/manualcapture/ManualCaptureScene;

    invoke-direct {v0, p1}, Lcom/htc/camera/manualcapture/ManualCaptureScene;-><init>(Lcom/htc/camera/HTCCamera;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/effect/EffectBase;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/htc/camera/manualcapture/b;->a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/manualcapture/ManualCaptureScene;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/htc/camera/HTCCamera;)Z
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x1

    return v0
.end method
