.class Lcom/htc/camera/widget/ReviewAnimationView$1;
.super Ljava/lang/Object;
.source "ReviewAnimationView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/widget/ReviewAnimationView;


# direct methods
.method constructor <init>(Lcom/htc/camera/widget/ReviewAnimationView;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/htc/camera/widget/ReviewAnimationView$1;->this$0:Lcom/htc/camera/widget/ReviewAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .prologue
    .line 75
    const-string v0, "ReviewAnimationView"

    const-string v1, "surfaceChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 7

    .prologue
    .line 66
    const-string v0, "ReviewAnimationView"

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/htc/camera/widget/ReviewAnimationView$1;->this$0:Lcom/htc/camera/widget/ReviewAnimationView;

    # getter for: Lcom/htc/camera/widget/ReviewAnimationView;->m_AnimationThread:Lcom/htc/camera/widget/ReviewAnimationThread;
    invoke-static {v0}, Lcom/htc/camera/widget/ReviewAnimationView;->access$000(Lcom/htc/camera/widget/ReviewAnimationView;)Lcom/htc/camera/widget/ReviewAnimationThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/htc/camera/widget/ReviewAnimationView$1;->this$0:Lcom/htc/camera/widget/ReviewAnimationView;

    # getter for: Lcom/htc/camera/widget/ReviewAnimationView;->m_AnimationThread:Lcom/htc/camera/widget/ReviewAnimationThread;
    invoke-static {v0}, Lcom/htc/camera/widget/ReviewAnimationView;->access$000(Lcom/htc/camera/widget/ReviewAnimationView;)Lcom/htc/camera/widget/ReviewAnimationThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/widget/ReviewAnimationThread;->exit()V

    .line 69
    :cond_0
    iget-object v6, p0, Lcom/htc/camera/widget/ReviewAnimationView$1;->this$0:Lcom/htc/camera/widget/ReviewAnimationView;

    new-instance v0, Lcom/htc/camera/widget/ReviewAnimationThread;

    iget-object v1, p0, Lcom/htc/camera/widget/ReviewAnimationView$1;->this$0:Lcom/htc/camera/widget/ReviewAnimationView;

    invoke-virtual {v1}, Lcom/htc/camera/widget/ReviewAnimationView;->getWidth()I

    move-result v2

    iget-object v1, p0, Lcom/htc/camera/widget/ReviewAnimationView$1;->this$0:Lcom/htc/camera/widget/ReviewAnimationView;

    invoke-virtual {v1}, Lcom/htc/camera/widget/ReviewAnimationView;->getHeight()I

    move-result v3

    iget-object v1, p0, Lcom/htc/camera/widget/ReviewAnimationView$1;->this$0:Lcom/htc/camera/widget/ReviewAnimationView;

    # getter for: Lcom/htc/camera/widget/ReviewAnimationView;->m_TargetCenterPoint:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/htc/camera/widget/ReviewAnimationView;->access$100(Lcom/htc/camera/widget/ReviewAnimationView;)Landroid/graphics/Point;

    move-result-object v1

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/htc/camera/widget/ReviewAnimationView$1;->this$0:Lcom/htc/camera/widget/ReviewAnimationView;

    # getter for: Lcom/htc/camera/widget/ReviewAnimationView;->m_TargetCenterPoint:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/htc/camera/widget/ReviewAnimationView;->access$100(Lcom/htc/camera/widget/ReviewAnimationView;)Landroid/graphics/Point;

    move-result-object v1

    iget v5, v1, Landroid/graphics/Point;->y:I

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/widget/ReviewAnimationThread;-><init>(Landroid/view/SurfaceHolder;IIII)V

    # setter for: Lcom/htc/camera/widget/ReviewAnimationView;->m_AnimationThread:Lcom/htc/camera/widget/ReviewAnimationThread;
    invoke-static {v6, v0}, Lcom/htc/camera/widget/ReviewAnimationView;->access$002(Lcom/htc/camera/widget/ReviewAnimationView;Lcom/htc/camera/widget/ReviewAnimationThread;)Lcom/htc/camera/widget/ReviewAnimationThread;

    .line 70
    iget-object v0, p0, Lcom/htc/camera/widget/ReviewAnimationView$1;->this$0:Lcom/htc/camera/widget/ReviewAnimationView;

    # getter for: Lcom/htc/camera/widget/ReviewAnimationView;->m_AnimationThread:Lcom/htc/camera/widget/ReviewAnimationThread;
    invoke-static {v0}, Lcom/htc/camera/widget/ReviewAnimationView;->access$000(Lcom/htc/camera/widget/ReviewAnimationView;)Lcom/htc/camera/widget/ReviewAnimationThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/widget/ReviewAnimationThread;->start()V

    .line 71
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 56
    const-string v0, "ReviewAnimationView"

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/htc/camera/widget/ReviewAnimationView$1;->this$0:Lcom/htc/camera/widget/ReviewAnimationView;

    # getter for: Lcom/htc/camera/widget/ReviewAnimationView;->m_AnimationThread:Lcom/htc/camera/widget/ReviewAnimationThread;
    invoke-static {v0}, Lcom/htc/camera/widget/ReviewAnimationView;->access$000(Lcom/htc/camera/widget/ReviewAnimationView;)Lcom/htc/camera/widget/ReviewAnimationThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/htc/camera/widget/ReviewAnimationView$1;->this$0:Lcom/htc/camera/widget/ReviewAnimationView;

    # getter for: Lcom/htc/camera/widget/ReviewAnimationView;->m_AnimationThread:Lcom/htc/camera/widget/ReviewAnimationThread;
    invoke-static {v0}, Lcom/htc/camera/widget/ReviewAnimationView;->access$000(Lcom/htc/camera/widget/ReviewAnimationView;)Lcom/htc/camera/widget/ReviewAnimationThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/widget/ReviewAnimationThread;->exit()V

    .line 60
    iget-object v0, p0, Lcom/htc/camera/widget/ReviewAnimationView$1;->this$0:Lcom/htc/camera/widget/ReviewAnimationView;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/widget/ReviewAnimationView;->m_AnimationThread:Lcom/htc/camera/widget/ReviewAnimationThread;
    invoke-static {v0, v1}, Lcom/htc/camera/widget/ReviewAnimationView;->access$002(Lcom/htc/camera/widget/ReviewAnimationView;Lcom/htc/camera/widget/ReviewAnimationThread;)Lcom/htc/camera/widget/ReviewAnimationThread;

    .line 62
    :cond_0
    return-void
.end method
