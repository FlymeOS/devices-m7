.class final Lcom/htc/camera/panorama/PanoramaPlusEngine$2;
.super Ljava/lang/Object;
.source "PanoramaPlusEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$data:[B

.field final synthetic val$engine:Lcom/htc/camera/panorama/PanoramaPlusEngine;


# direct methods
.method constructor <init>(Lcom/htc/camera/panorama/PanoramaPlusEngine;[B)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine$2;->val$engine:Lcom/htc/camera/panorama/PanoramaPlusEngine;

    iput-object p2, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine$2;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine$2;->val$engine:Lcom/htc/camera/panorama/PanoramaPlusEngine;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine$2;->val$data:[B

    # invokes: Lcom/htc/camera/panorama/PanoramaPlusEngine;->previewPictureCallback([B)V
    invoke-static {v0, v1}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->access$100(Lcom/htc/camera/panorama/PanoramaPlusEngine;[B)V

    .line 356
    return-void
.end method
