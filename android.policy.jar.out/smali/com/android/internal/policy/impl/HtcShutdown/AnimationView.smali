.class public Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;
.super Landroid/widget/ImageView;
.source "AnimationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$1;,
        Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;,
        Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$ImageDecoder;,
        Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$OnAnimationListener;
    }
.end annotation


# static fields
.field private static final NEXT_FRAME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AnimationView"


# instance fields
.field private lastBitmap:Landroid/graphics/Bitmap;

.field private mAnimationListener:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$OnAnimationListener;

.field private mBitmapQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmapQueueL:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mDecodeIndex:I

.field private mDisplay:Landroid/view/Display;

.field private mEntryList:Ljava/util/Enumeration;

.field private mEntryListL:Ljava/util/Enumeration;

.field private mFPS:I

.field private mImgCount:I

.field private mImgCountL:I

.field private mInterval:I

.field private mMaxWait:I

.field private mStartTime:J

.field private final mThreadNums:I

.field private mTimeout:I

.field private nFramesDrawn:I

.field private nFramesToDraw:I

.field private nowBitmap:Landroid/graphics/Bitmap;

.field private zipFile:Ljava/util/zip/ZipFile;

.field private zipLandFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pathname"    # Ljava/lang/String;
    .param p3, "landPath"    # Ljava/lang/String;
    .param p4, "maxFPS"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 90
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 49
    iput v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nFramesDrawn:I

    .line 52
    iput v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nFramesToDraw:I

    .line 62
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mThreadNums:I

    .line 63
    iput v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mImgCount:I

    .line 64
    iput v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mImgCountL:I

    .line 65
    iput v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mCount:I

    .line 66
    iput v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mDecodeIndex:I

    .line 67
    iput v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mInterval:I

    .line 70
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mBitmapQueue:Ljava/util/Vector;

    .line 71
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mBitmapQueueL:Ljava/util/Vector;

    .line 77
    iput v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mTimeout:I

    .line 78
    iput v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mMaxWait:I

    .line 261
    iput-object v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mAnimationListener:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$OnAnimationListener;

    .line 92
    iput-object p1, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mContext:Landroid/content/Context;

    .line 93
    iput p4, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mFPS:I

    .line 94
    iget v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mFPS:I

    if-lez v3, :cond_2

    .line 95
    const/16 v3, 0x3e8

    iget v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mFPS:I

    div-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mInterval:I

    .line 99
    :goto_0
    const-string v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 101
    .local v1, "manager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mDisplay:Landroid/view/Display;

    .line 103
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    .line 104
    const-string v3, "AnimationView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Image PNG = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v3, "AnimationView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Image PNG land = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v3, "AnimationView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cust_Shutdown_animation: FPS> \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mFPS:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    iput-object v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->zipLandFile:Ljava/util/zip/ZipFile;

    .line 111
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, p2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->zipFile:Ljava/util/zip/ZipFile;

    .line 112
    iget-object v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->zipFile:Ljava/util/zip/ZipFile;

    iget-object v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mBitmapQueue:Ljava/util/Vector;

    invoke-direct {p0, v3, v4}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->enqueDecodeFiles(Ljava/util/zip/ZipFile;Ljava/util/Vector;)Z

    .line 113
    iget-object v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mEntryList:Ljava/util/Enumeration;

    .line 115
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 116
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v2, "tmp":Ljava/io/File;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, p3}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->zipLandFile:Ljava/util/zip/ZipFile;

    .line 119
    iget-object v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->zipLandFile:Ljava/util/zip/ZipFile;

    iget-object v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mBitmapQueueL:Ljava/util/Vector;

    invoke-direct {p0, v3, v4}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->enqueDecodeFiles(Ljava/util/zip/ZipFile;Ljava/util/Vector;)Z

    .line 120
    iget-object v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->zipLandFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mEntryListL:Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v2    # "tmp":Ljava/io/File;
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mBitmapQueue:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mImgCount:I

    .line 128
    iget-object v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mBitmapQueueL:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mImgCountL:I

    .line 129
    iget v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mImgCount:I

    iget v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mImgCountL:I

    if-le v3, v4, :cond_3

    iget v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mImgCount:I

    :goto_2
    iput v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mCount:I

    .line 130
    iget v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mInterval:I

    mul-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0xa

    iput v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mMaxWait:I

    .line 131
    invoke-direct {p0}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->startMultiThreadDecode()V

    .line 132
    return-void

    .line 97
    .end local v1    # "manager":Landroid/view/WindowManager;
    :cond_2
    const-string v3, "AnimationView"

    const-string v4, "mFPS value is not valid  !!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 123
    .restart local v1    # "manager":Landroid/view/WindowManager;
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 129
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    iget v3, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mImgCountL:I

    goto :goto_2
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mBitmapQueue:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mBitmapQueueL:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;)Ljava/util/Enumeration;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mEntryList:Ljava/util/Enumeration;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    .prologue
    .line 38
    iget v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mDecodeIndex:I

    return v0
.end method

.method static synthetic access$308(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    .prologue
    .line 38
    iget v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mDecodeIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mDecodeIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    .prologue
    .line 38
    iget v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mImgCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;)Ljava/util/zip/ZipFile;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->zipLandFile:Ljava/util/zip/ZipFile;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    .prologue
    .line 38
    iget v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mImgCountL:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;)Ljava/util/Enumeration;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mEntryListL:Ljava/util/Enumeration;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    .prologue
    .line 38
    iget v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;)Ljava/util/zip/ZipFile;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->zipFile:Ljava/util/zip/ZipFile;

    return-object v0
.end method

.method private controlFPS(JJ)V
    .locals 7
    .param p1, "mStartTime"    # J
    .param p3, "mEndTime"    # J

    .prologue
    .line 215
    sub-long v0, p3, p1

    .line 220
    .local v0, "cost":J
    iget v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mInterval:I

    long-to-int v5, v0

    sub-int v2, v4, v5

    .line 222
    .local v2, "delay":I
    if-lez v2, :cond_0

    .line 225
    int-to-long v4, v2

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v3

    .line 227
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v4, "AnimationView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delay time fail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 231
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_0
    iget v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mTimeout:I

    sub-int/2addr v4, v2

    iput v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mTimeout:I

    goto :goto_0
.end method

.method private enqueDecodeFiles(Ljava/util/zip/ZipFile;Ljava/util/Vector;)Z
    .locals 6
    .param p1, "zf"    # Ljava/util/zip/ZipFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            "Ljava/util/Vector",
            "<",
            "Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 400
    .local p2, "queue":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;>;"
    if-nez p1, :cond_0

    .line 401
    const-string v3, "AnimationView"

    const-string v4, "zip file doesn\'t exist, please check resource path."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const/4 v3, 0x0

    .line 421
    :goto_0
    return v3

    .line 405
    :cond_0
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 406
    .local v1, "entry_list":Ljava/util/Enumeration;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 407
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 408
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "desc.txt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 409
    new-instance v2, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;-><init>(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$1;)V

    .line 410
    .local v2, "mbp":Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;->name:Ljava/lang/String;

    .line 413
    invoke-virtual {p2, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 420
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .end local v2    # "mbp":Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;
    :cond_2
    const-string v3, "AnimationView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queue_count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private prepareDraw()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 277
    iget v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mTimeout:I

    iget v7, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mInterval:I

    if-lt v6, v7, :cond_0

    .line 278
    iput v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mTimeout:I

    .line 279
    const-string v6, "AnimationView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skip ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nFramesToDraw:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") to next frame, because playback speed is slower "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "than normal which is effected by the system performance!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nFramesToDraw:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nFramesToDraw:I

    .line 285
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mStartTime:J

    .line 286
    iget-object v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->zipLandFile:Ljava/util/zip/ZipFile;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    move v4, v5

    .line 290
    .local v4, "showL":Z
    :cond_1
    if-nez v4, :cond_2

    iget v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nFramesToDraw:I

    iget v7, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mImgCount:I

    if-ge v6, v7, :cond_3

    :cond_2
    if-eqz v4, :cond_5

    iget v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nFramesToDraw:I

    iget v7, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mImgCountL:I

    if-lt v6, v7, :cond_5

    .line 292
    :cond_3
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_4

    .line 293
    const-string v5, "AnimationView"

    const-string v6, "Notify HtcShutdownThread Shutdown_Animation Finished!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_4
    iget-object v5, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mAnimationListener:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$OnAnimationListener;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$OnAnimationListener;->onAnimationFinished()V

    .line 378
    :goto_0
    return-void

    .line 304
    :cond_5
    const/4 v2, 0x0

    .line 305
    .local v2, "mbmp":Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;
    const/4 v3, 0x0

    .line 307
    .local v3, "mbmpL":Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;
    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v6, :cond_6

    .line 308
    const-string v6, "AnimationView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "nFramesDrawn = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nFramesDrawn:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", nFramesToDraw="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nFramesToDraw:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_6
    iget-object v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nowBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_7

    .line 311
    iget-object v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 314
    :cond_7
    iput-object v9, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nowBitmap:Landroid/graphics/Bitmap;

    .line 315
    const/4 v1, 0x0

    .line 316
    .local v1, "maxTimes":I
    iget v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nFramesToDraw:I

    iget v7, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mImgCount:I

    if-ge v6, v7, :cond_8

    .line 317
    iget-object v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mBitmapQueue:Ljava/util/Vector;

    iget v7, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nFramesToDraw:I

    invoke-virtual {v6, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "mbmp":Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;
    check-cast v2, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;

    .line 319
    .restart local v2    # "mbmp":Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;
    :cond_8
    iget-object v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->zipLandFile:Ljava/util/zip/ZipFile;

    if-eqz v6, :cond_9

    iget v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nFramesToDraw:I

    iget v7, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mImgCountL:I

    if-ge v6, v7, :cond_9

    .line 320
    iget-object v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mBitmapQueueL:Ljava/util/Vector;

    iget v7, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nFramesToDraw:I

    invoke-virtual {v6, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "mbmpL":Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;
    check-cast v3, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;

    .line 324
    .restart local v3    # "mbmpL":Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;
    :cond_9
    if-eqz v4, :cond_f

    if-eqz v3, :cond_f

    .line 325
    :goto_1
    iget-boolean v6, v3, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;->ready:Z

    if-nez v6, :cond_a

    iget v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mMaxWait:I

    if-ge v1, v6, :cond_a

    .line 327
    const-wide/16 v6, 0xa

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "ex":Ljava/lang/Exception;
    const-string v6, "AnimationView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wait for land bitmap,delay time fail: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 333
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_a
    iget-object v6, v3, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;->bitmap:Landroid/graphics/Bitmap;

    iput-object v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nowBitmap:Landroid/graphics/Bitmap;

    .line 336
    if-eqz v2, :cond_b

    iget-object v6, v2, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_b

    .line 337
    iget-object v6, v2, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 338
    iput-object v9, v2, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 358
    :cond_b
    :goto_3
    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v6, :cond_c

    .line 359
    const-string v6, "AnimationView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "maxTimes="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_c
    iget v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mMaxWait:I

    if-lt v1, v6, :cond_d

    .line 362
    const-string v6, "AnimationView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skip ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nFramesToDraw:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")to next frame due to image decode timeout, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "which is effected by the system performance!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_d
    iget v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nFramesToDraw:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nFramesToDraw:I

    .line 367
    iget v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nFramesDrawn:I

    if-ne v6, v5, :cond_e

    iget-object v5, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nowBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_e

    .line 368
    iget-object v5, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mAnimationListener:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$OnAnimationListener;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$OnAnimationListener;->onAnimationReady()V

    .line 369
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_e

    .line 370
    const-string v5, "AnimationView"

    const-string v6, "Ok, HtcShutdownThread is running!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->invalidate()V

    goto/16 :goto_0

    .line 340
    :cond_f
    if-nez v4, :cond_b

    if-eqz v2, :cond_b

    .line 341
    :goto_4
    iget-boolean v6, v2, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;->ready:Z

    if-nez v6, :cond_10

    iget v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mMaxWait:I

    if-ge v1, v6, :cond_10

    .line 343
    const-wide/16 v6, 0xa

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 347
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 344
    :catch_1
    move-exception v0

    .line 345
    .restart local v0    # "ex":Ljava/lang/Exception;
    const-string v6, "AnimationView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wait for bitmap,delay time fail: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 349
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_10
    iget-object v6, v2, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;->bitmap:Landroid/graphics/Bitmap;

    iput-object v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nowBitmap:Landroid/graphics/Bitmap;

    .line 352
    if-eqz v3, :cond_b

    iget-object v6, v3, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_b

    .line 353
    iget-object v6, v3, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 354
    iput-object v9, v3, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;->bitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_3
.end method

.method private startMultiThreadDecode()V
    .locals 4

    .prologue
    .line 381
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    .line 382
    const-string v2, "AnimationView"

    const-string v3, "startMultiThreadDecode ===>"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->zipFile:Ljava/util/zip/ZipFile;

    if-nez v2, :cond_2

    .line 384
    const-string v2, "AnimationView"

    const-string v3, "The png zip file doesn\'t exist, please check resource path."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_1
    return-void

    .line 387
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->zipLandFile:Ljava/util/zip/ZipFile;

    if-nez v2, :cond_3

    .line 388
    const-string v2, "AnimationView"

    const-string v3, "The png land zip file doesn\'t exist, please check resource path."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_3
    new-instance v1, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$ImageDecoder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$ImageDecoder;-><init>(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$1;)V

    .line 392
    .local v1, "imageDecoder":Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$ImageDecoder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 393
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 392
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 146
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x0

    .line 161
    iget-object v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nowBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    .line 163
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    const/4 v0, 0x1

    .line 165
    .local v0, "bLand":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 166
    iget-object v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 167
    .local v4, "rotation":I
    const/4 v6, 0x3

    if-ne v4, v6, :cond_3

    const/16 v1, -0x10e

    .line 168
    .local v1, "degree":I
    :goto_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v5, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 169
    .local v5, "w":I
    iget-object v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v3, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 170
    .local v3, "h":I
    int-to-float v6, v1

    div-int/lit8 v7, v5, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v3, 0x2

    int-to-float v8, v8

    invoke-virtual {p1, v6, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 171
    sub-int v6, v5, v3

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-int v7, v5, v3

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v0    # "bLand":Z
    .end local v1    # "degree":I
    .end local v3    # "h":I
    .end local v4    # "rotation":I
    .end local v5    # "w":I
    :cond_0
    :goto_2
    iget-object v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nowBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v9, v9, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 178
    iget-wide v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mStartTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->controlFPS(JJ)V

    .line 179
    iget v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nFramesDrawn:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->nFramesDrawn:I

    .line 209
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->prepareDraw()V

    .line 210
    return-void

    .line 163
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 167
    .restart local v0    # "bLand":Z
    .restart local v4    # "rotation":I
    :cond_3
    const/16 v1, -0x5a

    goto :goto_1

    .line 173
    .end local v0    # "bLand":Z
    .end local v4    # "rotation":I
    :catch_0
    move-exception v2

    .line 174
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public setOnAnimationListener(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$OnAnimationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$OnAnimationListener;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mAnimationListener:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$OnAnimationListener;

    .line 270
    return-void
.end method
