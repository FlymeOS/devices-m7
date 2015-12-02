.class Lcom/htc/camera/viewfinder/GLViewFinder$11;
.super Ljava/lang/Object;
.source "GLViewFinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

.field final synthetic val$previewAdapter:Lcom/htc/camera/CameraPreviewAdapter;


# direct methods
.method constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/CameraPreviewAdapter;)V
    .locals 0

    .prologue
    .line 943
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$11;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    iput-object p2, p0, Lcom/htc/camera/viewfinder/GLViewFinder$11;->val$previewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 947
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$11;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$11;->val$previewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->onPreviewGLResourcesCreated(Lcom/htc/camera/CameraPreviewAdapter;)V
    invoke-static {v0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$2900(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/CameraPreviewAdapter;)V

    .line 948
    return-void
.end method
