.class public Lcom/mt/gifencoder/MTGIFEncoder;
.super Ljava/lang/Object;
.source "MTGIFEncoder.java"


# static fields
.field public static final BUNDLEKEY_HEIGHT:Ljava/lang/String; = "Height"

.field public static final BUNDLEKEY_TIMEDELAY:Ljava/lang/String; = "TimeDelay"

.field public static final BUNDLEKEY_WIDTH:Ljava/lang/String; = "Width"

.field public static final ERROR:J = -0x1L

.field private static final MAX_OUTPUT_HEIGHT:I = 0x258

.field private static final MAX_OUTPUT_WIDTH:I = 0x258

.field public static final NO_ERROR:J

.field private static mHeight:I

.field private static mTimeDelay:I

.field private static mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x190

    .line 34
    sput v0, Lcom/mt/gifencoder/MTGIFEncoder;->mWidth:I

    .line 35
    sput v0, Lcom/mt/gifencoder/MTGIFEncoder;->mHeight:I

    .line 36
    const/16 v0, 0x64

    sput v0, Lcom/mt/gifencoder/MTGIFEncoder;->mTimeDelay:I

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GIFEncoder(Ljava/util/ArrayList;Ljava/lang/String;Landroid/os/Bundle;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")J"
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    const/4 v3, 0x0

    .line 52
    if-eqz p2, :cond_0

    .line 53
    const-string v2, "Width"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/mt/gifencoder/MTGIFEncoder;->mWidth:I

    .line 54
    const-string v2, "Height"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/mt/gifencoder/MTGIFEncoder;->mHeight:I

    .line 55
    const-string v2, "TimeDelay"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/mt/gifencoder/MTGIFEncoder;->mTimeDelay:I

    .line 58
    :cond_0
    invoke-static {p0}, Lcom/mt/gifencoder/MTGIFEncoder;->getBitmapListFromPath(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v2

    .line 59
    if-nez v2, :cond_2

    .line 60
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 73
    :cond_1
    :goto_0
    return-wide v0

    .line 67
    :cond_2
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 68
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 69
    sget v3, Lcom/mt/gifencoder/MTGIFEncoder;->mTimeDelay:I

    invoke-static {p1, v2, v1, v0, v3}, Lcom/mt/image/ImageGif;->SaveBmp2Gif(Ljava/lang/String;Ljava/util/List;III)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_1
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static getBitmapListFromPath(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    if-nez p0, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    .line 86
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 87
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    move-object v0, v2

    .line 96
    goto :goto_0

    .line 89
    :cond_1
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v3, 0x258

    const/16 v4, 0x258

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4, v5}, Lcom/mt/image/ImageProcess;->PreviewBigPic(Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 90
    sget v3, Lcom/mt/gifencoder/MTGIFEncoder;->mWidth:I

    sget v4, Lcom/mt/gifencoder/MTGIFEncoder;->mHeight:I

    const/4 v5, 0x1

    invoke-static {v0, v3, v4, v5}, Lcom/mt/image/ImageProcess;->FittingWindow(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 91
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 92
    :catch_0
    move-exception v0

    goto :goto_2
.end method
