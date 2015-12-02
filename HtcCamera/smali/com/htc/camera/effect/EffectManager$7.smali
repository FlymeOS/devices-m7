.class Lcom/htc/camera/effect/EffectManager$7;
.super Ljava/lang/Object;
.source "EffectManager.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/CaptureEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/EffectManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectManager;)V
    .locals 0

    .prologue
    .line 777
    iput-object p1, p0, Lcom/htc/camera/effect/EffectManager$7;->this$0:Lcom/htc/camera/effect/EffectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/CaptureEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/CaptureEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/CaptureEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 781
    iget-object v0, p3, Lcom/htc/camera/CaptureEventArgs;->failedReason:Lcom/htc/camera/CaptureFailedReason;

    sget-object v1, Lcom/htc/camera/CaptureFailedReason;->DriverFail:Lcom/htc/camera/CaptureFailedReason;

    if-ne v0, v1, :cond_0

    .line 783
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager$7;->this$0:Lcom/htc/camera/effect/EffectManager;

    new-instance v1, Lcom/htc/camera/effect/EffectManager$7$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/effect/EffectManager$7$1;-><init>(Lcom/htc/camera/effect/EffectManager$7;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/effect/EffectManager;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 793
    :cond_0
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 777
    check-cast p3, Lcom/htc/camera/CaptureEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/effect/EffectManager$7;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/CaptureEventArgs;)V

    return-void
.end method
