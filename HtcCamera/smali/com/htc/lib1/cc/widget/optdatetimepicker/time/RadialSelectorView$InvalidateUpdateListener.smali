.class Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView$InvalidateUpdateListener;
.super Ljava/lang/Object;
.source "RadialSelectorView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView$InvalidateUpdateListener;->this$0:Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->invalidate()V

    .line 374
    return-void
.end method
