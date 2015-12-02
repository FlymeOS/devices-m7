.class Lcom/htc/camera/component/CameraMenuUI$17;
.super Ljava/lang/Object;
.source "CameraMenuUI.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/capturemode/CaptureModeEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CameraMenuUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CameraMenuUI;)V
    .locals 0

    .prologue
    .line 869
    iput-object p1, p0, Lcom/htc/camera/component/CameraMenuUI$17;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/capturemode/CaptureModeEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/capturemode/CaptureModeEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/capturemode/CaptureModeEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 873
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$17;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_MenuTable:Ljava/util/LinkedHashMap;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$4000(Lcom/htc/camera/component/CameraMenuUI;)Ljava/util/LinkedHashMap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 886
    :goto_0
    return-void

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$17;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_MenuTable:Ljava/util/LinkedHashMap;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$4000(Lcom/htc/camera/component/CameraMenuUI;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v1, p3, Lcom/htc/camera/capturemode/CaptureModeEventArgs;->captureMode:Lcom/htc/camera/capturemode/CaptureMode;

    invoke-virtual {v1}, Lcom/htc/camera/capturemode/CaptureMode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CameraMenuUI$MenuItem;

    .line 877
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$17;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPagerAdapter:Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;
    invoke-static {v1}, Lcom/htc/camera/component/CameraMenuUI;->access$400(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 879
    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$17;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_MenuList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/camera/component/CameraMenuUI;->access$3500(Lcom/htc/camera/component/CameraMenuUI;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 880
    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$17;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPagerAdapter:Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;
    invoke-static {v1}, Lcom/htc/camera/component/CameraMenuUI;->access$400(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->deleteItem(Lcom/htc/camera/component/CameraMenuUI$MenuItem;)V

    .line 881
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$17;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPagerAdapter:Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$400(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->notifyDataSetChanged()V

    .line 882
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$17;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # invokes: Lcom/htc/camera/component/CameraMenuUI;->updateCaptureModes()V
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$2500(Lcom/htc/camera/component/CameraMenuUI;)V

    .line 883
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$17;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # invokes: Lcom/htc/camera/component/CameraMenuUI;->updatePageIndicatorState()V
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$2600(Lcom/htc/camera/component/CameraMenuUI;)V

    .line 885
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$17;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # invokes: Lcom/htc/camera/component/CameraMenuUI;->updateHighlightItem()V
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$4100(Lcom/htc/camera/component/CameraMenuUI;)V

    goto :goto_0
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 869
    check-cast p3, Lcom/htc/camera/capturemode/CaptureModeEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/CameraMenuUI$17;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/capturemode/CaptureModeEventArgs;)V

    return-void
.end method
