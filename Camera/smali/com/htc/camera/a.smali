.class public Lcom/htc/camera/a;
.super Ljava/lang/Object;
.source "AnimationManager.java"


# direct methods
.method public static a(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;
    .locals 3

    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 106
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 107
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 108
    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 109
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 110
    return-object v0
.end method

.method public static a(Landroid/view/View;IILcom/htc/camera/b;)V
    .locals 3

    .prologue
    .line 195
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 198
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 199
    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 200
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 201
    new-instance v1, Lcom/htc/camera/AnimationManager$6;

    invoke-direct {v1, p3, p0, p1}, Lcom/htc/camera/AnimationManager$6;-><init>(Lcom/htc/camera/b;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 222
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 224
    return-void
.end method
