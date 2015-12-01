.class public Lcom/htc/lib1/cc/widget/reminder/ui/footer/Panel;
.super Landroid/widget/RelativeLayout;
.source "Panel.java"


# instance fields
.field private mFadeAnimator:Landroid/animation/ObjectAnimator;

.field private mTargetAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 18
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/footer/Panel;->mTargetAlpha:F

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/footer/Panel;->mTargetAlpha:F

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/footer/Panel;->mTargetAlpha:F

    .line 31
    return-void
.end method

.method private cancelAnimator()V
    .locals 1

    .prologue
    .line 105
    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/footer/Panel;->mFadeAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/footer/Panel;->mFadeAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/footer/Panel;->mFadeAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 110
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/footer/Panel;->mFadeAnimator:Landroid/animation/ObjectAnimator;

    .line 112
    :cond_1
    monitor-exit p0

    .line 113
    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setVisibilityByAlpha(ZZI)V
    .locals 5

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 53
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/reminder/ui/footer/Panel;->isShowing()Z

    move-result v0

    .line 54
    if-eq p1, v0, :cond_6

    .line 55
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/reminder/ui/footer/Panel;->cancelAnimator()V

    .line 56
    const/high16 v0, 0x3f800000    # 1.0f

    .line 57
    if-nez p1, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 60
    :cond_0
    iput v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/footer/Panel;->mTargetAlpha:F

    .line 61
    if-eqz p2, :cond_5

    .line 62
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/reminder/ui/footer/Panel;->getAlpha()F

    move-result v2

    .line 63
    if-eqz p1, :cond_3

    .line 66
    cmpg-float v3, v2, v1

    if-gez v3, :cond_4

    .line 75
    :cond_1
    :goto_0
    const-string v2, "Panel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVisi8Alpha curAl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " endAl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " delayT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lib1/cc/widget/reminder/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0, v1, v0, p3}, Lcom/htc/lib1/cc/widget/reminder/ui/footer/Panel;->updateAlphaByAnimation(FFI)V

    .line 89
    :cond_2
    :goto_1
    return-void

    .line 71
    :cond_3
    cmpl-float v3, v2, v1

    if-gtz v3, :cond_1

    :cond_4
    move v1, v2

    goto :goto_0

    .line 81
    :cond_5
    const-string v0, "Panel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVisi8Alpha: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/lib1/cc/widget/reminder/ui/footer/Panel;->mTargetAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib1/cc/widget/reminder/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/footer/Panel;->mTargetAlpha:F

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/reminder/ui/footer/Panel;->setAlpha(F)V

    goto :goto_1

    .line 85
    :cond_6
    if-nez p2, :cond_2

    .line 86
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/reminder/ui/footer/Panel;->cancelAnimator()V

    goto :goto_1
.end method

.method private updateAlphaByAnimation(FFI)V
    .locals 3

    .prologue
    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/footer/Panel;->mTargetAlpha:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "myAlpha"

    iget v1, p0, Lcom/htc/lib1/cc/widget/reminder/ui/footer/Panel;->mTargetAlpha:F

    invoke-static {p0, v0, p1, v1}, Lcom/htc/lib1/cc/widget/reminder/ui/a;->a(Landroid/view/View;Ljava/lang/String;FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/footer/Panel;->mFadeAnimator:Landroid/animation/ObjectAnimator;

    .line 95
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/footer/Panel;->mFadeAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/footer/Panel;->mFadeAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 97
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/footer/Panel;->mFadeAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 98
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/footer/Panel;->mFadeAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 101
    :cond_0
    monitor-exit p0

    .line 102
    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public init()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    .line 116
    iget v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/footer/Panel;->mTargetAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 45
    :goto_0
    invoke-direct {p0, v0, v1, v1}, Lcom/htc/lib1/cc/widget/reminder/ui/footer/Panel;->setVisibilityByAlpha(ZZI)V

    .line 46
    return-void

    :cond_0
    move v0, v1

    .line 43
    goto :goto_0
.end method
