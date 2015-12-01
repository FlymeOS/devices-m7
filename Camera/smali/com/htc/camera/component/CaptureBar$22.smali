.class Lcom/htc/camera/component/CaptureBar$22;
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
        "Lcom/htc/camera/RecordingState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CaptureBar;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CaptureBar;)V
    .locals 0

    .prologue
    .line 2205
    iput-object p1, p0, Lcom/htc/camera/component/CaptureBar$22;->this$0:Lcom/htc/camera/component/CaptureBar;

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
            "Lcom/htc/camera/RecordingState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/RecordingState;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2209
    sget-object v1, Lcom/htc/camera/component/CaptureBar$26;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 2236
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$22;->this$0:Lcom/htc/camera/component/CaptureBar;

    # invokes: Lcom/htc/camera/component/CaptureBar;->updateCaptureButtonFunctions()V
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar;->access$3500(Lcom/htc/camera/component/CaptureBar;)V

    .line 2237
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$22;->this$0:Lcom/htc/camera/component/CaptureBar;

    # invokes: Lcom/htc/camera/component/CaptureBar;->updateDefaultCaptureButtonStyle()V
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar;->access$2400(Lcom/htc/camera/component/CaptureBar;)V

    .line 2238
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$22;->this$0:Lcom/htc/camera/component/CaptureBar;

    # invokes: Lcom/htc/camera/component/CaptureBar;->updateMainIndicator()V
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar;->access$2500(Lcom/htc/camera/component/CaptureBar;)V

    .line 2239
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$22;->this$0:Lcom/htc/camera/component/CaptureBar;

    # invokes: Lcom/htc/camera/component/CaptureBar;->updateButtonEnableStates()V
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar;->access$2800(Lcom/htc/camera/component/CaptureBar;)V

    .line 2240
    return-void

    .line 2212
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$22;->this$0:Lcom/htc/camera/component/CaptureBar;

    # getter for: Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerHandles:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar;->access$3600(Lcom/htc/camera/component/CaptureBar;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2213
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$22;->this$0:Lcom/htc/camera/component/CaptureBar;

    # invokes: Lcom/htc/camera/component/CaptureBar;->showRecordingTimer(Z)V
    invoke-static {v0, v3}, Lcom/htc/camera/component/CaptureBar;->access$3700(Lcom/htc/camera/component/CaptureBar;Z)V

    goto :goto_0

    .line 2216
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$22;->this$0:Lcom/htc/camera/component/CaptureBar;

    const-wide/16 v1, 0x0

    # invokes: Lcom/htc/camera/component/CaptureBar;->onElapsedRecordingSecondsChanged(J)V
    invoke-static {v0, v1, v2}, Lcom/htc/camera/component/CaptureBar;->access$2700(Lcom/htc/camera/component/CaptureBar;J)V

    .line 2217
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$22;->this$0:Lcom/htc/camera/component/CaptureBar;

    # invokes: Lcom/htc/camera/component/CaptureBar;->showCaptureBar(Z)V
    invoke-static {v0, v3}, Lcom/htc/camera/component/CaptureBar;->access$3200(Lcom/htc/camera/component/CaptureBar;Z)V

    .line 2218
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$22;->this$0:Lcom/htc/camera/component/CaptureBar;

    # getter for: Lcom/htc/camera/component/CaptureBar;->isVideoButtonClicked:Lcom/htc/camera/property/Property;
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar;->access$800(Lcom/htc/camera/component/CaptureBar;)Lcom/htc/camera/property/Property;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2221
    :pswitch_3
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$22;->this$0:Lcom/htc/camera/component/CaptureBar;

    # getter for: Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerHandles:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar;->access$3600(Lcom/htc/camera/component/CaptureBar;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2222
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$22;->this$0:Lcom/htc/camera/component/CaptureBar;

    # invokes: Lcom/htc/camera/component/CaptureBar;->setPrimaryButtonHighlightState(ZZ)V
    invoke-static {v0, v3, v3}, Lcom/htc/camera/component/CaptureBar;->access$3800(Lcom/htc/camera/component/CaptureBar;ZZ)V

    goto :goto_0

    .line 2225
    :pswitch_4
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$22;->this$0:Lcom/htc/camera/component/CaptureBar;

    # getter for: Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerHandles:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar;->access$3600(Lcom/htc/camera/component/CaptureBar;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2226
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$22;->this$0:Lcom/htc/camera/component/CaptureBar;

    # invokes: Lcom/htc/camera/component/CaptureBar;->setPrimaryButtonHighlightState(ZZ)V
    invoke-static {v0, v3, v3}, Lcom/htc/camera/component/CaptureBar;->access$3800(Lcom/htc/camera/component/CaptureBar;ZZ)V

    .line 2228
    :cond_1
    :pswitch_5
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$22;->this$0:Lcom/htc/camera/component/CaptureBar;

    # getter for: Lcom/htc/camera/component/CaptureBar;->m_RecordingTimerHandles:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar;->access$3600(Lcom/htc/camera/component/CaptureBar;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 2229
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$22;->this$0:Lcom/htc/camera/component/CaptureBar;

    # invokes: Lcom/htc/camera/component/CaptureBar;->showRecordingTimer(Z)V
    invoke-static {v0, v3}, Lcom/htc/camera/component/CaptureBar;->access$3700(Lcom/htc/camera/component/CaptureBar;Z)V

    .line 2230
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$22;->this$0:Lcom/htc/camera/component/CaptureBar;

    # getter for: Lcom/htc/camera/component/CaptureBar;->isVideoButtonClicked:Lcom/htc/camera/property/Property;
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar;->access$800(Lcom/htc/camera/component/CaptureBar;)Lcom/htc/camera/property/Property;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2209
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method
