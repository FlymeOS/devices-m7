.class Lcom/htc/camera/component/IndicatorsUI$7;
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/IndicatorsUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/IndicatorsUI;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/htc/camera/component/IndicatorsUI$7;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 335
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$7;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    # invokes: Lcom/htc/camera/component/IndicatorsUI;->updateSelfTimerIndicator()V
    invoke-static {v0}, Lcom/htc/camera/component/IndicatorsUI;->access$1300(Lcom/htc/camera/component/IndicatorsUI;)V

    .line 341
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$7;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI$7;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    invoke-virtual {v1}, Lcom/htc/camera/component/IndicatorsUI;->getBaseLayout()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v4}, Lcom/htc/camera/component/IndicatorsUI;->showUI(Landroid/view/View;ZZ)V

    .line 344
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$7;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    # invokes: Lcom/htc/camera/component/IndicatorsUI;->updateMuteIndicator()V
    invoke-static {v0}, Lcom/htc/camera/component/IndicatorsUI;->access$1400(Lcom/htc/camera/component/IndicatorsUI;)V

    .line 345
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$7;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI$7;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    # getter for: Lcom/htc/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;
    invoke-static {v1}, Lcom/htc/camera/component/IndicatorsUI;->access$400(Lcom/htc/camera/component/IndicatorsUI;)Lcom/htc/camera/rotate/RotateRelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/IndicatorsUI$7;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    # getter for: Lcom/htc/camera/component/IndicatorsUI;->m_MuteIndicator:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/htc/camera/component/IndicatorsUI;->access$500(Lcom/htc/camera/component/IndicatorsUI;)Landroid/widget/ImageView;

    move-result-object v2

    # invokes: Lcom/htc/camera/component/IndicatorsUI;->setIndicatorVisibility(Lcom/htc/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V
    invoke-static {v0, v1, v2, v4}, Lcom/htc/camera/component/IndicatorsUI;->access$300(Lcom/htc/camera/component/IndicatorsUI;Lcom/htc/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V

    .line 346
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$7;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI$7;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    # getter for: Lcom/htc/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;
    invoke-static {v1}, Lcom/htc/camera/component/IndicatorsUI;->access$400(Lcom/htc/camera/component/IndicatorsUI;)Lcom/htc/camera/rotate/RotateRelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/IndicatorsUI$7;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    # getter for: Lcom/htc/camera/component/IndicatorsUI;->m_MuteIndicator:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/htc/camera/component/IndicatorsUI;->access$500(Lcom/htc/camera/component/IndicatorsUI;)Landroid/widget/ImageView;

    move-result-object v2

    # invokes: Lcom/htc/camera/component/IndicatorsUI;->setIndicatorVisibility(Lcom/htc/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V
    invoke-static {v0, v1, v2, v5}, Lcom/htc/camera/component/IndicatorsUI;->access$300(Lcom/htc/camera/component/IndicatorsUI;Lcom/htc/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V

    .line 348
    :cond_0
    return-void
.end method
