.class Lcom/htc/camera/component/AutoFaceCaptureUI$21;
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
        "Lcom/htc/camera/TakingPictureState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AutoFaceCaptureUI;)V
    .locals 0

    .prologue
    .line 787
    iput-object p1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$21;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

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
            "Lcom/htc/camera/TakingPictureState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/TakingPictureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 791
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$21;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$4500(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takingPictureState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    sget-object v1, Lcom/htc/camera/component/AutoFaceCaptureUI$33;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 821
    :cond_0
    :goto_0
    return-void

    .line 797
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$21;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # invokes: Lcom/htc/camera/component/AutoFaceCaptureUI;->isAutoFaceCaptureEnabled()Z
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$4600(Lcom/htc/camera/component/AutoFaceCaptureUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$21;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # setter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->mPreCaptureAFHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v5}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$4202(Lcom/htc/camera/component/AutoFaceCaptureUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    .line 802
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$21;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # setter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->m_ExpectedPhotoCount:I
    invoke-static {v0, v4}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$4702(Lcom/htc/camera/component/AutoFaceCaptureUI;I)I

    goto :goto_0

    .line 807
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$21;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # setter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->m_ShutterIndex:I
    invoke-static {v0, v4}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$4802(Lcom/htc/camera/component/AutoFaceCaptureUI;I)I

    .line 808
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$21;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # setter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->mCanAutoCapture:Z
    invoke-static {v0, v6}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$3302(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)Z

    .line 809
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$21;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # invokes: Lcom/htc/camera/component/AutoFaceCaptureUI;->showAutoCaptureToast(Z)V
    invoke-static {v0, v3}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$2700(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)V

    .line 810
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$21;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # invokes: Lcom/htc/camera/component/AutoFaceCaptureUI;->showVoiceCommandToast(Z)V
    invoke-static {v0, v3}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$2600(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)V

    goto :goto_0

    .line 814
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$21;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$21;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    const/16 v2, 0x28a3

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/component/AutoFaceCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 815
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$21;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # invokes: Lcom/htc/camera/component/AutoFaceCaptureUI;->showVoiceCommandToast(Z)V
    invoke-static {v0, v6}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$2600(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)V

    .line 816
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$21;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_TOUCH_ON_SCREEN:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$21;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # setter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->mCanAutoCapture:Z
    invoke-static {v0, v6}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$3302(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)Z

    goto :goto_0

    .line 792
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
