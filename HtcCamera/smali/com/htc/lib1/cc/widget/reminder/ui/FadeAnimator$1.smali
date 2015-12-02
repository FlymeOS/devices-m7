.class final Lcom/htc/lib1/cc/widget/reminder/ui/FadeAnimator$1;
.super Ljava/lang/Object;
.source "FadeAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private mLastTime:J

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$target:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/reminder/ui/FadeAnimator$1;->val$target:Landroid/view/View;

    iput-object p2, p0, Lcom/htc/lib1/cc/widget/reminder/ui/FadeAnimator$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/FadeAnimator$1;->mLastTime:J

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .prologue
    .line 49
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 50
    iget-wide v2, p0, Lcom/htc/lib1/cc/widget/reminder/ui/FadeAnimator$1;->mLastTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x20

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 51
    iput-wide v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/FadeAnimator$1;->mLastTime:J

    .line 52
    if-eqz p1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/FadeAnimator$1;->val$target:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 54
    if-nez v0, :cond_1

    .line 55
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/FadeAnimator$1;->val$key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 60
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/reminder/ui/FadeAnimator$1;->val$target:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method
