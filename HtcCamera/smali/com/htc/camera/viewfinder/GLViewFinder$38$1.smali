.class Lcom/htc/camera/viewfinder/GLViewFinder$38$1;
.super Ljava/lang/Object;
.source "GLViewFinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/htc/camera/viewfinder/GLViewFinder$38;


# direct methods
.method constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder$38;)V
    .locals 0

    .prologue
    .line 1811
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$38$1;->this$1:Lcom/htc/camera/viewfinder/GLViewFinder$38;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1814
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$38$1;->this$1:Lcom/htc/camera/viewfinder/GLViewFinder$38;

    iget-object v0, v0, Lcom/htc/camera/viewfinder/GLViewFinder$38;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->onCameraThreadPreviewStarted()V
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$7200(Lcom/htc/camera/viewfinder/GLViewFinder;)V

    .line 1815
    return-void
.end method
