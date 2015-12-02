.class Lcom/htc/camera/viewfinder/GLViewFinder$22;
.super Ljava/lang/Object;
.source "GLViewFinder.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/viewfinder/GLViewFinder;


# direct methods
.method constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V
    .locals 0

    .prologue
    .line 1427
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$22;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .prologue
    .line 1436
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$22;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->onDirectOutputSurfaceCreated()V
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$4200(Lcom/htc/camera/viewfinder/GLViewFinder;)V

    .line 1432
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$22;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->onDirectOutputSurfaceDestroyed()V
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$4300(Lcom/htc/camera/viewfinder/GLViewFinder;)V

    .line 1442
    return-void
.end method
