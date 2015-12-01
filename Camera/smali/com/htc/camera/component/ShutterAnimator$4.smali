.class Lcom/htc/camera/component/ShutterAnimator$4;
.super Ljava/lang/Object;
.source "ShutterAnimator.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/ShutterAnimator;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ShutterAnimator;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/htc/camera/component/ShutterAnimator$4;->this$0:Lcom/htc/camera/component/ShutterAnimator;

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
            "Lcom/htc/camera/TakingPictureState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/TakingPictureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    sget-object v1, Lcom/htc/camera/component/ShutterAnimator$6;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 245
    :pswitch_0
    sget-object v1, Lcom/htc/camera/component/ShutterAnimator$6;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator$4;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    invoke-virtual {v0}, Lcom/htc/camera/component/ShutterAnimator;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 249
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator$4;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    # getter for: Lcom/htc/camera/component/ShutterAnimator;->m_PreviewFilterRendererHandle:Lcom/htc/camera/Handle;
    invoke-static {v0}, Lcom/htc/camera/component/ShutterAnimator;->access$600(Lcom/htc/camera/component/ShutterAnimator;)Lcom/htc/camera/Handle;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator$4;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    # getter for: Lcom/htc/camera/component/ShutterAnimator;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;
    invoke-static {v0}, Lcom/htc/camera/component/ShutterAnimator;->access$700(Lcom/htc/camera/component/ShutterAnimator;)Lcom/htc/camera/IViewFinder3D;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator$4;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    iget-object v1, p0, Lcom/htc/camera/component/ShutterAnimator$4;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    # getter for: Lcom/htc/camera/component/ShutterAnimator;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;
    invoke-static {v1}, Lcom/htc/camera/component/ShutterAnimator;->access$700(Lcom/htc/camera/component/ShutterAnimator;)Lcom/htc/camera/IViewFinder3D;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/ShutterAnimator$4;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    # getter for: Lcom/htc/camera/component/ShutterAnimator;->m_PreviewFilterRenderer:Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;
    invoke-static {v2}, Lcom/htc/camera/component/ShutterAnimator;->access$800(Lcom/htc/camera/component/ShutterAnimator;)Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/camera/IViewFinder3D;->addPreviewFilterRenderer(Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;)Lcom/htc/camera/Handle;

    move-result-object v1

    # setter for: Lcom/htc/camera/component/ShutterAnimator;->m_PreviewFilterRendererHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/component/ShutterAnimator;->access$602(Lcom/htc/camera/component/ShutterAnimator;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    goto :goto_0

    .line 257
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator$4;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    # getter for: Lcom/htc/camera/component/ShutterAnimator;->m_IsRunningFlashAnimation:Z
    invoke-static {v0}, Lcom/htc/camera/component/ShutterAnimator;->access$900(Lcom/htc/camera/component/ShutterAnimator;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator$4;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    # getter for: Lcom/htc/camera/component/ShutterAnimator;->m_PreviewFilterRendererHandle:Lcom/htc/camera/Handle;
    invoke-static {v0}, Lcom/htc/camera/component/ShutterAnimator;->access$600(Lcom/htc/camera/component/ShutterAnimator;)Lcom/htc/camera/Handle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator$4;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    # getter for: Lcom/htc/camera/component/ShutterAnimator;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;
    invoke-static {v0}, Lcom/htc/camera/component/ShutterAnimator;->access$700(Lcom/htc/camera/component/ShutterAnimator;)Lcom/htc/camera/IViewFinder3D;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/ShutterAnimator$4;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    # getter for: Lcom/htc/camera/component/ShutterAnimator;->m_PreviewFilterRendererHandle:Lcom/htc/camera/Handle;
    invoke-static {v1}, Lcom/htc/camera/component/ShutterAnimator;->access$600(Lcom/htc/camera/component/ShutterAnimator;)Lcom/htc/camera/Handle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/IViewFinder3D;->removePreviewFilterRenderer(Lcom/htc/camera/Handle;)V

    .line 260
    iget-object v0, p0, Lcom/htc/camera/component/ShutterAnimator$4;->this$0:Lcom/htc/camera/component/ShutterAnimator;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/ShutterAnimator;->m_PreviewFilterRendererHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/component/ShutterAnimator;->access$602(Lcom/htc/camera/component/ShutterAnimator;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    goto :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 245
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
