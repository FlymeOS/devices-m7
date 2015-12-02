.class Lcom/htc/camera/component/IndicatorsUI$6;
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
        "Lcom/htc/camera/UIState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/IndicatorsUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/IndicatorsUI;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/htc/camera/component/IndicatorsUI$6;->this$0:Lcom/htc/camera/component/IndicatorsUI;

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
            "Lcom/htc/camera/UIState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/UIState;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 311
    sget-object v1, Lcom/htc/camera/component/IndicatorsUI$32;->$SwitchMap$com$htc$camera$UIState:[I

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/UIState;

    invoke-virtual {v0}, Lcom/htc/camera/UIState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 315
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$6;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    # invokes: Lcom/htc/camera/component/IndicatorsUI;->showIndicators()V
    invoke-static {v0}, Lcom/htc/camera/component/IndicatorsUI;->access$1000(Lcom/htc/camera/component/IndicatorsUI;)V

    .line 316
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$6;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    # getter for: Lcom/htc/camera/component/IndicatorsUI;->m_RemainingCounterState:Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;
    invoke-static {v0}, Lcom/htc/camera/component/IndicatorsUI;->access$1100(Lcom/htc/camera/component/IndicatorsUI;)Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;->StaysVisible:Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;

    if-ne v0, v1, :cond_0

    .line 317
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$6;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    # invokes: Lcom/htc/camera/component/IndicatorsUI;->showRemainingCounter(Z)V
    invoke-static {v0, v3}, Lcom/htc/camera/component/IndicatorsUI;->access$1200(Lcom/htc/camera/component/IndicatorsUI;Z)V

    goto :goto_0

    .line 322
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$6;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI$6;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    # getter for: Lcom/htc/camera/component/IndicatorsUI;->m_SelfTimerIndicatorContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;
    invoke-static {v1}, Lcom/htc/camera/component/IndicatorsUI;->access$100(Lcom/htc/camera/component/IndicatorsUI;)Lcom/htc/camera/rotate/RotateRelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/IndicatorsUI$6;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    # getter for: Lcom/htc/camera/component/IndicatorsUI;->m_SelfTimerIndicator:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/htc/camera/component/IndicatorsUI;->access$200(Lcom/htc/camera/component/IndicatorsUI;)Landroid/widget/ImageView;

    move-result-object v2

    # invokes: Lcom/htc/camera/component/IndicatorsUI;->setIndicatorVisibility(Lcom/htc/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/component/IndicatorsUI;->access$300(Lcom/htc/camera/component/IndicatorsUI;Lcom/htc/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V

    .line 323
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$6;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI$6;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    # getter for: Lcom/htc/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;
    invoke-static {v1}, Lcom/htc/camera/component/IndicatorsUI;->access$400(Lcom/htc/camera/component/IndicatorsUI;)Lcom/htc/camera/rotate/RotateRelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/IndicatorsUI$6;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    # getter for: Lcom/htc/camera/component/IndicatorsUI;->m_MuteIndicator:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/htc/camera/component/IndicatorsUI;->access$500(Lcom/htc/camera/component/IndicatorsUI;)Landroid/widget/ImageView;

    move-result-object v2

    # invokes: Lcom/htc/camera/component/IndicatorsUI;->setIndicatorVisibility(Lcom/htc/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/component/IndicatorsUI;->access$300(Lcom/htc/camera/component/IndicatorsUI;Lcom/htc/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V

    .line 324
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$6;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    # invokes: Lcom/htc/camera/component/IndicatorsUI;->hideRemainingCounter(Z)V
    invoke-static {v0, v3}, Lcom/htc/camera/component/IndicatorsUI;->access$600(Lcom/htc/camera/component/IndicatorsUI;Z)V

    goto :goto_0

    .line 311
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
