.class public Lcom/mt/mtgif/MyData;
.super Ljava/lang/Object;
.source "MyData.java"


# static fields
.field public static final MAX_OUTPUT_HEIGHT:I = 0xf0

.field public static final MAX_OUTPUT_WIDTH:I = 0xf0

.field public static MAX_SAVE_HEIGHT:I = 0x0

.field public static final MIN_OUTPUT_HEIGHT:I = 0xa0

.field public static final MIN_OUTPUT_WIDTH:I = 0xa0

.field public static PhotoPicNum:I

.field public static SavePicID:I

.field public static bmpSrc:I

.field public static comePic:I

.field public static curSelected:Ljava/lang/String;

.field public static isRotate:Z

.field public static mActivityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;>;"
        }
    .end annotation
.end field

.field public static mBitmapListShow:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public static mConfig:Landroid/graphics/Bitmap$Config;

.field public static mGifPicNum:I

.field public static mSaveGifPath:Ljava/lang/String;

.field public static nDensity:F

.field public static nScreenH:I

.field public static nScreenW:I

.field public static nSoftVersionCode:I

.field public static selectPic:[I

.field public static strPartner:Ljava/lang/String;

.field public static strSoftVersion:Ljava/lang/String;

.field public static strTempSDCardPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 28
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/mt/mtgif/MyData;->mConfig:Landroid/graphics/Bitmap$Config;

    .line 30
    const-string v0, "/MTGIF/"

    sput-object v0, Lcom/mt/mtgif/MyData;->mSaveGifPath:Ljava/lang/String;

    .line 31
    const-string v0, "/sdcard/MTGIF/.temp"

    sput-object v0, Lcom/mt/mtgif/MyData;->strTempSDCardPath:Ljava/lang/String;

    .line 33
    const/16 v0, 0xf0

    sput v0, Lcom/mt/mtgif/MyData;->MAX_SAVE_HEIGHT:I

    .line 41
    const/4 v0, 0x1

    sput v0, Lcom/mt/mtgif/MyData;->SavePicID:I

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mt/mtgif/MyData;->mBitmapListShow:Ljava/util/List;

    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mt/mtgif/MyData;->isRotate:Z

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mt/mtgif/MyData;->mActivityList:Ljava/util/List;

    .line 57
    sput v1, Lcom/mt/mtgif/MyData;->bmpSrc:I

    .line 61
    sput v1, Lcom/mt/mtgif/MyData;->comePic:I

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/MTGIF/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mt/mtgif/MyData;->mSaveGifPath:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mt/mtgif/MyData;->mSaveGifPath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mt/mtgif/MyData;->strTempSDCardPath:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanListShow()V
    .locals 2

    .prologue
    .line 70
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    sget-object v0, Lcom/mt/mtgif/MyData;->mBitmapListShow:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 77
    sget-object v0, Lcom/mt/mtgif/MyData;->mBitmapListShow:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 81
    :goto_1
    return-void

    .line 72
    :cond_0
    sget-object v0, Lcom/mt/mtgif/MyData;->mBitmapListShow:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mt/mtgif/MyData;->mBitmapListShow:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    sget-object v0, Lcom/mt/mtgif/MyData;->mBitmapListShow:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static releaseAll()V
    .locals 4

    .prologue
    .line 95
    :try_start_0
    invoke-static {}, Lcom/mt/mtgif/MyData;->cleanListShow()V

    .line 98
    sget-object v0, Lcom/mt/mtgif/MyData;->mActivityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 99
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 108
    :goto_1
    return-void

    .line 100
    :cond_0
    sget-object v0, Lcom/mt/mtgif/MyData;->mActivityList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 101
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 102
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    invoke-static {v0}, Lcom/mt/tools/MTDebug;->PrintError(Ljava/lang/Exception;)V

    goto :goto_1
.end method
