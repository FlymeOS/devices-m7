.class Lcom/htc/camera/component/CameraMenuUI$15;
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
    .line 845
    iput-object p1, p0, Lcom/htc/camera/component/CameraMenuUI$15;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/capturemode/CaptureModeEventArgs;)V
    .locals 6
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
    .line 848
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$15;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPagerAdapter:Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$400(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$15;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_MenuTable:Ljava/util/LinkedHashMap;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$4000(Lcom/htc/camera/component/CameraMenuUI;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v1, p3, Lcom/htc/camera/capturemode/CaptureModeEventArgs;->captureMode:Lcom/htc/camera/capturemode/CaptureMode;

    invoke-virtual {v1}, Lcom/htc/camera/capturemode/CaptureMode;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/htc/camera/component/CameraMenuUI$MenuItem;

    iget-object v3, p3, Lcom/htc/camera/capturemode/CaptureModeEventArgs;->captureMode:Lcom/htc/camera/capturemode/CaptureMode;

    invoke-virtual {v3}, Lcom/htc/camera/capturemode/CaptureMode;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p3, Lcom/htc/camera/capturemode/CaptureModeEventArgs;->captureMode:Lcom/htc/camera/capturemode/CaptureMode;

    invoke-virtual {v4}, Lcom/htc/camera/capturemode/CaptureMode;->getSmallIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p3, Lcom/htc/camera/capturemode/CaptureModeEventArgs;->captureMode:Lcom/htc/camera/capturemode/CaptureMode;

    invoke-virtual {v5}, Lcom/htc/camera/capturemode/CaptureMode;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/htc/camera/component/CameraMenuUI$MenuItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$15;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_MenuList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$3500(Lcom/htc/camera/component/CameraMenuUI;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$15;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPagerAdapter:Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;
    invoke-static {v1}, Lcom/htc/camera/component/CameraMenuUI;->access$400(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->size()I

    move-result v1

    new-instance v2, Lcom/htc/camera/component/CameraMenuUI$MenuItem;

    iget-object v3, p3, Lcom/htc/camera/capturemode/CaptureModeEventArgs;->captureMode:Lcom/htc/camera/capturemode/CaptureMode;

    invoke-virtual {v3}, Lcom/htc/camera/capturemode/CaptureMode;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p3, Lcom/htc/camera/capturemode/CaptureModeEventArgs;->captureMode:Lcom/htc/camera/capturemode/CaptureMode;

    invoke-virtual {v4}, Lcom/htc/camera/capturemode/CaptureMode;->getSmallIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p3, Lcom/htc/camera/capturemode/CaptureModeEventArgs;->captureMode:Lcom/htc/camera/capturemode/CaptureMode;

    invoke-virtual {v5}, Lcom/htc/camera/capturemode/CaptureMode;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/htc/camera/component/CameraMenuUI$MenuItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 853
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$15;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPagerAdapter:Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$400(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->notifyDataSetChanged()V

    .line 854
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$15;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # invokes: Lcom/htc/camera/component/CameraMenuUI;->updateCaptureModes()V
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$2500(Lcom/htc/camera/component/CameraMenuUI;)V

    .line 856
    :cond_0
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 845
    check-cast p3, Lcom/htc/camera/capturemode/CaptureModeEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/CameraMenuUI$15;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/capturemode/CaptureModeEventArgs;)V

    return-void
.end method
