.class public final Lcom/htc/camera/effect/GpuEffectInfo;
.super Ljava/lang/Object;
.source "GpuEffectInfo.java"


# instance fields
.field public final name:Ljava/lang/String;

.field public final parameters:[Lcom/htc/camera/effect/GpuEffectParameters;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lcom/htc/camera/effect/GpuEffectParameters;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/htc/camera/effect/GpuEffectInfo;->name:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/htc/camera/effect/GpuEffectInfo;->parameters:[Lcom/htc/camera/effect/GpuEffectParameters;

    .line 18
    return-void
.end method
