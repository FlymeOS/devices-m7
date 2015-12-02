.class public final Lcom/htc/camera/effect/GpuEffectParameters;
.super Ljava/lang/Object;
.source "GpuEffectParameters.java"


# instance fields
.field public final enabled:Z

.field public final key:Ljava/lang/String;

.field public final n0:I

.field public final n1:I

.field public final n2:I

.field public final n3:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIZ)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/htc/camera/effect/GpuEffectParameters;->key:Ljava/lang/String;

    .line 29
    iput p2, p0, Lcom/htc/camera/effect/GpuEffectParameters;->n0:I

    .line 30
    iput p3, p0, Lcom/htc/camera/effect/GpuEffectParameters;->n1:I

    .line 31
    iput p4, p0, Lcom/htc/camera/effect/GpuEffectParameters;->n2:I

    .line 32
    iput p5, p0, Lcom/htc/camera/effect/GpuEffectParameters;->n3:I

    .line 33
    iput-boolean p6, p0, Lcom/htc/camera/effect/GpuEffectParameters;->enabled:Z

    .line 34
    return-void
.end method
