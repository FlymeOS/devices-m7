.class Lcom/htc/camera/viewfinder/GLViewFinder$8;
.super Ljava/lang/Object;
.source "GLViewFinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

.field final synthetic val$handle:Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;


# direct methods
.method constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;)V
    .locals 0

    .prologue
    .line 637
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$8;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    iput-object p2, p0, Lcom/htc/camera/viewfinder/GLViewFinder$8;->val$handle:Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$8;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$8;->val$handle:Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->attachRenderingSurfaceInternal(Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;)V
    invoke-static {v0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$2600(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;)V

    .line 642
    return-void
.end method
