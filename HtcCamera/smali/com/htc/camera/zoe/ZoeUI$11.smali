.class Lcom/htc/camera/zoe/ZoeUI$11;
.super Ljava/lang/Object;
.source "ZoeUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/zoe/ZoeUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/zoe/ZoeUI;)V
    .locals 0

    .prologue
    .line 959
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeUI$11;->this$0:Lcom/htc/camera/zoe/ZoeUI;

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

    const/4 v2, 0x1

    .line 963
    sget-object v1, Lcom/htc/camera/zoe/ZoeUI$22;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1023
    :cond_0
    :goto_0
    return-void

    .line 967
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$11;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    iget-object v0, v0, Lcom/htc/camera/zoe/ZoeUI;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$11;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # getter for: Lcom/htc/camera/zoe/ZoeUI;->m_IsWirelessDisplayGestureDisabled:Z
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$1800(Lcom/htc/camera/zoe/ZoeUI;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 969
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$11;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # setter for: Lcom/htc/camera/zoe/ZoeUI;->m_IsWirelessDisplayGestureDisabled:Z
    invoke-static {v0, v2}, Lcom/htc/camera/zoe/ZoeUI;->access$1802(Lcom/htc/camera/zoe/ZoeUI;Z)Z

    .line 970
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$11;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    sget-object v1, Lcom/htc/camera/RecordingState;->Starting:Lcom/htc/camera/RecordingState;

    # invokes: Lcom/htc/camera/zoe/ZoeUI;->broadcastZoeStateIntent(Lcom/htc/camera/RecordingState;)V
    invoke-static {v0, v1}, Lcom/htc/camera/zoe/ZoeUI;->access$1900(Lcom/htc/camera/zoe/ZoeUI;Lcom/htc/camera/RecordingState;)V

    .line 974
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$11;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    iget-object v0, v0, Lcom/htc/camera/zoe/ZoeUI;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->requestAudioFocusWhileRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$11;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # getter for: Lcom/htc/camera/zoe/ZoeUI;->m_AudioManager:Lcom/htc/camera/IAudioManager;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$700(Lcom/htc/camera/zoe/ZoeUI;)Lcom/htc/camera/IAudioManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$11;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # getter for: Lcom/htc/camera/zoe/ZoeUI;->m_HasAudioFocus:Z
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$800(Lcom/htc/camera/zoe/ZoeUI;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 979
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$11;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # getter for: Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$2000(Lcom/htc/camera/zoe/ZoeUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPropertyChanged() - Request audio focus"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$11;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # getter for: Lcom/htc/camera/zoe/ZoeUI;->m_AudioManager:Lcom/htc/camera/IAudioManager;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$700(Lcom/htc/camera/zoe/ZoeUI;)Lcom/htc/camera/IAudioManager;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/htc/camera/IAudioManager;->requestAudioFocus(I)V

    .line 981
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$11;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # setter for: Lcom/htc/camera/zoe/ZoeUI;->m_HasAudioFocus:Z
    invoke-static {v0, v2}, Lcom/htc/camera/zoe/ZoeUI;->access$802(Lcom/htc/camera/zoe/ZoeUI;Z)Z

    .line 985
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$11;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # setter for: Lcom/htc/camera/zoe/ZoeUI;->m_IsCaptureStartSucceeded:Z
    invoke-static {v0, v3}, Lcom/htc/camera/zoe/ZoeUI;->access$2102(Lcom/htc/camera/zoe/ZoeUI;Z)Z

    goto :goto_0

    .line 988
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$11;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    iget-object v0, v0, Lcom/htc/camera/zoe/ZoeUI;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$11;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # getter for: Lcom/htc/camera/zoe/ZoeUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$2200(Lcom/htc/camera/zoe/ZoeUI;)Lcom/htc/camera/ICaptureBar;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$11;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # getter for: Lcom/htc/camera/zoe/ZoeUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$2200(Lcom/htc/camera/zoe/ZoeUI;)Lcom/htc/camera/ICaptureBar;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/ICaptureBar;->isPhotoCaptureButtonPressed:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$11;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # getter for: Lcom/htc/camera/zoe/ZoeUI;->m_IsCaptureButtonReleasedBeforeCapture:Z
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$2300(Lcom/htc/camera/zoe/ZoeUI;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 992
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$11;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # getter for: Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$2400(Lcom/htc/camera/zoe/ZoeUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPropertyChanged() - Capture is not triggered by capture button, change to single shot"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$11;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # setter for: Lcom/htc/camera/zoe/ZoeUI;->m_IsCaptureButtonReleasedBeforeCapture:Z
    invoke-static {v0, v2}, Lcom/htc/camera/zoe/ZoeUI;->access$2302(Lcom/htc/camera/zoe/ZoeUI;Z)Z

    .line 994
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$11;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    iget-object v0, v0, Lcom/htc/camera/zoe/ZoeUI;->isSingleShotMode:Lcom/htc/camera/property/a;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI$11;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # getter for: Lcom/htc/camera/zoe/ZoeUI;->propertyOwnerKey:Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/camera/zoe/ZoeUI;->access$2500(Lcom/htc/camera/zoe/ZoeUI;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 999
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$11;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    iget-object v0, v0, Lcom/htc/camera/zoe/ZoeUI;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$11;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # getter for: Lcom/htc/camera/zoe/ZoeUI;->m_IsCaptureStartSucceeded:Z
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$2100(Lcom/htc/camera/zoe/ZoeUI;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1001
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$11;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # getter for: Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$2600(Lcom/htc/camera/zoe/ZoeUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPropertyChanged() - Capture failed or cancelled"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$11;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # invokes: Lcom/htc/camera/zoe/ZoeUI;->onCaptureCompleted()V
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$2700(Lcom/htc/camera/zoe/ZoeUI;)V

    .line 1006
    :cond_4
    :pswitch_3
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$11;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # getter for: Lcom/htc/camera/zoe/ZoeUI;->m_IsWirelessDisplayGestureDisabled:Z
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$1800(Lcom/htc/camera/zoe/ZoeUI;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1008
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$11;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # setter for: Lcom/htc/camera/zoe/ZoeUI;->m_IsWirelessDisplayGestureDisabled:Z
    invoke-static {v0, v3}, Lcom/htc/camera/zoe/ZoeUI;->access$1802(Lcom/htc/camera/zoe/ZoeUI;Z)Z

    .line 1009
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$11;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    sget-object v1, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    # invokes: Lcom/htc/camera/zoe/ZoeUI;->broadcastZoeStateIntent(Lcom/htc/camera/RecordingState;)V
    invoke-static {v0, v1}, Lcom/htc/camera/zoe/ZoeUI;->access$1900(Lcom/htc/camera/zoe/ZoeUI;Lcom/htc/camera/RecordingState;)V

    .line 1013
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$11;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # getter for: Lcom/htc/camera/zoe/ZoeUI;->m_HasAudioFocus:Z
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$800(Lcom/htc/camera/zoe/ZoeUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->requestAudioFocusInVideoMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$11;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # getter for: Lcom/htc/camera/zoe/ZoeUI;->m_AudioManager:Lcom/htc/camera/IAudioManager;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$700(Lcom/htc/camera/zoe/ZoeUI;)Lcom/htc/camera/IAudioManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$11;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # getter for: Lcom/htc/camera/zoe/ZoeUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$2800(Lcom/htc/camera/zoe/ZoeUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPropertyChanged() - Abandon audio focus"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$11;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # getter for: Lcom/htc/camera/zoe/ZoeUI;->m_AudioManager:Lcom/htc/camera/IAudioManager;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$700(Lcom/htc/camera/zoe/ZoeUI;)Lcom/htc/camera/IAudioManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/camera/IAudioManager;->abandonAudioFocus()V

    .line 1019
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$11;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # setter for: Lcom/htc/camera/zoe/ZoeUI;->m_HasAudioFocus:Z
    invoke-static {v0, v3}, Lcom/htc/camera/zoe/ZoeUI;->access$802(Lcom/htc/camera/zoe/ZoeUI;Z)Z

    goto/16 :goto_0

    .line 963
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
