.class Lcom/htc/camera/component/ImageSettingsController$2;
.super Ljava/lang/Object;
.source "ImageSettingsController.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/event/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ImageSettingsController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ImageSettingsController;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/htc/camera/component/ImageSettingsController$2;->this$0:Lcom/htc/camera/component/ImageSettingsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/event/EventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/event/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 329
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController$2;->this$0:Lcom/htc/camera/component/ImageSettingsController;

    const/4 v1, 0x1

    # setter for: Lcom/htc/camera/component/ImageSettingsController;->m_NeedToSetParams:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/ImageSettingsController;->access$002(Lcom/htc/camera/component/ImageSettingsController;Z)Z

    .line 330
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController$2;->this$0:Lcom/htc/camera/component/ImageSettingsController;

    # invokes: Lcom/htc/camera/component/ImageSettingsController;->unlockAutoExposure(Z)V
    invoke-static {v0, v2}, Lcom/htc/camera/component/ImageSettingsController;->access$100(Lcom/htc/camera/component/ImageSettingsController;Z)V

    .line 331
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController$2;->this$0:Lcom/htc/camera/component/ImageSettingsController;

    # invokes: Lcom/htc/camera/component/ImageSettingsController;->unlockAutoWhiteBalance(Z)V
    invoke-static {v0, v2}, Lcom/htc/camera/component/ImageSettingsController;->access$200(Lcom/htc/camera/component/ImageSettingsController;Z)V

    .line 332
    return-void
.end method
