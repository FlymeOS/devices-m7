.class Lcom/htc/camera/component/IndicatorsUI$2;
.super Ljava/lang/Object;
.source "IndicatorsUI.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/IndicatorsUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/IndicatorsUI;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/htc/camera/component/IndicatorsUI$2;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 268
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$2;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI$2;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    # getter for: Lcom/htc/camera/component/IndicatorsUI;->m_SelfTimerIndicatorContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;
    invoke-static {v1}, Lcom/htc/camera/component/IndicatorsUI;->access$100(Lcom/htc/camera/component/IndicatorsUI;)Lcom/htc/camera/rotate/RotateRelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/IndicatorsUI$2;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    # getter for: Lcom/htc/camera/component/IndicatorsUI;->m_SelfTimerIndicator:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/htc/camera/component/IndicatorsUI;->access$200(Lcom/htc/camera/component/IndicatorsUI;)Landroid/widget/ImageView;

    move-result-object v2

    # invokes: Lcom/htc/camera/component/IndicatorsUI;->setIndicatorVisibility(Lcom/htc/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/component/IndicatorsUI;->access$300(Lcom/htc/camera/component/IndicatorsUI;Lcom/htc/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V

    .line 269
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$2;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI$2;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    # getter for: Lcom/htc/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;
    invoke-static {v1}, Lcom/htc/camera/component/IndicatorsUI;->access$400(Lcom/htc/camera/component/IndicatorsUI;)Lcom/htc/camera/rotate/RotateRelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/IndicatorsUI$2;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    # getter for: Lcom/htc/camera/component/IndicatorsUI;->m_MuteIndicator:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/htc/camera/component/IndicatorsUI;->access$500(Lcom/htc/camera/component/IndicatorsUI;)Landroid/widget/ImageView;

    move-result-object v2

    # invokes: Lcom/htc/camera/component/IndicatorsUI;->setIndicatorVisibility(Lcom/htc/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/component/IndicatorsUI;->access$300(Lcom/htc/camera/component/IndicatorsUI;Lcom/htc/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V

    .line 270
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$2;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    # invokes: Lcom/htc/camera/component/IndicatorsUI;->hideRemainingCounter(Z)V
    invoke-static {v0, v3}, Lcom/htc/camera/component/IndicatorsUI;->access$600(Lcom/htc/camera/component/IndicatorsUI;Z)V

    .line 271
    return-void
.end method
