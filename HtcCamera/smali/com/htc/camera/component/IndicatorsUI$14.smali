.class Lcom/htc/camera/component/IndicatorsUI$14;
.super Lcom/htc/camera/trigger/Trigger;
.source "IndicatorsUI.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/IndicatorsUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/IndicatorsUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 493
    iput-object p1, p0, Lcom/htc/camera/component/IndicatorsUI$14;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 498
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$14;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    # invokes: Lcom/htc/camera/component/IndicatorsUI;->updateSelfTimerIndicator()V
    invoke-static {v0}, Lcom/htc/camera/component/IndicatorsUI;->access$1300(Lcom/htc/camera/component/IndicatorsUI;)V

    .line 499
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$14;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    # invokes: Lcom/htc/camera/component/IndicatorsUI;->updateMuteIndicator()V
    invoke-static {v0}, Lcom/htc/camera/component/IndicatorsUI;->access$1400(Lcom/htc/camera/component/IndicatorsUI;)V

    .line 502
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$14;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI$14;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    invoke-virtual {v1}, Lcom/htc/camera/component/IndicatorsUI;->getBaseLayout()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/htc/camera/component/IndicatorsUI;->showUI(Landroid/view/View;ZZ)V

    .line 507
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$14;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    # invokes: Lcom/htc/camera/component/IndicatorsUI;->showIndicators()V
    invoke-static {v0}, Lcom/htc/camera/component/IndicatorsUI;->access$1000(Lcom/htc/camera/component/IndicatorsUI;)V

    .line 510
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$14;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    # invokes: Lcom/htc/camera/component/IndicatorsUI;->showRemainingCounter(Z)V
    invoke-static {v0, v2}, Lcom/htc/camera/component/IndicatorsUI;->access$1200(Lcom/htc/camera/component/IndicatorsUI;Z)V

    .line 513
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$14;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    # getter for: Lcom/htc/camera/component/IndicatorsUI;->m_Is1stTapCaptureToastShown:Z
    invoke-static {v0}, Lcom/htc/camera/component/IndicatorsUI;->access$700(Lcom/htc/camera/component/IndicatorsUI;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$14;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    # invokes: Lcom/htc/camera/component/IndicatorsUI;->updateTapCaptureBubbleToast(ZZ)V
    invoke-static {v0, v2, v2}, Lcom/htc/camera/component/IndicatorsUI;->access$1500(Lcom/htc/camera/component/IndicatorsUI;ZZ)V

    .line 515
    :cond_0
    return-void
.end method
