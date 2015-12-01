.class Lcom/htc/camera/viewfinder/GLViewFinder$21;
.super Ljava/lang/Object;
.source "GLViewFinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/viewfinder/GLViewFinder;


# direct methods
.method constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V
    .locals 0

    .prologue
    .line 1379
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$21;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$21;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    sget-object v1, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;->FadingOut:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    # setter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLPreviewCoverAnimationState:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;
    invoke-static {v0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$4002(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;)Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    .line 1384
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$21;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLPreviewCoverAnimationTimer:Lcom/htc/camera/StopWatch;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$4100(Lcom/htc/camera/viewfinder/GLViewFinder;)Lcom/htc/camera/StopWatch;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1385
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$21;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    new-instance v1, Lcom/htc/camera/StopWatch;

    invoke-direct {v1}, Lcom/htc/camera/StopWatch;-><init>()V

    # setter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLPreviewCoverAnimationTimer:Lcom/htc/camera/StopWatch;
    invoke-static {v0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$4102(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/StopWatch;)Lcom/htc/camera/StopWatch;

    .line 1386
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$21;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_GLPreviewCoverAnimationTimer:Lcom/htc/camera/StopWatch;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$4100(Lcom/htc/camera/viewfinder/GLViewFinder;)Lcom/htc/camera/StopWatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->restart()V

    .line 1387
    return-void
.end method
