.class Lcom/htc/camera/component/AutoFaceCaptureUI$7;
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
    .line 572
    iput-object p1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$7;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

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

    .line 576
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$7;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$2500(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPreviewStarted:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 578
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$7;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->mHFMClient:Lcom/htc/lib1/hfmclient/HfmClient;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$200(Lcom/htc/camera/component/AutoFaceCaptureUI;)Lcom/htc/lib1/hfmclient/HfmClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$7;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->mHFMClient:Lcom/htc/lib1/hfmclient/HfmClient;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$200(Lcom/htc/camera/component/AutoFaceCaptureUI;)Lcom/htc/lib1/hfmclient/HfmClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lib1/hfmclient/HfmClient;->abort()I

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$7;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # invokes: Lcom/htc/camera/component/AutoFaceCaptureUI;->reserveHFMService()V
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$300(Lcom/htc/camera/component/AutoFaceCaptureUI;)V

    .line 581
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$7;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$7;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    const/4 v5, 0x0

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/component/AutoFaceCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 582
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$7;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # invokes: Lcom/htc/camera/component/AutoFaceCaptureUI;->showVoiceCommandToast(Z)V
    invoke-static {v0, v6}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$2600(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)V

    .line 583
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$7;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # invokes: Lcom/htc/camera/component/AutoFaceCaptureUI;->showAutoCaptureToast(Z)V
    invoke-static {v0, v6}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$2700(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)V

    .line 584
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$7;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # invokes: Lcom/htc/camera/component/AutoFaceCaptureUI;->updateAutoFaceCaptureState()V
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$2800(Lcom/htc/camera/component/AutoFaceCaptureUI;)V

    .line 596
    :goto_0
    return-void

    .line 586
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$7;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->mHFMClient:Lcom/htc/lib1/hfmclient/HfmClient;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$200(Lcom/htc/camera/component/AutoFaceCaptureUI;)Lcom/htc/lib1/hfmclient/HfmClient;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 587
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$7;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->mHFMClient:Lcom/htc/lib1/hfmclient/HfmClient;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$200(Lcom/htc/camera/component/AutoFaceCaptureUI;)Lcom/htc/lib1/hfmclient/HfmClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lib1/hfmclient/HfmClient;->abort()I

    .line 589
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$7;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    const/16 v1, 0x2713

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->removeMessages(I)V

    .line 590
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$7;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/AutoFaceCaptureUI;->removeMessages(I)V

    .line 591
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$7;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    const/16 v1, 0x2715

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->removeMessages(I)V

    .line 592
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$7;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    iget-object v0, v0, Lcom/htc/camera/component/AutoFaceCaptureUI;->isStableFace:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$7;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    iget-object v1, v1, Lcom/htc/camera/component/AutoFaceCaptureUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 593
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$7;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # invokes: Lcom/htc/camera/component/AutoFaceCaptureUI;->showAutoCaptureToast(Z)V
    invoke-static {v0, v3}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$2700(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)V

    .line 594
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$7;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # invokes: Lcom/htc/camera/component/AutoFaceCaptureUI;->showVoiceCommandToast(Z)V
    invoke-static {v0, v3}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$2600(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)V

    goto :goto_0
.end method
