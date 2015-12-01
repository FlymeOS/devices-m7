.class Lcom/htc/camera/component/AutoFaceCaptureUI$20;
.super Ljava/lang/Object;
.source "AutoFaceCaptureUI.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AutoFaceCaptureUI;)V
    .locals 0

    .prologue
    .line 763
    iput-object p1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$20;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 767
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$20;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # invokes: Lcom/htc/camera/component/AutoFaceCaptureUI;->updateBurstMode(I)V
    invoke-static {v0, v2}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$3800(Lcom/htc/camera/component/AutoFaceCaptureUI;I)V

    .line 770
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$20;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # setter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->mTakePictureDuringCountdown:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$3902(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)Z

    .line 771
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$20;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # setter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->m_CanCapture:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$4002(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)Z

    .line 772
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$20;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # invokes: Lcom/htc/camera/component/AutoFaceCaptureUI;->lockRotation()V
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$4100(Lcom/htc/camera/component/AutoFaceCaptureUI;)V

    .line 781
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$20;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    const/16 v1, 0x2713

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->removeMessages(I)V

    .line 782
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$20;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    const/16 v1, 0x2716

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->removeMessages(I)V

    .line 783
    return-void

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$20;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->mPreCaptureAFHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$4202(Lcom/htc/camera/component/AutoFaceCaptureUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    .line 777
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$20;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # setter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->m_CanCapture:Z
    invoke-static {v0, v2}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$4002(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)Z

    .line 778
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$20;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # invokes: Lcom/htc/camera/component/AutoFaceCaptureUI;->enableShutterSound(Z)V
    invoke-static {v0, v2}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$4300(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)V

    .line 779
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$20;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # invokes: Lcom/htc/camera/component/AutoFaceCaptureUI;->unlockRotation()V
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$4400(Lcom/htc/camera/component/AutoFaceCaptureUI;)V

    goto :goto_0
.end method
