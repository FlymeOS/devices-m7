.class Lcom/htc/camera/effect/EffectManager$1;
.super Ljava/lang/Object;
.source "EffectManager.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/base/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/EffectManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectManager;)V
    .locals 0

    .prologue
    .line 646
    iput-object p1, p0, Lcom/htc/camera/effect/EffectManager$1;->this$0:Lcom/htc/camera/effect/EffectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/base/EventArgs;",
            ">;",
            "Lcom/htc/camera/base/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 650
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager$1;->this$0:Lcom/htc/camera/effect/EffectManager;

    # invokes: Lcom/htc/camera/effect/EffectManager;->updateDefaultEffectAndScene()V
    invoke-static {v0}, Lcom/htc/camera/effect/EffectManager;->access$100(Lcom/htc/camera/effect/EffectManager;)V

    .line 651
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager$1;->this$0:Lcom/htc/camera/effect/EffectManager;

    iget-object v1, p0, Lcom/htc/camera/effect/EffectManager$1;->this$0:Lcom/htc/camera/effect/EffectManager;

    # invokes: Lcom/htc/camera/effect/EffectManager;->getCameraType()Lcom/htc/camera/CameraType;
    invoke-static {v1}, Lcom/htc/camera/effect/EffectManager;->access$200(Lcom/htc/camera/effect/EffectManager;)Lcom/htc/camera/CameraType;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/effect/EffectManager$1;->this$0:Lcom/htc/camera/effect/EffectManager;

    # invokes: Lcom/htc/camera/effect/EffectManager;->getCameraMode()Lcom/htc/camera/CameraMode;
    invoke-static {v2}, Lcom/htc/camera/effect/EffectManager;->access$300(Lcom/htc/camera/effect/EffectManager;)Lcom/htc/camera/CameraMode;

    move-result-object v2

    const/4 v3, 0x1

    # invokes: Lcom/htc/camera/effect/EffectManager;->prepareEffectForNewMode(Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/effect/EffectManager;->access$400(Lcom/htc/camera/effect/EffectManager;Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;Z)V

    .line 652
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager$1;->this$0:Lcom/htc/camera/effect/EffectManager;

    const/4 v1, 0x0

    # invokes: Lcom/htc/camera/effect/EffectManager;->reset(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/effect/EffectManager;->access$500(Lcom/htc/camera/effect/EffectManager;Z)V

    .line 653
    return-void
.end method
