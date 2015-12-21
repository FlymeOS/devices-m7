.class final Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;
.super Lcom/htc/camera/io/SaveImageTask;
.source "ZoeController.java"


# instance fields
.field public final directoryCounter:Lcom/htc/camera/io/FileCounter;

.field public final fileCounter:Lcom/htc/camera/io/FileCounter;

.field public final index:I

.field private final isT0:Z

.field final synthetic this$0:Lcom/htc/camera/zoe/ZoeController;


# direct methods
.method public constructor <init>(Lcom/htc/camera/zoe/ZoeController;Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;[BLcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileCounter;IZ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 252
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;->this$0:Lcom/htc/camera/zoe/ZoeController;

    .line 253
    invoke-direct {p0, p2, p3, p4}, Lcom/htc/camera/io/SaveImageTask;-><init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;[B)V

    .line 254
    iput-object p5, p0, Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;->directoryCounter:Lcom/htc/camera/io/FileCounter;

    .line 255
    iput-object p6, p0, Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;->fileCounter:Lcom/htc/camera/io/FileCounter;

    .line 256
    iput p7, p0, Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;->index:I

    .line 257
    iput-boolean v0, p0, Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;->isSingleShot:Z

    .line 258
    iput-boolean p8, p0, Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;->isT0:Z

    .line 259
    iput-boolean v0, p0, Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;->prepareThumbnailImage:Z

    .line 260
    return-void
.end method


# virtual methods
.method protected getAvailableFileName()Lcom/htc/camera/io/DCFPath;
    .locals 5

    .prologue
    .line 268
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;->dcfInfo:Lcom/htc/camera/io/DCFInfo;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;->storageSlot:Lcom/htc/camera/io/StorageSlot;

    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;->directoryCounter:Lcom/htc/camera/io/FileCounter;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/io/DCFUtility;->getDirectoryPath(Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/StorageSlot;Lcom/htc/camera/io/FileCounter;)Ljava/lang/String;

    move-result-object v0

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;->dcfInfo:Lcom/htc/camera/io/DCFInfo;

    iget-object v3, p0, Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;->fileCounter:Lcom/htc/camera/io/FileCounter;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/htc/camera/io/DCFUtility;->getFileName(Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileFormat;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    sget-object v2, Lcom/htc/camera/io/FileFormat;->Jpeg:Lcom/htc/camera/io/FileFormat;

    iget-object v2, v2, Lcom/htc/camera/io/FileFormat;->fileNameExtension:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    new-instance v2, Lcom/htc/camera/io/DCFPath;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;->directoryCounter:Lcom/htc/camera/io/FileCounter;

    iget-object v4, p0, Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;->fileCounter:Lcom/htc/camera/io/FileCounter;

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/htc/camera/io/DCFPath;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileCounter;)V

    return-object v2
.end method

.method protected bridge synthetic getAvailableFileName()Lcom/htc/camera/io/Path;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;->getAvailableFileName()Lcom/htc/camera/io/DCFPath;

    move-result-object v0

    return-object v0
.end method

.method protected prepareMediaStoreValues(Lcom/htc/camera/io/Path;)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 286
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 287
    iget-boolean v1, p0, Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;->isT0:Z

    if-eqz v1, :cond_0

    .line 288
    const-string v1, "htc_type"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 290
    :cond_0
    return-object v0
.end method
