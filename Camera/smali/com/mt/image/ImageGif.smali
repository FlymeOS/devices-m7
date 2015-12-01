.class public Lcom/mt/image/ImageGif;
.super Ljava/lang/Object;
.source "ImageGif.java"


# static fields
.field private static jni:Lcom/image/gif/JNI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/image/gif/JNI;

    invoke-direct {v0}, Lcom/image/gif/JNI;-><init>()V

    sput-object v0, Lcom/mt/image/ImageGif;->jni:Lcom/image/gif/JNI;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AddFrame([I[BII)Z
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/mt/image/ImageGif;->jni:Lcom/image/gif/JNI;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/image/gif/JNI;->EffectAdd([I[BII)V

    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public static ReadGifFrame(ILandroid/graphics/Bitmap;II)I
    .locals 2

    .prologue
    .line 21
    mul-int v0, p2, p3

    new-array v0, v0, [I

    .line 22
    sget-object v1, Lcom/mt/image/ImageGif;->jni:Lcom/image/gif/JNI;

    invoke-virtual {v1, v0, p0}, Lcom/image/gif/JNI;->ReadGifFrame([II)I

    move-result v1

    .line 23
    invoke-static {p1, v0}, Lcom/mt/image/ImageProcess;->ChangeBitmapData(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    .line 24
    return v1
.end method

.method public static ReadGifInfo(Ljava/lang/String;[I)Z
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcom/mt/image/ImageGif;->jni:Lcom/image/gif/JNI;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, p1, v1}, Lcom/image/gif/JNI;->ReadGifInfo(Ljava/lang/String;[II)V

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public static ReadGifRelease()Z
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/mt/image/ImageGif;->jni:Lcom/image/gif/JNI;

    invoke-virtual {v0}, Lcom/image/gif/JNI;->ReadGifRelease()V

    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public static Resample([III[BII)Z
    .locals 7

    .prologue
    .line 73
    sget-object v0, Lcom/mt/image/ImageGif;->jni:Lcom/image/gif/JNI;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/image/gif/JNI;->Resample([III[BII)V

    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public static SaveAsGif(Ljava/lang/String;[Ljava/lang/String;III)Z
    .locals 6

    .prologue
    .line 39
    sget-object v0, Lcom/mt/image/ImageGif;->jni:Lcom/image/gif/JNI;

    array-length v2, p1

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/image/gif/JNI;->SaveGifInit(Ljava/lang/String;IIII)V

    .line 40
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 46
    sget-object v0, Lcom/mt/image/ImageGif;->jni:Lcom/image/gif/JNI;

    invoke-virtual {v0}, Lcom/image/gif/JNI;->SaveGifFinish()V

    .line 47
    const/4 v0, 0x1

    return v0

    .line 41
    :cond_0
    aget-object v1, p1, v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2}, Lcom/mt/image/ImageProcess;->PreviewBigPic(Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 42
    invoke-static {v1}, Lcom/mt/image/ImageProcess;->bitmap2IntARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v2

    .line 43
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 44
    sget-object v1, Lcom/mt/image/ImageGif;->jni:Lcom/image/gif/JNI;

    invoke-virtual {v1, v2, v0}, Lcom/image/gif/JNI;->SaveGifAddFrame([II)V

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static SaveBmp2Gif(Ljava/lang/String;Ljava/util/List;III)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;III)Z"
        }
    .end annotation

    .prologue
    .line 54
    sget-object v0, Lcom/mt/image/ImageGif;->jni:Lcom/image/gif/JNI;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/image/gif/JNI;->SaveGifInit(Ljava/lang/String;IIII)V

    .line 56
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 63
    sget-object v0, Lcom/mt/image/ImageGif;->jni:Lcom/image/gif/JNI;

    invoke-virtual {v0}, Lcom/image/gif/JNI;->SaveGifFinish()V

    .line 64
    const/4 v0, 0x1

    return v0

    .line 58
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/mt/image/ImageProcess;->bitmap2IntARGB(Landroid/graphics/Bitmap;)[I

    move-result-object v0

    .line 60
    sget-object v2, Lcom/mt/image/ImageGif;->jni:Lcom/image/gif/JNI;

    invoke-virtual {v2, v0, v1}, Lcom/image/gif/JNI;->SaveGifAddFrame([II)V

    .line 56
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
