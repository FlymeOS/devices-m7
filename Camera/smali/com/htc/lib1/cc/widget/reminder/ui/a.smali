.class public Lcom/htc/lib1/cc/widget/reminder/ui/a;
.super Ljava/lang/Object;
.source "FadeAnimator.java"


# direct methods
.method public static a(Landroid/view/View;Ljava/lang/String;FF)Landroid/animation/ObjectAnimator;
    .locals 2

    .prologue
    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 28
    invoke-static {v0, p0, p3, p1}, Lcom/htc/lib1/cc/widget/reminder/ui/a;->a(Landroid/animation/ObjectAnimator;Landroid/view/View;FLjava/lang/String;)V

    .line 29
    return-object v0
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;
    .locals 2

    .prologue
    .line 33
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    .line 36
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 37
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    aget v1, p2, v1

    invoke-static {v0, p0, v1, p1}, Lcom/htc/lib1/cc/widget/reminder/ui/a;->a(Landroid/animation/ObjectAnimator;Landroid/view/View;FLjava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/animation/ObjectAnimator;Landroid/view/View;FLjava/lang/String;)V
    .locals 1

    .prologue
    .line 42
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    new-instance v0, Lcom/htc/lib1/cc/widget/reminder/ui/FadeAnimator$1;

    invoke-direct {v0, p1, p3}, Lcom/htc/lib1/cc/widget/reminder/ui/FadeAnimator$1;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 68
    new-instance v0, Lcom/htc/lib1/cc/widget/reminder/ui/FadeAnimator$2;

    invoke-direct {v0, p1, p2}, Lcom/htc/lib1/cc/widget/reminder/ui/FadeAnimator$2;-><init>(Landroid/view/View;F)V

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method
