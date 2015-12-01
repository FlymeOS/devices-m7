.class final Lcom/htc/lib1/cc/widget/reminder/ui/FadeAnimator$2;
.super Ljava/lang/Object;
.source "FadeAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic val$endAlpha:F

.field final synthetic val$target:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/reminder/ui/FadeAnimator$2;->val$target:Landroid/view/View;

    iput p2, p0, Lcom/htc/lib1/cc/widget/reminder/ui/FadeAnimator$2;->val$endAlpha:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/FadeAnimator$2;->val$target:Landroid/view/View;

    iget v1, p0, Lcom/htc/lib1/cc/widget/reminder/ui/FadeAnimator$2;->val$endAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 76
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 84
    return-void
.end method
