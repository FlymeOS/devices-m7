.class final Lcom/htc/camera/panorama/PanoramaPlusController$SavePanoramaImageTask;
.super Lcom/htc/camera/io/SaveImageTask;
.source "PanoramaPlusController.java"


# instance fields
.field private final _DirectoryCounter:Lcom/htc/camera/io/FileCounter;

.field private final _FileCounter:Lcom/htc/camera/io/FileCounter;


# direct methods
.method public constructor <init>(Lcom/htc/camera/CameraThread;[BLcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileCounter;)V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/io/SaveImageTask;-><init>(Lcom/htc/camera/CameraThread;[B)V

    .line 300
    iput-object p3, p0, Lcom/htc/camera/panorama/PanoramaPlusController$SavePanoramaImageTask;->_DirectoryCounter:Lcom/htc/camera/io/FileCounter;

    .line 301
    iput-object p4, p0, Lcom/htc/camera/panorama/PanoramaPlusController$SavePanoramaImageTask;->_FileCounter:Lcom/htc/camera/io/FileCounter;

    .line 302
    return-void
.end method


# virtual methods
.method protected getAvailableFileName()Lcom/htc/camera/io/Path;
    .locals 5

    .prologue
    .line 310
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController$SavePanoramaImageTask;->dcfInfo:Lcom/htc/camera/io/DCFInfo;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController$SavePanoramaImageTask;->storageSlot:Lcom/htc/camera/io/StorageSlot;

    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusController$SavePanoramaImageTask;->_DirectoryCounter:Lcom/htc/camera/io/FileCounter;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/io/DCFUtility;->getDirectoryPath(Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/StorageSlot;Lcom/htc/camera/io/FileCounter;)Ljava/lang/String;

    move-result-object v0

    .line 311
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController$SavePanoramaImageTask;->dcfInfo:Lcom/htc/camera/io/DCFInfo;

    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusController$SavePanoramaImageTask;->_FileCounter:Lcom/htc/camera/io/FileCounter;

    sget-object v3, Lcom/htc/camera/io/FileFormat;->Jpeg:Lcom/htc/camera/io/FileFormat;

    invoke-static {v1, v2, v3}, Lcom/htc/camera/io/DCFUtility;->getFileName(Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileFormat;)Ljava/lang/String;

    move-result-object v1

    .line 312
    new-instance v2, Lcom/htc/camera/io/DCFPath;

    iget-object v3, p0, Lcom/htc/camera/panorama/PanoramaPlusController$SavePanoramaImageTask;->_DirectoryCounter:Lcom/htc/camera/io/FileCounter;

    iget-object v4, p0, Lcom/htc/camera/panorama/PanoramaPlusController$SavePanoramaImageTask;->_FileCounter:Lcom/htc/camera/io/FileCounter;

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/htc/camera/io/DCFPath;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileCounter;)V

    return-object v2
.end method

.method protected onCreateThumbnailImageBeforeSavingMedia(Lcom/htc/camera/media/a;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    return-object v0
.end method

.method protected prepareMediaStoreValues(Lcom/htc/camera/io/Path;)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 330
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController$SavePanoramaImageTask;->TAG:Ljava/lang/String;

    const-string v1, "prepareMediaStoreValues() - Set Panorama+ type"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 332
    const-string v1, "htc_type"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 334
    return-object v0
.end method
