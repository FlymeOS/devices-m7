.class Lcom/htc/camera/component/IndicatorsUI$27;
.super Ljava/lang/Object;
.source "IndicatorsUI.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/capturemode/CaptureMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/IndicatorsUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/IndicatorsUI;)V
    .locals 0

    .prologue
    .line 659
    iput-object p1, p0, Lcom/htc/camera/component/IndicatorsUI$27;->this$0:Lcom/htc/camera/component/IndicatorsUI;

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
            "Lcom/htc/camera/capturemode/CaptureMode;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/capturemode/CaptureMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 663
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$27;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    sget-object v1, Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;->Initial:Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;

    # setter for: Lcom/htc/camera/component/IndicatorsUI;->m_RemainingCounterState:Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;
    invoke-static {v0, v1}, Lcom/htc/camera/component/IndicatorsUI;->access$1102(Lcom/htc/camera/component/IndicatorsUI;Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;)Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;

    .line 664
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$27;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/IndicatorsUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isSwitchingCamera:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$27;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/IndicatorsUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isSwitchingCameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$27;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    const/4 v1, 0x1

    # invokes: Lcom/htc/camera/component/IndicatorsUI;->showRemainingCounter(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/IndicatorsUI;->access$1200(Lcom/htc/camera/component/IndicatorsUI;Z)V

    .line 669
    :cond_0
    return-void
.end method
