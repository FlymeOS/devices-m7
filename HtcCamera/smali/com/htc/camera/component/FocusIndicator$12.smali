.class Lcom/htc/camera/component/FocusIndicator$12;
.super Ljava/lang/Object;
.source "FocusIndicator.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/FocusIndicator;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/FocusIndicator;)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/htc/camera/component/FocusIndicator$12;->this$0:Lcom/htc/camera/component/FocusIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 2
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
    .line 479
    sget-object v1, Lcom/htc/camera/component/FocusIndicator$15;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 483
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator$12;->this$0:Lcom/htc/camera/component/FocusIndicator;

    # invokes: Lcom/htc/camera/component/FocusIndicator;->hideFocusIndicator()V
    invoke-static {v0}, Lcom/htc/camera/component/FocusIndicator;->access$000(Lcom/htc/camera/component/FocusIndicator;)V

    goto :goto_0

    .line 486
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator$12;->this$0:Lcom/htc/camera/component/FocusIndicator;

    # getter for: Lcom/htc/camera/component/FocusIndicator;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;
    invoke-static {v0}, Lcom/htc/camera/component/FocusIndicator;->access$700(Lcom/htc/camera/component/FocusIndicator;)Lcom/htc/camera/capturemode/ICaptureModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator$12;->this$0:Lcom/htc/camera/component/FocusIndicator;

    # getter for: Lcom/htc/camera/component/FocusIndicator;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;
    invoke-static {v0}, Lcom/htc/camera/component/FocusIndicator;->access$700(Lcom/htc/camera/component/FocusIndicator;)Lcom/htc/camera/capturemode/ICaptureModeManager;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    .line 489
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/htc/camera/capturemode/CaptureMode;->panoramaType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/panorama/PanoramaType;->PanoramaPlus:Lcom/htc/camera/panorama/PanoramaType;

    if-ne v0, v1, :cond_0

    .line 491
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator$12;->this$0:Lcom/htc/camera/component/FocusIndicator;

    const/4 v1, 0x0

    # invokes: Lcom/htc/camera/component/FocusIndicator;->showFocusLockToast(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/FocusIndicator;->access$800(Lcom/htc/camera/component/FocusIndicator;Z)V

    goto :goto_0

    .line 479
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
