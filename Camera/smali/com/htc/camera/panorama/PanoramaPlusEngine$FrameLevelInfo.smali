.class public final Lcom/htc/camera/panorama/PanoramaPlusEngine$FrameLevelInfo;
.super Ljava/lang/Object;
.source "PanoramaPlusEngine.java"


# instance fields
.field public final elevationAngle:I

.field public final frameCount:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine$FrameLevelInfo;->frameCount:I

    .line 83
    iput p2, p0, Lcom/htc/camera/panorama/PanoramaPlusEngine$FrameLevelInfo;->elevationAngle:I

    .line 84
    return-void
.end method
