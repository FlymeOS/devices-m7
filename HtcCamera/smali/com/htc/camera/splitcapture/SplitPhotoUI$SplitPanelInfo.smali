.class Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;
.super Ljava/lang/Object;
.source "SplitPhotoUI.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public bounds:Landroid/graphics/RectF;

.field public cameraType:Lcom/htc/camera/CameraType;

.field public imageID:J

.field public jpegBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Lcom/htc/camera/CameraType;JLandroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    sget-object v0, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->cameraType:Lcom/htc/camera/CameraType;

    .line 83
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->bounds:Landroid/graphics/RectF;

    .line 84
    iput-object p2, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->cameraType:Lcom/htc/camera/CameraType;

    .line 85
    iput-wide p3, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->imageID:J

    .line 86
    iput-object p5, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->jpegBitmap:Landroid/graphics/Bitmap;

    .line 87
    return-void
.end method


# virtual methods
.method public clone()Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;
    .locals 8

    .prologue
    .line 91
    new-instance v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->bounds:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->cameraType:Lcom/htc/camera/CameraType;

    iget-wide v3, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->imageID:J

    iget-object v5, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->jpegBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->jpegBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->jpegBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;-><init>(Landroid/graphics/RectF;Lcom/htc/camera/CameraType;JLandroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->clone()Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;)I
    .locals 4

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->imageID:J

    iget-wide v2, p1, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->imageID:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 98
    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    .line 99
    :cond_0
    iget-wide v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->imageID:J

    iget-wide v2, p1, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->imageID:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 100
    const/4 v0, -0x1

    goto :goto_0

    .line 102
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 74
    check-cast p1, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;

    invoke-virtual {p0, p1}, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->compareTo(Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;)I

    move-result v0

    return v0
.end method

.method public isMainCamera()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->cameraType:Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    return v0
.end method
