.class Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect$1;
.super Ljava/lang/Object;
.source "HtcViewPager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic this$1:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;

.field final synthetic val$target:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 3818
    iput-object p1, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect$1;->this$1:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;

    iput-object p2, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect$1;->val$target:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3822
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect$1;->this$1:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;

    # setter for: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->totaldistanceOffset:F
    invoke-static {v0, v2}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->access$1102(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;F)F

    .line 3824
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect$1;->this$1:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;

    iget-object v1, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect$1;->val$target:Landroid/view/View;

    # invokes: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->setTranslation(Landroid/view/View;F)V
    invoke-static {v0, v1, v2}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->access$1200(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;Landroid/view/View;F)V

    .line 3825
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3829
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect$1;->this$1:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;

    # setter for: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->totaldistanceOffset:F
    invoke-static {v0, v2}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->access$1102(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;F)F

    .line 3831
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect$1;->this$1:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;

    iget-object v1, p0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect$1;->val$target:Landroid/view/View;

    # invokes: Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->setTranslation(Landroid/view/View;F)V
    invoke-static {v0, v1, v2}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;->access$1200(Lcom/htc/lib1/cc/view/viewpager/HtcViewPager$BouncingEdgeEffect;Landroid/view/View;F)V

    .line 3832
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 3835
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 3838
    return-void
.end method
