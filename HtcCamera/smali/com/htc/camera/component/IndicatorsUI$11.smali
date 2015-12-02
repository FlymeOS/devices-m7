.class Lcom/htc/camera/component/IndicatorsUI$11;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/IndicatorsUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/IndicatorsUI;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/htc/camera/component/IndicatorsUI$11;->this$0:Lcom/htc/camera/component/IndicatorsUI;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 407
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 410
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$11;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/IndicatorsUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 411
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$11;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    # getter for: Lcom/htc/camera/component/IndicatorsUI;->m_Is1stTapCaptureToastShown:Z
    invoke-static {v0}, Lcom/htc/camera/component/IndicatorsUI;->access$700(Lcom/htc/camera/component/IndicatorsUI;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 416
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$11;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    # invokes: Lcom/htc/camera/component/IndicatorsUI;->updateTapCaptureBubbleToast(ZZ)V
    invoke-static {v0, v3, v3}, Lcom/htc/camera/component/IndicatorsUI;->access$1500(Lcom/htc/camera/component/IndicatorsUI;ZZ)V

    .line 417
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$11;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    # invokes: Lcom/htc/camera/component/IndicatorsUI;->updateSelfTimerIndicator()V
    invoke-static {v0}, Lcom/htc/camera/component/IndicatorsUI;->access$1300(Lcom/htc/camera/component/IndicatorsUI;)V

    .line 418
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$11;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    # invokes: Lcom/htc/camera/component/IndicatorsUI;->updateMuteIndicator()V
    invoke-static {v0}, Lcom/htc/camera/component/IndicatorsUI;->access$1400(Lcom/htc/camera/component/IndicatorsUI;)V

    .line 419
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$11;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI$11;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    invoke-virtual {v1}, Lcom/htc/camera/component/IndicatorsUI;->getBaseLayout()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Lcom/htc/camera/component/IndicatorsUI;->showUI(Landroid/view/View;ZZ)V

    .line 420
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$11;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    # getter for: Lcom/htc/camera/component/IndicatorsUI;->m_RemainingCounterState:Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;
    invoke-static {v0}, Lcom/htc/camera/component/IndicatorsUI;->access$1100(Lcom/htc/camera/component/IndicatorsUI;)Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;->StaysVisible:Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;

    if-ne v0, v1, :cond_0

    .line 421
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$11;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    # invokes: Lcom/htc/camera/component/IndicatorsUI;->showRemainingCounter(Z)V
    invoke-static {v0, v2}, Lcom/htc/camera/component/IndicatorsUI;->access$1200(Lcom/htc/camera/component/IndicatorsUI;Z)V

    goto :goto_0

    .line 425
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$11;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    # invokes: Lcom/htc/camera/component/IndicatorsUI;->updateTapCaptureBubbleToast(ZZ)V
    invoke-static {v0, v2, v3}, Lcom/htc/camera/component/IndicatorsUI;->access$1500(Lcom/htc/camera/component/IndicatorsUI;ZZ)V

    .line 426
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$11;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    # invokes: Lcom/htc/camera/component/IndicatorsUI;->hideRemainingCounter(Z)V
    invoke-static {v0, v2}, Lcom/htc/camera/component/IndicatorsUI;->access$600(Lcom/htc/camera/component/IndicatorsUI;Z)V

    .line 427
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$11;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI$11;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    invoke-virtual {v1}, Lcom/htc/camera/component/IndicatorsUI;->getBaseLayout()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/htc/camera/component/IndicatorsUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0
.end method
