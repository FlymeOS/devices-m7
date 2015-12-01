.class Lcom/htc/camera/component/AutoFaceCaptureUI$18;
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
    .line 731
    iput-object p1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$18;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 7
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
    const/16 v2, 0x28a3

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 735
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$18;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$3700(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasDialog:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 737
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$18;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$18;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    const/4 v5, 0x0

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/component/AutoFaceCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 738
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$18;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # invokes: Lcom/htc/camera/component/AutoFaceCaptureUI;->showVoiceCommandToast(Z)V
    invoke-static {v0, v6}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$2600(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)V

    .line 739
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$18;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # invokes: Lcom/htc/camera/component/AutoFaceCaptureUI;->showAutoCaptureToast(Z)V
    invoke-static {v0, v6}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$2700(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)V

    .line 749
    :cond_0
    :goto_0
    return-void

    .line 741
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$18;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    const/16 v1, 0x2713

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->removeMessages(I)V

    .line 742
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$18;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    const/16 v1, 0x28a4

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->removeMessages(I)V

    .line 743
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$18;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/AutoFaceCaptureUI;->removeMessages(I)V

    .line 744
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$18;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # invokes: Lcom/htc/camera/component/AutoFaceCaptureUI;->showAutoCaptureToast(Z)V
    invoke-static {v0, v3}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$2700(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)V

    .line 745
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$18;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # invokes: Lcom/htc/camera/component/AutoFaceCaptureUI;->showVoiceCommandToast(Z)V
    invoke-static {v0, v3}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$2600(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)V

    .line 746
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$18;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->mHFMClient:Lcom/htc/lib1/hfmclient/HfmClient;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$200(Lcom/htc/camera/component/AutoFaceCaptureUI;)Lcom/htc/lib1/hfmclient/HfmClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$18;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->mHFMClient:Lcom/htc/lib1/hfmclient/HfmClient;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$200(Lcom/htc/camera/component/AutoFaceCaptureUI;)Lcom/htc/lib1/hfmclient/HfmClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lib1/hfmclient/HfmClient;->abort()I

    goto :goto_0
.end method
