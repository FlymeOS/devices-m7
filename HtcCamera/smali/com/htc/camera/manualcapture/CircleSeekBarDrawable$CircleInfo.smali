.class public Lcom/htc/camera/manualcapture/CircleSeekBarDrawable$CircleInfo;
.super Ljava/lang/Object;
.source "CircleSeekBarDrawable.java"


# instance fields
.field public cX:F

.field public cY:F

.field public radius:F

.field public solid:Z


# direct methods
.method public constructor <init>(FFFZ)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable$CircleInfo;->cX:F

    .line 45
    iput p2, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable$CircleInfo;->cY:F

    .line 46
    iput p3, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable$CircleInfo;->radius:F

    .line 47
    iput-boolean p4, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable$CircleInfo;->solid:Z

    .line 48
    return-void
.end method
