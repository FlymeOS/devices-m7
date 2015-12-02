.class Lcom/htc/camera/splitcapture/SplitPhotoController$JpegData;
.super Ljava/lang/Object;
.source "SplitPhotoController.java"


# instance fields
.field public jpegData:[B

.field public size:Lcom/htc/camera/imaging/Size;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController$JpegData;->jpegData:[B

    .line 162
    invoke-static {p1}, Lcom/htc/camera/imaging/ImageUtility;->getPixelSize([B)Lcom/htc/camera/imaging/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController$JpegData;->size:Lcom/htc/camera/imaging/Size;

    .line 163
    return-void
.end method
