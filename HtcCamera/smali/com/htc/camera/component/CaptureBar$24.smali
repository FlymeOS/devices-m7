.class Lcom/htc/camera/component/CaptureBar$24;
.super Ljava/lang/Object;
.source "CaptureBar.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/CaptureBar;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CaptureBar;)V
    .locals 0

    .prologue
    .line 2256
    iput-object p1, p0, Lcom/htc/camera/component/CaptureBar$24;->this$0:Lcom/htc/camera/component/CaptureBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 4
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
    const/4 v3, 0x0

    .line 2260
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$24;->this$0:Lcom/htc/camera/component/CaptureBar;

    invoke-virtual {v0}, Lcom/htc/camera/component/CaptureBar;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 2261
    sget-object v2, Lcom/htc/camera/component/CaptureBar$26;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 2296
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$24;->this$0:Lcom/htc/camera/component/CaptureBar;

    # invokes: Lcom/htc/camera/component/CaptureBar;->updateButtonEnableStates()V
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar;->access$2800(Lcom/htc/camera/component/CaptureBar;)V

    .line 2297
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$24;->this$0:Lcom/htc/camera/component/CaptureBar;

    # invokes: Lcom/htc/camera/component/CaptureBar;->updateMainIndicator()V
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar;->access$2500(Lcom/htc/camera/component/CaptureBar;)V

    .line 2298
    return-void

    .line 2264
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$24;->this$0:Lcom/htc/camera/component/CaptureBar;

    # setter for: Lcom/htc/camera/component/CaptureBar;->m_IsTakingPicture:Z
    invoke-static {v0, v3}, Lcom/htc/camera/component/CaptureBar;->access$3302(Lcom/htc/camera/component/CaptureBar;Z)Z

    goto :goto_0

    .line 2269
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$24;->this$0:Lcom/htc/camera/component/CaptureBar;

    # setter for: Lcom/htc/camera/component/CaptureBar;->m_IsTakingPicture:Z
    invoke-static {v0, v3}, Lcom/htc/camera/component/CaptureBar;->access$3302(Lcom/htc/camera/component/CaptureBar;Z)Z

    .line 2272
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$24;->this$0:Lcom/htc/camera/component/CaptureBar;

    # invokes: Lcom/htc/camera/component/CaptureBar;->unlock3A()V
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar;->access$1800(Lcom/htc/camera/component/CaptureBar;)V

    goto :goto_0

    .line 2277
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$24;->this$0:Lcom/htc/camera/component/CaptureBar;

    invoke-virtual {v0}, Lcom/htc/camera/component/CaptureBar;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v0, v2, :cond_2

    .line 2279
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$24;->this$0:Lcom/htc/camera/component/CaptureBar;

    invoke-virtual {v0}, Lcom/htc/camera/component/CaptureBar;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->isFastShotToShotMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->autoDetectedScene:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/AutoDetectedScene;->ContinuousBurst:Lcom/htc/camera/AutoDetectedScene;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2280
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$24;->this$0:Lcom/htc/camera/component/CaptureBar;

    # invokes: Lcom/htc/camera/component/CaptureBar;->showCaptureBar(Z)V
    invoke-static {v0, v3}, Lcom/htc/camera/component/CaptureBar;->access$3200(Lcom/htc/camera/component/CaptureBar;Z)V

    .line 2286
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$24;->this$0:Lcom/htc/camera/component/CaptureBar;

    const/4 v1, 0x1

    # setter for: Lcom/htc/camera/component/CaptureBar;->m_IsTakingPicture:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/CaptureBar;->access$3302(Lcom/htc/camera/component/CaptureBar;Z)Z

    goto :goto_0

    .line 2281
    :cond_1
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2282
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$24;->this$0:Lcom/htc/camera/component/CaptureBar;

    # invokes: Lcom/htc/camera/component/CaptureBar;->hideCaptureBar(Z)V
    invoke-static {v0, v3}, Lcom/htc/camera/component/CaptureBar;->access$2300(Lcom/htc/camera/component/CaptureBar;Z)V

    goto :goto_1

    .line 2285
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$24;->this$0:Lcom/htc/camera/component/CaptureBar;

    # invokes: Lcom/htc/camera/component/CaptureBar;->showCaptureBar(Z)V
    invoke-static {v0, v3}, Lcom/htc/camera/component/CaptureBar;->access$3200(Lcom/htc/camera/component/CaptureBar;Z)V

    goto :goto_1

    .line 2291
    :pswitch_3
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$24;->this$0:Lcom/htc/camera/component/CaptureBar;

    invoke-virtual {v0}, Lcom/htc/camera/component/CaptureBar;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v0, v2, :cond_3

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2292
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$24;->this$0:Lcom/htc/camera/component/CaptureBar;

    # invokes: Lcom/htc/camera/component/CaptureBar;->hideCaptureBar(Z)V
    invoke-static {v0, v3}, Lcom/htc/camera/component/CaptureBar;->access$2300(Lcom/htc/camera/component/CaptureBar;Z)V

    .line 2293
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$24;->this$0:Lcom/htc/camera/component/CaptureBar;

    # setter for: Lcom/htc/camera/component/CaptureBar;->m_IsTakingPicture:Z
    invoke-static {v0, v3}, Lcom/htc/camera/component/CaptureBar;->access$3302(Lcom/htc/camera/component/CaptureBar;Z)Z

    goto/16 :goto_0

    .line 2261
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
