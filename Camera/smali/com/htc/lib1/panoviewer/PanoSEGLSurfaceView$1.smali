.class Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$1;
.super Ljava/util/TimerTask;
.source "PanoSEGLSurfaceView.java"


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;


# direct methods
.method constructor <init>(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$1;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$1;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->request_1st_render:Z
    invoke-static {v0}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$000(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$1;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    invoke-virtual {v0}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->requestRender()V

    .line 370
    :goto_0
    return-void

    .line 368
    :cond_0
    invoke-virtual {p0}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$1;->cancel()Z

    goto :goto_0
.end method
