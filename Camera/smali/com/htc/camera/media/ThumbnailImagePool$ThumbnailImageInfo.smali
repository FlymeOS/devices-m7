.class final Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;
.super Lcom/htc/camera/Handle;
.source "ThumbnailImagePool.java"


# instance fields
.field public filePath:Lcom/htc/camera/io/Path;

.field public fileTime:J

.field public thumbCreated:Z

.field public thumbnailBitmap:Landroid/graphics/Bitmap;

.field public thumbnailImageLarge:Landroid/graphics/Bitmap;

.field public thumbnailImageSmall:Landroid/graphics/Bitmap;

.field public thumbnailJpegRawData:[B

.field public thumbnailType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/htc/camera/io/Path;JLandroid/graphics/Bitmap;[BI)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1}, Lcom/htc/camera/Handle;-><init>(Ljava/lang/String;)V

    .line 64
    iput-object p2, p0, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->filePath:Lcom/htc/camera/io/Path;

    .line 65
    iput-wide p3, p0, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->fileTime:J

    .line 66
    iput-object v0, p0, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->thumbnailImageLarge:Landroid/graphics/Bitmap;

    .line 67
    iput-object v0, p0, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->thumbnailImageSmall:Landroid/graphics/Bitmap;

    .line 68
    iput-object p5, p0, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->thumbnailBitmap:Landroid/graphics/Bitmap;

    .line 69
    iput-object p6, p0, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->thumbnailJpegRawData:[B

    .line 70
    iput p7, p0, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->thumbnailType:I

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->thumbCreated:Z

    .line 72
    return-void
.end method
