.class Lcom/htc/camera/effect/EffectManager$8;
.super Ljava/lang/Object;
.source "EffectManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/EffectManager;

.field final synthetic val$captureFailedEventHandler:Lcom/htc/camera/event/a;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectManager;Lcom/htc/camera/event/a;)V
    .locals 0

    .prologue
    .line 796
    iput-object p1, p0, Lcom/htc/camera/effect/EffectManager$8;->this$0:Lcom/htc/camera/effect/EffectManager;

    iput-object p2, p0, Lcom/htc/camera/effect/EffectManager$8;->val$captureFailedEventHandler:Lcom/htc/camera/event/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 800
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager$8;->this$0:Lcom/htc/camera/effect/EffectManager;

    # getter for: Lcom/htc/camera/effect/EffectManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectManager;->access$2100(Lcom/htc/camera/effect/EffectManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Setup event handlers for camera thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager$8;->this$0:Lcom/htc/camera/effect/EffectManager;

    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectManager;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->captureFailedEvent:Lcom/htc/camera/event/Event;

    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager$8;->val$captureFailedEventHandler:Lcom/htc/camera/event/a;

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 802
    return-void
.end method
