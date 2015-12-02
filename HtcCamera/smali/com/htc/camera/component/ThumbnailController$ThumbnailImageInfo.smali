.class final Lcom/htc/camera/component/ThumbnailController$ThumbnailImageInfo;
.super Ljava/lang/Object;
.source "ThumbnailController.java"


# instance fields
.field public filePath:Ljava/lang/String;

.field public fileTime:J

.field public thumbnailImage:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/htc/camera/component/ThumbnailController$ThumbnailImageInfo;->filePath:Ljava/lang/String;

    .line 84
    iput-wide p2, p0, Lcom/htc/camera/component/ThumbnailController$ThumbnailImageInfo;->fileTime:J

    .line 85
    iput-object p4, p0, Lcom/htc/camera/component/ThumbnailController$ThumbnailImageInfo;->thumbnailImage:Landroid/graphics/Bitmap;

    .line 86
    return-void
.end method
