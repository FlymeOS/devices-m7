.class Lcom/htc/camera/component/FocusIndicator$5;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/FocusIndicator;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/FocusIndicator;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/htc/camera/component/FocusIndicator$5;->this$0:Lcom/htc/camera/component/FocusIndicator;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 370
    const/4 v1, 0x1

    .line 371
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator$5;->this$0:Lcom/htc/camera/component/FocusIndicator;

    # getter for: Lcom/htc/camera/component/FocusIndicator;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;
    invoke-static {v0}, Lcom/htc/camera/component/FocusIndicator;->access$700(Lcom/htc/camera/component/FocusIndicator;)Lcom/htc/camera/capturemode/ICaptureModeManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator$5;->this$0:Lcom/htc/camera/component/FocusIndicator;

    # getter for: Lcom/htc/camera/component/FocusIndicator;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;
    invoke-static {v0}, Lcom/htc/camera/component/FocusIndicator;->access$700(Lcom/htc/camera/component/FocusIndicator;)Lcom/htc/camera/capturemode/ICaptureModeManager;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    .line 374
    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/htc/camera/capturemode/CaptureMode;->panoramaType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/panorama/PanoramaType;->PanoramaPlus:Lcom/htc/camera/panorama/PanoramaType;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator$5;->this$0:Lcom/htc/camera/component/FocusIndicator;

    invoke-virtual {v0}, Lcom/htc/camera/component/FocusIndicator;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/TakingPictureState;->TakingPicture:Lcom/htc/camera/TakingPictureState;

    if-ne v0, v2, :cond_1

    .line 377
    const/4 v0, 0x0

    .line 380
    :goto_0
    if-eqz v0, :cond_0

    .line 381
    iget-object v1, p0, Lcom/htc/camera/component/FocusIndicator$5;->this$0:Lcom/htc/camera/component/FocusIndicator;

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    # invokes: Lcom/htc/camera/component/FocusIndicator;->showFocusLockToast(Z)V
    invoke-static {v1, v0}, Lcom/htc/camera/component/FocusIndicator;->access$800(Lcom/htc/camera/component/FocusIndicator;Z)V

    .line 382
    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method
