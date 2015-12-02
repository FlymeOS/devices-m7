.class Lcom/htc/camera/component/CaptureBar$19;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CaptureBar;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CaptureBar;)V
    .locals 0

    .prologue
    .line 2128
    iput-object p1, p0, Lcom/htc/camera/component/CaptureBar$19;->this$0:Lcom/htc/camera/component/CaptureBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 6
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
    const/4 v5, 0x0

    .line 2132
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2134
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$19;->this$0:Lcom/htc/camera/component/CaptureBar;

    const/4 v1, 0x1

    # invokes: Lcom/htc/camera/component/CaptureBar;->showCaptureBar(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/CaptureBar;->access$3200(Lcom/htc/camera/component/CaptureBar;Z)V

    .line 2135
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$19;->this$0:Lcom/htc/camera/component/CaptureBar;

    # invokes: Lcom/htc/camera/component/CaptureBar;->updateButtonEnableStates()V
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar;->access$2800(Lcom/htc/camera/component/CaptureBar;)V

    .line 2173
    :cond_0
    :goto_0
    return-void

    .line 2139
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$19;->this$0:Lcom/htc/camera/component/CaptureBar;

    invoke-virtual {v0}, Lcom/htc/camera/component/CaptureBar;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 2140
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/RecordingState;->Starting:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2143
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2145
    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getFocusingState()I

    move-result v2

    .line 2146
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$19;->this$0:Lcom/htc/camera/component/CaptureBar;

    invoke-virtual {v0}, Lcom/htc/camera/component/CaptureBar;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    sget-object v3, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v0, v3, :cond_5

    .line 2148
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$19;->this$0:Lcom/htc/camera/component/CaptureBar;

    # getter for: Lcom/htc/camera/component/CaptureBar;->m_IsTakingPicture:Z
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar;->access$3300(Lcom/htc/camera/component/CaptureBar;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2150
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Duration;

    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$19;->this$0:Lcom/htc/camera/component/CaptureBar;

    iget-object v0, v0, Lcom/htc/camera/component/CaptureBar;->isPhotoCaptureButtonPressed:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2152
    :cond_2
    packed-switch v2, :pswitch_data_0

    .line 2171
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$19;->this$0:Lcom/htc/camera/component/CaptureBar;

    # invokes: Lcom/htc/camera/component/CaptureBar;->hideCaptureBar(Z)V
    invoke-static {v0, v5}, Lcom/htc/camera/component/CaptureBar;->access$2300(Lcom/htc/camera/component/CaptureBar;Z)V

    goto :goto_0

    .line 2156
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$19;->this$0:Lcom/htc/camera/component/CaptureBar;

    iget-object v0, v0, Lcom/htc/camera/component/CaptureBar;->isPhotoCaptureButtonPressed:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 2161
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$19;->this$0:Lcom/htc/camera/component/CaptureBar;

    invoke-virtual {v0}, Lcom/htc/camera/component/CaptureBar;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->autoDetectedScene:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/AutoDetectedScene;->ContinuousBurst:Lcom/htc/camera/AutoDetectedScene;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$19;->this$0:Lcom/htc/camera/component/CaptureBar;

    iget-object v0, v0, Lcom/htc/camera/component/CaptureBar;->isPhotoCaptureButtonPressed:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_0

    .line 2166
    :cond_5
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Preparing:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2167
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$19;->this$0:Lcom/htc/camera/component/CaptureBar;

    # invokes: Lcom/htc/camera/component/CaptureBar;->hideCaptureBar(Z)V
    invoke-static {v0, v5}, Lcom/htc/camera/component/CaptureBar;->access$2300(Lcom/htc/camera/component/CaptureBar;Z)V

    goto/16 :goto_0

    .line 2152
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
