.class Lcom/htc/camera/viewfinder/GLViewFinder$40;
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
    .line 2356
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$40;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2360
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$40;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    invoke-virtual {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    .line 2361
    iget-object v0, v1, Lcom/htc/camera/CameraThread;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/htc/camera/CameraThread;->previewOutputTarget:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/camera/CameraPreviewAdapter;

    if-nez v0, :cond_0

    .line 2362
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraThread;->restartPreview(Lcom/htc/camera/CameraType;)Lcom/htc/camera/Handle;

    .line 2365
    :goto_0
    return-void

    .line 2364
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$40;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$7500(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPreviewGLResourcesCreated() - No need to restart preview"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
