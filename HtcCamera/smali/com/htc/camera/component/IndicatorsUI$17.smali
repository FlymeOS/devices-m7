.class Lcom/htc/camera/component/IndicatorsUI$17;
.super Lcom/htc/camera/trigger/Trigger;
.source "IndicatorsUI.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/IndicatorsUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/IndicatorsUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 536
    iput-object p1, p0, Lcom/htc/camera/component/IndicatorsUI$17;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$17;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    # getter for: Lcom/htc/camera/component/IndicatorsUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;
    invoke-static {v0}, Lcom/htc/camera/component/IndicatorsUI;->access$1600(Lcom/htc/camera/component/IndicatorsUI;)Lcom/htc/camera/zoe/IZoeController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$17;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    # getter for: Lcom/htc/camera/component/IndicatorsUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;
    invoke-static {v0}, Lcom/htc/camera/component/IndicatorsUI;->access$1600(Lcom/htc/camera/component/IndicatorsUI;)Lcom/htc/camera/zoe/IZoeController;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$17;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    const/4 v1, 0x0

    # invokes: Lcom/htc/camera/component/IndicatorsUI;->hideRemainingCounter(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/IndicatorsUI;->access$600(Lcom/htc/camera/component/IndicatorsUI;Z)V

    .line 543
    :cond_0
    return-void
.end method
