.class Lcom/htc/camera/component/ZoomBar$1;
.super Ljava/lang/Object;
.source "ZoomBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ZoomBar;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ZoomBar;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/htc/camera/component/ZoomBar$1;->this$0:Lcom/htc/camera/component/ZoomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar$1;->this$0:Lcom/htc/camera/component/ZoomBar;

    # getter for: Lcom/htc/camera/component/ZoomBar;->m_IsUpdatingZoom:Z
    invoke-static {v0}, Lcom/htc/camera/component/ZoomBar;->access$000(Lcom/htc/camera/component/ZoomBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar$1;->this$0:Lcom/htc/camera/component/ZoomBar;

    invoke-virtual {v0}, Lcom/htc/camera/component/ZoomBar;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 77
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar$1;->this$0:Lcom/htc/camera/component/ZoomBar;

    # invokes: Lcom/htc/camera/component/ZoomBar;->cancelAutoFocus()Z
    invoke-static {v0}, Lcom/htc/camera/component/ZoomBar;->access$100(Lcom/htc/camera/component/ZoomBar;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isCaptureUIBlocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isSelfTimerStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar$1;->this$0:Lcom/htc/camera/component/ZoomBar;

    # invokes: Lcom/htc/camera/component/ZoomBar;->syncFromCurrentZoom()V
    invoke-static {v0}, Lcom/htc/camera/component/ZoomBar;->access$200(Lcom/htc/camera/component/ZoomBar;)V

    goto :goto_0

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar$1;->this$0:Lcom/htc/camera/component/ZoomBar;

    const/4 v2, 0x1

    # setter for: Lcom/htc/camera/component/ZoomBar;->m_IsUpdatingZoom:Z
    invoke-static {v0, v2}, Lcom/htc/camera/component/ZoomBar;->access$002(Lcom/htc/camera/component/ZoomBar;Z)Z

    .line 85
    invoke-virtual {v1, p2}, Lcom/htc/camera/HTCCamera;->changeZoom(I)V

    .line 86
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar$1;->this$0:Lcom/htc/camera/component/ZoomBar;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/ZoomBar;->m_IsUpdatingZoom:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/ZoomBar;->access$002(Lcom/htc/camera/component/ZoomBar;Z)Z

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar$1;->this$0:Lcom/htc/camera/component/ZoomBar;

    iget-object v0, v0, Lcom/htc/camera/component/ZoomBar;->zoomBarTrackingStartedEvent:Lcom/htc/camera/event/Event;

    iget-object v1, p0, Lcom/htc/camera/component/ZoomBar$1;->this$0:Lcom/htc/camera/component/ZoomBar;

    sget-object v2, Lcom/htc/camera/event/EventArgs;->empty:Lcom/htc/camera/event/EventArgs;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 68
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/camera/component/ZoomBar$1;->this$0:Lcom/htc/camera/component/ZoomBar;

    iget-object v0, v0, Lcom/htc/camera/component/ZoomBar;->zoomBarTrackingStoppedEvent:Lcom/htc/camera/event/Event;

    iget-object v1, p0, Lcom/htc/camera/component/ZoomBar$1;->this$0:Lcom/htc/camera/component/ZoomBar;

    sget-object v2, Lcom/htc/camera/event/EventArgs;->empty:Lcom/htc/camera/event/EventArgs;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 62
    return-void
.end method
