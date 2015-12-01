.class public Lcom/htc/camera/widget/IconButton;
.super Landroid/widget/ImageView;
.source "IconButton.java"


# instance fields
.field private m_IsScaledDown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method private scaleDown()V
    .locals 3

    .prologue
    const v1, 0x3f666666    # 0.9f

    .line 67
    iget-boolean v0, p0, Lcom/htc/camera/widget/IconButton;->m_IsScaledDown:Z

    if-eqz v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/widget/IconButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 74
    const-wide/16 v1, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 75
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/widget/IconButton;->m_IsScaledDown:Z

    goto :goto_0
.end method

.method private scaleUp()V
    .locals 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 85
    iget-boolean v0, p0, Lcom/htc/camera/widget/IconButton;->m_IsScaledDown:Z

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/widget/IconButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 90
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 92
    const-wide/16 v1, 0x42

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 93
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/widget/IconButton;->m_IsScaledDown:Z

    goto :goto_0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 40
    cmpg-float v2, v0, v3

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/widget/IconButton;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    cmpg-float v0, v1, v3

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/widget/IconButton;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    .line 42
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/widget/IconButton;->scaleUp()V

    .line 43
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 44
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0

    .line 46
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 58
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 49
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/camera/widget/IconButton;->scaleDown()V

    goto :goto_1

    .line 53
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/camera/widget/IconButton;->scaleUp()V

    goto :goto_1

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
