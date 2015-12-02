.class Lcom/htc/camera/component/FlashController$6;
.super Ljava/lang/Object;
.source "FlashController.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/SettingsEventArgs",
        "<",
        "Lcom/htc/camera/CameraSettings;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/FlashController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/FlashController;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/htc/camera/component/FlashController$6;->this$0:Lcom/htc/camera/component/FlashController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/SettingsEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/SettingsEventArgs",
            "<",
            "Lcom/htc/camera/CameraSettings;",
            ">;>;",
            "Lcom/htc/camera/SettingsEventArgs",
            "<",
            "Lcom/htc/camera/CameraSettings;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Lcom/htc/camera/component/FlashController$6;->this$0:Lcom/htc/camera/component/FlashController;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/FlashController;->removeMessages(I)V

    .line 411
    iget-object v0, p0, Lcom/htc/camera/component/FlashController$6;->this$0:Lcom/htc/camera/component/FlashController;

    # invokes: Lcom/htc/camera/component/FlashController;->getTopMostFlashProviderHandle()Lcom/htc/camera/component/FlashController$FlashProviderHandle;
    invoke-static {v0}, Lcom/htc/camera/component/FlashController;->access$200(Lcom/htc/camera/component/FlashController;)Lcom/htc/camera/component/FlashController$FlashProviderHandle;

    move-result-object v0

    .line 412
    if-eqz v0, :cond_0

    .line 414
    iget-object v1, p0, Lcom/htc/camera/component/FlashController$6;->this$0:Lcom/htc/camera/component/FlashController;

    iget-object v0, v0, Lcom/htc/camera/component/FlashController$FlashProviderHandle;->flashProvider:Lcom/htc/camera/FlashProvider;

    # invokes: Lcom/htc/camera/component/FlashController;->deactivateProvider(Lcom/htc/camera/FlashProvider;)V
    invoke-static {v1, v0}, Lcom/htc/camera/component/FlashController;->access$300(Lcom/htc/camera/component/FlashController;Lcom/htc/camera/FlashProvider;)V

    .line 415
    iget-object v0, p0, Lcom/htc/camera/component/FlashController$6;->this$0:Lcom/htc/camera/component/FlashController;

    # invokes: Lcom/htc/camera/component/FlashController;->applyFlashMode()V
    invoke-static {v0}, Lcom/htc/camera/component/FlashController;->access$000(Lcom/htc/camera/component/FlashController;)V

    .line 417
    :cond_0
    return-void
.end method

.method public bridge synthetic onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 0

    .prologue
    .line 404
    check-cast p3, Lcom/htc/camera/SettingsEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/FlashController$6;->onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/SettingsEventArgs;)V

    return-void
.end method
