.class Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialTextsView$InvalidateUpdateListener;
.super Ljava/lang/Object;
.source "RadialTextsView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialTextsView;


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialTextsView$InvalidateUpdateListener;->this$0:Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialTextsView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialTextsView;->invalidate()V

    .line 346
    return-void
.end method
