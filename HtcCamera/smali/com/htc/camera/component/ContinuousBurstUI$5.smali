.class Lcom/htc/camera/component/ContinuousBurstUI$5;
.super Ljava/lang/Object;
.source "ContinuousBurstUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/ContinuousBurstUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ContinuousBurstUI;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/htc/camera/component/ContinuousBurstUI$5;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

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
    const/16 v6, 0x2712

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 415
    sget-object v3, Lcom/htc/camera/component/ContinuousBurstUI$8;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 420
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$5;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # invokes: Lcom/htc/camera/component/ContinuousBurstUI;->canUseContinuousBurst()Z
    invoke-static {v0}, Lcom/htc/camera/component/ContinuousBurstUI;->access$2200(Lcom/htc/camera/component/ContinuousBurstUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$5;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # setter for: Lcom/htc/camera/component/ContinuousBurstUI;->m_IsShutterReceived:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/ContinuousBurstUI;->access$2302(Lcom/htc/camera/component/ContinuousBurstUI;Z)Z

    .line 426
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$5;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    .line 428
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$5;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # getter for: Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/ContinuousBurstUI;->access$2400(Lcom/htc/camera/component/ContinuousBurstUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentScene = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/htc/camera/HTCCamera;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v5}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v0, v3, Lcom/htc/camera/HTCCamera;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/camera/effect/SmartSceneDetectorScene;

    if-eqz v0, :cond_5

    .line 431
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$5;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # getter for: Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/ContinuousBurstUI;->access$2500(Lcom/htc/camera/component/ContinuousBurstUI;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "takingPictureState.onPropertyChanged() - currentScene == SmartSceneDetectorScene"

    invoke-static {v0, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$5;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isPhotoCaptureButtonPressed:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 456
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$5;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # getter for: Lcom/htc/camera/component/ContinuousBurstUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/ContinuousBurstUI;->access$2600(Lcom/htc/camera/component/ContinuousBurstUI;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "Press capture button"

    invoke-static {v0, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$5;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # getter for: Lcom/htc/camera/component/ContinuousBurstUI;->isEntered:Lcom/htc/camera/property/Property;
    invoke-static {v0}, Lcom/htc/camera/component/ContinuousBurstUI;->access$2700(Lcom/htc/camera/component/ContinuousBurstUI;)Lcom/htc/camera/property/Property;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 462
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$5;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/ContinuousBurstUI;->enter()V

    .line 465
    iget-object v0, v3, Lcom/htc/camera/HTCCamera;->isPhotoCaptureButtonPressed:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$5;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    invoke-virtual {v0, v6}, Lcom/htc/camera/component/ContinuousBurstUI;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 466
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$5;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # invokes: Lcom/htc/camera/component/ContinuousBurstUI;->startLongPressTimer()V
    invoke-static {v0}, Lcom/htc/camera/component/ContinuousBurstUI;->access$1600(Lcom/htc/camera/component/ContinuousBurstUI;)V

    .line 469
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$5;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # invokes: Lcom/htc/camera/component/ContinuousBurstUI;->updateBurstMode(I)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/ContinuousBurstUI;->access$1900(Lcom/htc/camera/component/ContinuousBurstUI;I)V

    .line 472
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$5;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # getter for: Lcom/htc/camera/component/ContinuousBurstUI;->m_State:I
    invoke-static {v0}, Lcom/htc/camera/component/ContinuousBurstUI;->access$600(Lcom/htc/camera/component/ContinuousBurstUI;)I

    move-result v0

    if-nez v0, :cond_3

    .line 474
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$5;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # setter for: Lcom/htc/camera/component/ContinuousBurstUI;->m_CanCapture:Z
    invoke-static {v0, v2}, Lcom/htc/camera/component/ContinuousBurstUI;->access$2002(Lcom/htc/camera/component/ContinuousBurstUI;Z)Z

    .line 475
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$5;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # setter for: Lcom/htc/camera/component/ContinuousBurstUI;->m_State:I
    invoke-static {v0, v2}, Lcom/htc/camera/component/ContinuousBurstUI;->access$602(Lcom/htc/camera/component/ContinuousBurstUI;I)I

    .line 480
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$5;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    const/4 v1, -0x1

    # setter for: Lcom/htc/camera/component/ContinuousBurstUI;->m_ExpectedPhotoCount:I
    invoke-static {v0, v1}, Lcom/htc/camera/component/ContinuousBurstUI;->access$2802(Lcom/htc/camera/component/ContinuousBurstUI;I)I

    goto/16 :goto_0

    :cond_4
    move v1, v2

    .line 435
    goto :goto_1

    .line 438
    :cond_5
    iget-object v0, v3, Lcom/htc/camera/HTCCamera;->autoDetectedScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/AutoDetectedScene;

    .line 439
    sget-object v4, Lcom/htc/camera/component/ContinuousBurstUI$8;->$SwitchMap$com$htc$camera$AutoDetectedScene:[I

    invoke-virtual {v0}, Lcom/htc/camera/AutoDetectedScene;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 442
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$5;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/ContinuousBurstUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isPhotoCaptureButtonPressed:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    .line 446
    goto/16 :goto_1

    .line 448
    :pswitch_2
    const/4 v0, 0x2

    move v1, v0

    .line 449
    goto/16 :goto_1

    .line 486
    :pswitch_3
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$5;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    invoke-virtual {v0, v6}, Lcom/htc/camera/component/ContinuousBurstUI;->removeMessages(I)V

    goto/16 :goto_0

    .line 491
    :pswitch_4
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$5;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # getter for: Lcom/htc/camera/component/ContinuousBurstUI;->isEntered:Lcom/htc/camera/property/Property;
    invoke-static {v0}, Lcom/htc/camera/component/ContinuousBurstUI;->access$2700(Lcom/htc/camera/component/ContinuousBurstUI;)Lcom/htc/camera/property/Property;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$5;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # getter for: Lcom/htc/camera/component/ContinuousBurstUI;->m_BurstMode:I
    invoke-static {v0}, Lcom/htc/camera/component/ContinuousBurstUI;->access$1500(Lcom/htc/camera/component/ContinuousBurstUI;)I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 494
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$5;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # setter for: Lcom/htc/camera/component/ContinuousBurstUI;->m_State:I
    invoke-static {v0, v1}, Lcom/htc/camera/component/ContinuousBurstUI;->access$602(Lcom/htc/camera/component/ContinuousBurstUI;I)I

    .line 495
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$5;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/ContinuousBurstUI;->exit()V

    goto/16 :goto_0

    .line 415
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 439
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
