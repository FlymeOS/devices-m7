.class Lcom/htc/camera/viewfinder/GLViewFinder$41;
.super Ljava/lang/Object;
.source "GLViewFinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

.field final synthetic val$needRestartPreview:Z


# direct methods
.method constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder;Z)V
    .locals 0

    .prologue
    .line 2554
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$41;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    iput-boolean p2, p0, Lcom/htc/camera/viewfinder/GLViewFinder$41;->val$needRestartPreview:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2558
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$41;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    invoke-virtual {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    .line 2559
    iget-boolean v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$41;->val$needRestartPreview:Z

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/htc/camera/CameraThread;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2560
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraThread;->restartPreview(Lcom/htc/camera/CameraType;)Lcom/htc/camera/Handle;

    .line 2561
    :cond_0
    return-void
.end method
