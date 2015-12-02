.class Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$4;
.super Ljava/lang/Object;
.source "PanoSEGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

.field final synthetic val$pointerID:I

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method constructor <init>(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;IFF)V
    .locals 0

    .prologue
    .line 612
    iput-object p1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$4;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    iput p2, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$4;->val$pointerID:I

    iput p3, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$4;->val$x:F

    iput p4, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$4;->val$y:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 614
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$4;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    iget-object v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$4;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->nativeEngine_:J
    invoke-static {v1}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$100(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)J

    move-result-wide v1

    iget v3, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$4;->val$pointerID:I

    iget v4, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$4;->val$x:F

    iget v5, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$4;->val$y:F

    # invokes: Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->onTouchBegan(JIFF)V
    invoke-static/range {v0 .. v5}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->access$1800(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;JIFF)V

    .line 615
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$4;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    invoke-virtual {v0}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;->requestRender()V

    .line 616
    return-void
.end method
