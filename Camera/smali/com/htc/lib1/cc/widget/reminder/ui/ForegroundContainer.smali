.class public Lcom/htc/lib1/cc/widget/reminder/ui/ForegroundContainer;
.super Landroid/widget/RelativeLayout;
.source "ForegroundContainer.java"


# instance fields
.field private mFadeAnimator:Landroid/animation/ObjectAnimator;

.field private mTargetAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 17
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/ForegroundContainer;->mTargetAlpha:F

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/ForegroundContainer;->mTargetAlpha:F

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/ForegroundContainer;->mTargetAlpha:F

    .line 30
    return-void
.end method

.method private cancelAnimator()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/ForegroundContainer;->mFadeAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/ForegroundContainer;->mFadeAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/ForegroundContainer;->mFadeAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 87
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/ForegroundContainer;->mFadeAnimator:Landroid/animation/ObjectAnimator;

    .line 89
    :cond_1
    return-void
.end method

.method private updateAlphaByAnimation()V
    .locals 3

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/reminder/ui/ForegroundContainer;->getAlpha()F

    move-result v0

    .line 73
    iget v1, p0, Lcom/htc/lib1/cc/widget/reminder/ui/ForegroundContainer;->mTargetAlpha:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 74
    const-string v1, "myAlpha"

    iget v2, p0, Lcom/htc/lib1/cc/widget/reminder/ui/ForegroundContainer;->mTargetAlpha:F

    invoke-static {p0, v1, v0, v2}, Lcom/htc/lib1/cc/widget/reminder/ui/a;->a(Landroid/view/View;Ljava/lang/String;FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/ForegroundContainer;->mFadeAnimator:Landroid/animation/ObjectAnimator;

    .line 75
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/ForegroundContainer;->mFadeAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/ForegroundContainer;->mFadeAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 77
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/ForegroundContainer;->mFadeAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 80
    :cond_0
    return-void
.end method


# virtual methods
.method public isShowing()Z
    .locals 2

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/ForegroundContainer;->mTargetAlpha:F

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
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/lib1/cc/widget/reminder/ui/ForegroundContainer;->setVisibilityByAlpha(IZ)V

    .line 40
    return-void
.end method

.method public setVisibilityByAlpha(IZ)V
    .locals 3

    .prologue
    .line 44
    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 45
    :goto_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/reminder/ui/ForegroundContainer;->isShowing()Z

    move-result v1

    .line 46
    if-eq v0, v1, :cond_3

    .line 47
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/reminder/ui/ForegroundContainer;->cancelAnimator()V

    .line 48
    const/4 v1, 0x0

    .line 49
    if-eqz v0, :cond_4

    .line 50
    const/high16 v0, 0x3f800000    # 1.0f

    .line 52
    :goto_1
    iput v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/ForegroundContainer;->mTargetAlpha:F

    .line 53
    const-string v0, "FgContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tarAlpha: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/lib1/cc/widget/reminder/ui/ForegroundContainer;->mTargetAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib1/cc/widget/reminder/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    if-eqz p2, :cond_2

    .line 55
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/reminder/ui/ForegroundContainer;->updateAlphaByAnimation()V

    .line 64
    :cond_0
    :goto_2
    return-void

    .line 44
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 57
    :cond_2
    iget v0, p0, Lcom/htc/lib1/cc/widget/reminder/ui/ForegroundContainer;->mTargetAlpha:F

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/reminder/ui/ForegroundContainer;->setAlpha(F)V

    goto :goto_2

    .line 60
    :cond_3
    if-nez p2, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/reminder/ui/ForegroundContainer;->cancelAnimator()V

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method
