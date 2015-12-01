.class Lcom/htc/camera/viewfinder/GLViewFinder$9;
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
    .line 805
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$9;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$9;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->onPreviewGLResourcesCleared()V
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$2700(Lcom/htc/camera/viewfinder/GLViewFinder;)V

    .line 810
    return-void
.end method
