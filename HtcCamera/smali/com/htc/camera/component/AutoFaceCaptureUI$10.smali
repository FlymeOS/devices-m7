.class Lcom/htc/camera/component/AutoFaceCaptureUI$10;
.super Ljava/lang/Object;
.source "AutoFaceCaptureUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AutoFaceCaptureUI;)V
    .locals 0

    .prologue
    .line 631
    iput-object p1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$10;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 2
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
    const/4 v1, 0x0

    .line 635
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$10;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # invokes: Lcom/htc/camera/component/AutoFaceCaptureUI;->showAutoCaptureToast(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$2700(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)V

    .line 636
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$10;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # invokes: Lcom/htc/camera/component/AutoFaceCaptureUI;->showVoiceCommandToast(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$2600(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)V

    .line 637
    return-void
.end method
