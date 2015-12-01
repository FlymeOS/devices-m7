.class public final Lcom/htc/camera/widget/ReviewAnimationView;
.super Landroid/view/SurfaceView;
.source "ReviewAnimationView.java"


# instance fields
.field private m_AnimationThread:Lcom/htc/camera/widget/ReviewAnimationThread;

.field private final m_TargetCenterPoint:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 45
    new-instance v1, Landroid/graphics/Point;

    const v2, 0x7f0a02f3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const v3, 0x7f0a02f4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/htc/camera/widget/ReviewAnimationView;->m_TargetCenterPoint:Landroid/graphics/Point;

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/camera/widget/ReviewAnimationView;->setZOrderMediaOverlay(Z)V

    .line 52
    invoke-virtual {p0}, Lcom/htc/camera/widget/ReviewAnimationView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcom/htc/camera/widget/ReviewAnimationView$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/widget/ReviewAnimationView$1;-><init>(Lcom/htc/camera/widget/ReviewAnimationView;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/widget/ReviewAnimationView;)Lcom/htc/camera/widget/ReviewAnimationThread;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/htc/camera/widget/ReviewAnimationView;->m_AnimationThread:Lcom/htc/camera/widget/ReviewAnimationThread;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/camera/widget/ReviewAnimationView;Lcom/htc/camera/widget/ReviewAnimationThread;)Lcom/htc/camera/widget/ReviewAnimationThread;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/htc/camera/widget/ReviewAnimationView;->m_AnimationThread:Lcom/htc/camera/widget/ReviewAnimationThread;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/camera/widget/ReviewAnimationView;)Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/htc/camera/widget/ReviewAnimationView;->m_TargetCenterPoint:Landroid/graphics/Point;

    return-object v0
.end method


# virtual methods
.method public setReviewImage(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/camera/widget/ReviewAnimationView;->m_AnimationThread:Lcom/htc/camera/widget/ReviewAnimationThread;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/htc/camera/widget/ReviewAnimationView;->m_AnimationThread:Lcom/htc/camera/widget/ReviewAnimationThread;

    invoke-virtual {v0, p1}, Lcom/htc/camera/widget/ReviewAnimationThread;->setReviewImage(Landroid/graphics/Bitmap;)V

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    const-string v0, "ReviewAnimationView"

    const-string v1, "No animation thread to set review image"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
