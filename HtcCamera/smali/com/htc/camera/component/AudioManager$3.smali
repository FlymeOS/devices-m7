.class Lcom/htc/camera/component/AudioManager$3;
.super Ljava/lang/Object;
.source "AudioManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/AudioManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AudioManager;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/htc/camera/component/AudioManager$3;->this$0:Lcom/htc/camera/component/AudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 288
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraApplication;->PROPERTY_SIM_OPERATOR:Lcom/htc/camera/base/PropertyKey;

    iget-object v2, p0, Lcom/htc/camera/component/AudioManager$3;->this$0:Lcom/htc/camera/component/AudioManager;

    # getter for: Lcom/htc/camera/component/AudioManager;->m_SimOperatorChangedCallback:Lcom/htc/camera/base/f;
    invoke-static {v2}, Lcom/htc/camera/component/AudioManager;->access$400(Lcom/htc/camera/component/AudioManager;)Lcom/htc/camera/base/f;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraApplication;->removePropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 289
    return-void
.end method
