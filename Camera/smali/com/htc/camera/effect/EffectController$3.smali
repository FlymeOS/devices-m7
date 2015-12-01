.class Lcom/htc/camera/effect/EffectController$3;
.super Ljava/lang/Object;
.source "EffectController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/EffectController;

.field final synthetic val$applyImmediately:Z

.field final synthetic val$effectInfo:Lcom/htc/camera/effect/GpuEffectInfo;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectController;Lcom/htc/camera/effect/GpuEffectInfo;Z)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/htc/camera/effect/EffectController$3;->this$0:Lcom/htc/camera/effect/EffectController;

    iput-object p2, p0, Lcom/htc/camera/effect/EffectController$3;->val$effectInfo:Lcom/htc/camera/effect/GpuEffectInfo;

    iput-boolean p3, p0, Lcom/htc/camera/effect/EffectController$3;->val$applyImmediately:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/htc/camera/effect/EffectController$3;->this$0:Lcom/htc/camera/effect/EffectController;

    iget-object v1, p0, Lcom/htc/camera/effect/EffectController$3;->val$effectInfo:Lcom/htc/camera/effect/GpuEffectInfo;

    iget-boolean v2, p0, Lcom/htc/camera/effect/EffectController$3;->val$applyImmediately:Z

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/effect/EffectController;->setGpuEffect(Lcom/htc/camera/effect/GpuEffectInfo;Z)V

    .line 259
    return-void
.end method
