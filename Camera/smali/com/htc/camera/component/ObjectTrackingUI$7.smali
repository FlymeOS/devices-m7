.class Lcom/htc/camera/component/ObjectTrackingUI$7;
.super Ljava/lang/Object;
.source "ObjectTrackingUI.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/input/MotionEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ObjectTrackingUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ObjectTrackingUI;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/htc/camera/component/ObjectTrackingUI$7;->this$0:Lcom/htc/camera/component/ObjectTrackingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 244
    check-cast p3, Lcom/htc/camera/input/MotionEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/ObjectTrackingUI$7;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/input/MotionEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/input/MotionEventArgs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/input/MotionEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/input/MotionEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 248
    iget v0, p3, Lcom/htc/camera/input/MotionEventArgs;->action:I

    if-nez v0, :cond_1

    .line 249
    iget-object v1, p0, Lcom/htc/camera/component/ObjectTrackingUI$7;->this$0:Lcom/htc/camera/component/ObjectTrackingUI;

    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI$7;->this$0:Lcom/htc/camera/component/ObjectTrackingUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->zoomValue:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # setter for: Lcom/htc/camera/component/ObjectTrackingUI;->m_TouchDownZoomValue:I
    invoke-static {v1, v0}, Lcom/htc/camera/component/ObjectTrackingUI;->access$402(Lcom/htc/camera/component/ObjectTrackingUI;I)I

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget v0, p3, Lcom/htc/camera/input/MotionEventArgs;->action:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI$7;->this$0:Lcom/htc/camera/component/ObjectTrackingUI;

    # getter for: Lcom/htc/camera/component/ObjectTrackingUI;->m_TouchDownZoomValue:I
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingUI;->access$400(Lcom/htc/camera/component/ObjectTrackingUI;)I

    move-result v1

    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI$7;->this$0:Lcom/htc/camera/component/ObjectTrackingUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->zoomValue:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI$7;->this$0:Lcom/htc/camera/component/ObjectTrackingUI;

    # getter for: Lcom/htc/camera/component/ObjectTrackingUI;->m_HasFaces:Z
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingUI;->access$500(Lcom/htc/camera/component/ObjectTrackingUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI$7;->this$0:Lcom/htc/camera/component/ObjectTrackingUI;

    # getter for: Lcom/htc/camera/component/ObjectTrackingUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingUI;->access$600(Lcom/htc/camera/component/ObjectTrackingUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "restartFaceFocus after zoom change"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI$7;->this$0:Lcom/htc/camera/component/ObjectTrackingUI;

    iget-object v0, v0, Lcom/htc/camera/component/ObjectTrackingUI;->m_FocusObject:Lcom/htc/camera/ObjectTrackingInfo;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingUI$7;->this$0:Lcom/htc/camera/component/ObjectTrackingUI;

    iget-object v1, p0, Lcom/htc/camera/component/ObjectTrackingUI$7;->this$0:Lcom/htc/camera/component/ObjectTrackingUI;

    iget-object v1, v1, Lcom/htc/camera/component/ObjectTrackingUI;->m_FocusObject:Lcom/htc/camera/ObjectTrackingInfo;

    iget-object v1, v1, Lcom/htc/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/htc/camera/component/ObjectTrackingUI$7;->this$0:Lcom/htc/camera/component/ObjectTrackingUI;

    iget-object v2, v2, Lcom/htc/camera/component/ObjectTrackingUI;->m_FocusObject:Lcom/htc/camera/ObjectTrackingInfo;

    iget v2, v2, Lcom/htc/camera/ObjectTrackingInfo;->faceID:I

    # invokes: Lcom/htc/camera/component/ObjectTrackingUI;->triggerFaceFocus(Landroid/graphics/RectF;ZZI)V
    invoke-static {v0, v1, v3, v3, v2}, Lcom/htc/camera/component/ObjectTrackingUI;->access$700(Lcom/htc/camera/component/ObjectTrackingUI;Landroid/graphics/RectF;ZZI)V

    goto :goto_0
.end method
