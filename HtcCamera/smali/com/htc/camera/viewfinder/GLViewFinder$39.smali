.class Lcom/htc/camera/viewfinder/GLViewFinder$39;
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
    .line 1855
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$39;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1858
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$39;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    invoke-virtual {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$39;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->m_OneShotPreviewCallback:Lcom/htc/camera/o;
    invoke-static {v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$7400(Lcom/htc/camera/viewfinder/GLViewFinder;)Lcom/htc/camera/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->registerOneShotPreviewCallback(Lcom/htc/camera/o;)Lcom/htc/camera/Handle;

    .line 1859
    return-void
.end method
