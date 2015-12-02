.class Lcom/htc/camera/component/QuickTipsUI$8;
.super Ljava/lang/Object;
.source "QuickTipsUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/QuickTipsUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/QuickTipsUI;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/htc/camera/component/QuickTipsUI$8;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 5
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
    const/4 v4, 0x0

    .line 352
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$8;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    const/4 v1, 0x1

    # invokes: Lcom/htc/camera/component/QuickTipsUI;->showSwipeCameraQuickTips(ZZ)V
    invoke-static {v0, v4, v1}, Lcom/htc/camera/component/QuickTipsUI;->access$900(Lcom/htc/camera/component/QuickTipsUI;ZZ)V

    .line 353
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$8;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/QuickTipsUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_camera_mode_change_count"

    iget-object v2, p0, Lcom/htc/camera/component/QuickTipsUI$8;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    const/16 v3, 0x63

    # setter for: Lcom/htc/camera/component/QuickTipsUI;->m_ModeChangeCount:I
    invoke-static {v2, v3}, Lcom/htc/camera/component/QuickTipsUI;->access$702(Lcom/htc/camera/component/QuickTipsUI;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 354
    iget-object v0, p0, Lcom/htc/camera/component/QuickTipsUI$8;->this$0:Lcom/htc/camera/component/QuickTipsUI;

    # invokes: Lcom/htc/camera/component/QuickTipsUI;->showCameraQuickTips(ZZ)V
    invoke-static {v0, v4, v4}, Lcom/htc/camera/component/QuickTipsUI;->access$000(Lcom/htc/camera/component/QuickTipsUI;ZZ)V

    .line 355
    return-void
.end method
