.class public Lcom/htc/camera/gl/DrawableBrush;
.super Lcom/htc/camera/gl/BitmapBrushBase;
.source "DrawableBrush.java"


# instance fields
.field private m_Drawable:Landroid/graphics/drawable/Drawable;

.field private m_HasInternalBitmap:Z

.field private final m_MinSize:Lcom/htc/camera/imaging/Size;

.field private m_Orientation:I

.field private final m_Size:Lcom/htc/camera/imaging/Size;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/camera/gl/BitmapBrushBase;-><init>()V

    .line 20
    new-instance v0, Lcom/htc/camera/imaging/Size;

    invoke-direct {v0}, Lcom/htc/camera/imaging/Size;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/gl/DrawableBrush;->m_MinSize:Lcom/htc/camera/imaging/Size;

    .line 22
    new-instance v0, Lcom/htc/camera/imaging/Size;

    invoke-direct {v0}, Lcom/htc/camera/imaging/Size;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/gl/DrawableBrush;->m_Size:Lcom/htc/camera/imaging/Size;

    .line 30
    if-nez p1, :cond_0

    .line 32
    const-string v0, "context"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 37
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/gl/DrawableBrush;->m_Drawable:Landroid/graphics/drawable/Drawable;

    .line 38
    iget-object v0, p0, Lcom/htc/camera/gl/DrawableBrush;->m_MinSize:Lcom/htc/camera/imaging/Size;

    iget-object v1, p0, Lcom/htc/camera/gl/DrawableBrush;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    iput v1, v0, Lcom/htc/camera/imaging/Size;->width:I

    .line 39
    iget-object v0, p0, Lcom/htc/camera/gl/DrawableBrush;->m_MinSize:Lcom/htc/camera/imaging/Size;

    iget-object v1, p0, Lcom/htc/camera/gl/DrawableBrush;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    iput v1, v0, Lcom/htc/camera/imaging/Size;->height:I

    .line 40
    iget-object v0, p0, Lcom/htc/camera/gl/DrawableBrush;->m_Size:Lcom/htc/camera/imaging/Size;

    iget-object v1, p0, Lcom/htc/camera/gl/DrawableBrush;->m_MinSize:Lcom/htc/camera/imaging/Size;

    iget v1, v1, Lcom/htc/camera/imaging/Size;->width:I

    iput v1, v0, Lcom/htc/camera/imaging/Size;->width:I

    .line 41
    iget-object v0, p0, Lcom/htc/camera/gl/DrawableBrush;->m_Size:Lcom/htc/camera/imaging/Size;

    iget-object v1, p0, Lcom/htc/camera/gl/DrawableBrush;->m_MinSize:Lcom/htc/camera/imaging/Size;

    iget v1, v1, Lcom/htc/camera/imaging/Size;->height:I

    iput v1, v0, Lcom/htc/camera/imaging/Size;->height:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/htc/camera/gl/BitmapBrushBase;-><init>()V

    .line 20
    new-instance v0, Lcom/htc/camera/imaging/Size;

    invoke-direct {v0}, Lcom/htc/camera/imaging/Size;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/gl/DrawableBrush;->m_MinSize:Lcom/htc/camera/imaging/Size;

    .line 22
    new-instance v0, Lcom/htc/camera/imaging/Size;

    invoke-direct {v0}, Lcom/htc/camera/imaging/Size;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/gl/DrawableBrush;->m_Size:Lcom/htc/camera/imaging/Size;

    .line 46
    if-nez p1, :cond_0

    .line 48
    const-string v0, "drawable"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 53
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/gl/DrawableBrush;->m_Drawable:Landroid/graphics/drawable/Drawable;

    .line 54
    iget-object v0, p0, Lcom/htc/camera/gl/DrawableBrush;->m_MinSize:Lcom/htc/camera/imaging/Size;

    iget-object v1, p0, Lcom/htc/camera/gl/DrawableBrush;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    iput v1, v0, Lcom/htc/camera/imaging/Size;->width:I

    .line 55
    iget-object v0, p0, Lcom/htc/camera/gl/DrawableBrush;->m_MinSize:Lcom/htc/camera/imaging/Size;

    iget-object v1, p0, Lcom/htc/camera/gl/DrawableBrush;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    iput v1, v0, Lcom/htc/camera/imaging/Size;->height:I

    .line 56
    iget-object v0, p0, Lcom/htc/camera/gl/DrawableBrush;->m_Size:Lcom/htc/camera/imaging/Size;

    iget-object v1, p0, Lcom/htc/camera/gl/DrawableBrush;->m_MinSize:Lcom/htc/camera/imaging/Size;

    iget v1, v1, Lcom/htc/camera/imaging/Size;->width:I

    iput v1, v0, Lcom/htc/camera/imaging/Size;->width:I

    .line 57
    iget-object v0, p0, Lcom/htc/camera/gl/DrawableBrush;->m_Size:Lcom/htc/camera/imaging/Size;

    iget-object v1, p0, Lcom/htc/camera/gl/DrawableBrush;->m_MinSize:Lcom/htc/camera/imaging/Size;

    iget v1, v1, Lcom/htc/camera/imaging/Size;->height:I

    iput v1, v0, Lcom/htc/camera/imaging/Size;->height:I

    .line 58
    return-void
.end method

.method private createInternalBitmap()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 66
    iget-boolean v0, p0, Lcom/htc/camera/gl/DrawableBrush;->m_HasInternalBitmap:Z

    if-eqz v0, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/gl/DrawableBrush;->m_Size:Lcom/htc/camera/imaging/Size;

    iget v0, v0, Lcom/htc/camera/imaging/Size;->width:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/gl/DrawableBrush;->m_Size:Lcom/htc/camera/imaging/Size;

    iget v0, v0, Lcom/htc/camera/imaging/Size;->height:I

    if-lez v0, :cond_0

    .line 78
    :try_start_0
    iget v0, p0, Lcom/htc/camera/gl/DrawableBrush;->m_Orientation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/htc/camera/gl/DrawableBrush;->m_Orientation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_4

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/gl/DrawableBrush;->m_Size:Lcom/htc/camera/imaging/Size;

    iget v3, v0, Lcom/htc/camera/imaging/Size;->height:I

    .line 81
    iget-object v0, p0, Lcom/htc/camera/gl/DrawableBrush;->m_Size:Lcom/htc/camera/imaging/Size;

    iget v4, v0, Lcom/htc/camera/imaging/Size;->width:I

    .line 90
    :goto_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 91
    :try_start_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 92
    iget-object v2, p0, Lcom/htc/camera/gl/DrawableBrush;->m_Drawable:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 93
    iget-object v2, p0, Lcom/htc/camera/gl/DrawableBrush;->m_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 96
    iget v1, p0, Lcom/htc/camera/gl/DrawableBrush;->m_Orientation:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_5

    move-object v2, v0

    .line 104
    :goto_2
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/htc/camera/gl/DrawableBrush;->updateBitmap(Landroid/graphics/Bitmap;)V

    .line 105
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/camera/gl/DrawableBrush;->m_HasInternalBitmap:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 113
    if-eqz v0, :cond_3

    .line 114
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 115
    :cond_3
    if-eqz v2, :cond_0

    .line 116
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 85
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/htc/camera/gl/DrawableBrush;->m_Size:Lcom/htc/camera/imaging/Size;

    iget v3, v0, Lcom/htc/camera/imaging/Size;->width:I

    .line 86
    iget-object v0, p0, Lcom/htc/camera/gl/DrawableBrush;->m_Size:Lcom/htc/camera/imaging/Size;

    iget v4, v0, Lcom/htc/camera/imaging/Size;->height:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 100
    :cond_5
    :try_start_4
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 101
    iget v1, p0, Lcom/htc/camera/gl/DrawableBrush;->m_Orientation:I

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 102
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v2

    goto :goto_2

    .line 107
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 109
    :goto_3
    :try_start_5
    iget-object v2, p0, Lcom/htc/camera/gl/DrawableBrush;->TAG:Ljava/lang/String;

    const-string v3, "createInternalBitmap() - Fail to create bitmap"

    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 113
    if-eqz v7, :cond_6

    .line 114
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 115
    :cond_6
    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_4
    if-eqz v1, :cond_7

    .line 114
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 115
    :cond_7
    if-eqz v7, :cond_8

    .line 116
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 113
    :cond_8
    throw v0

    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v7, v2

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v8, v1

    move-object v1, v7

    move-object v7, v8

    goto :goto_4

    .line 107
    :catch_1
    move-exception v1

    move-object v8, v1

    move-object v1, v7

    move-object v7, v0

    move-object v0, v8

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v7, v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_3
.end method


# virtual methods
.method protected onBeginDrawFragment(I[F)V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/htc/camera/gl/DrawableBrush;->createInternalBitmap()V

    .line 167
    invoke-super {p0, p1, p2}, Lcom/htc/camera/gl/BitmapBrushBase;->onBeginDrawFragment(I[F)V

    .line 168
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0}, Lcom/htc/camera/gl/BitmapBrushBase;->release()V

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/gl/DrawableBrush;->m_Drawable:Landroid/graphics/drawable/Drawable;

    .line 178
    return-void
.end method

.method public final setOrientation(I)V
    .locals 2

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/htc/camera/gl/DrawableBrush;->threadAccessCheck()V

    .line 230
    invoke-virtual {p0}, Lcom/htc/camera/gl/DrawableBrush;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/htc/camera/gl/DrawableBrush;->TAG:Ljava/lang/String;

    const-string v1, "setSize() - Brush is released"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget v0, p0, Lcom/htc/camera/gl/DrawableBrush;->m_Orientation:I

    if-eq p1, v0, :cond_0

    .line 241
    sparse-switch p1, :sswitch_data_0

    .line 251
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 247
    :sswitch_0
    iput p1, p0, Lcom/htc/camera/gl/DrawableBrush;->m_Orientation:I

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/gl/DrawableBrush;->m_HasInternalBitmap:Z

    goto :goto_0

    .line 241
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method public final setSize(II)V
    .locals 3

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/htc/camera/gl/DrawableBrush;->threadAccessCheck()V

    .line 198
    invoke-virtual {p0}, Lcom/htc/camera/gl/DrawableBrush;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/htc/camera/gl/DrawableBrush;->TAG:Ljava/lang/String;

    const-string v1, "setSize() - Brush is released"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/gl/DrawableBrush;->m_MinSize:Lcom/htc/camera/imaging/Size;

    iget v0, v0, Lcom/htc/camera/imaging/Size;->width:I

    if-ge p1, v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/htc/camera/gl/DrawableBrush;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSize() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is less than minimum width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/gl/DrawableBrush;->m_MinSize:Lcom/htc/camera/imaging/Size;

    iget v2, v2, Lcom/htc/camera/imaging/Size;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/gl/DrawableBrush;->m_MinSize:Lcom/htc/camera/imaging/Size;

    iget v0, v0, Lcom/htc/camera/imaging/Size;->height:I

    if-ge p1, v0, :cond_3

    .line 208
    iget-object v0, p0, Lcom/htc/camera/gl/DrawableBrush;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSize() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is less than minimum height "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/gl/DrawableBrush;->m_MinSize:Lcom/htc/camera/imaging/Size;

    iget v2, v2, Lcom/htc/camera/imaging/Size;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/gl/DrawableBrush;->m_Size:Lcom/htc/camera/imaging/Size;

    iget v0, v0, Lcom/htc/camera/imaging/Size;->width:I

    if-ne v0, p1, :cond_4

    iget-object v0, p0, Lcom/htc/camera/gl/DrawableBrush;->m_Size:Lcom/htc/camera/imaging/Size;

    iget v0, v0, Lcom/htc/camera/imaging/Size;->height:I

    if-eq v0, p2, :cond_0

    .line 213
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/gl/DrawableBrush;->m_Size:Lcom/htc/camera/imaging/Size;

    iput p1, v0, Lcom/htc/camera/imaging/Size;->width:I

    .line 214
    iget-object v0, p0, Lcom/htc/camera/gl/DrawableBrush;->m_Size:Lcom/htc/camera/imaging/Size;

    iput p2, v0, Lcom/htc/camera/imaging/Size;->height:I

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/gl/DrawableBrush;->m_HasInternalBitmap:Z

    goto :goto_0
.end method
