.class Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$7;
.super Ljava/lang/Object;
.source "PanoSEGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;


# direct methods
.method constructor <init>(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)V
    .locals 0

    .prologue
    .line 657
    iput-object p1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$7;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 659
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$7;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    iget-object v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$7;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->nativeEngine_:J
    invoke-static {v1}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$100(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)J

    move-result-wide v1

    # invokes: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->onTouchCancelled(J)V
    invoke-static {v0, v1, v2}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$900(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;J)V

    .line 660
    return-void
.end method
