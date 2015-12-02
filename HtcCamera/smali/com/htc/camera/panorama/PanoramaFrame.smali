.class Lcom/htc/camera/panorama/PanoramaFrame;
.super Ljava/lang/Object;
.source "PanoramaFrame.java"


# instance fields
.field public centerElevation:I

.field public centerRotation:I

.field public elevationBottom:I

.field public elevationHeight:I

.field public elevationTop:I

.field public index:I

.field public isFirstFrame:Z

.field public final neighborFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/panorama/PanoramaFrame;",
            ">;"
        }
    .end annotation
.end field

.field public rotationLeft:I

.field public rotationRight:I

.field public rotationWidth:I

.field public state:Lcom/htc/camera/panorama/PanoramaFrameState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaFrame;->neighborFrames:Ljava/util/ArrayList;

    .line 28
    sget-object v0, Lcom/htc/camera/panorama/PanoramaFrameState;->Unavailable:Lcom/htc/camera/panorama/PanoramaFrameState;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaFrame;->state:Lcom/htc/camera/panorama/PanoramaFrameState;

    .line 34
    return-void
.end method
