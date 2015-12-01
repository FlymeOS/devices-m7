.class public Lcom/htc/camera/gl/BitmapBrush;
.super Lcom/htc/camera/gl/BitmapBrushBase;
.source "BitmapBrush.java"


# instance fields
.field private final m_IsWritable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/camera/gl/BitmapBrushBase;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/gl/BitmapBrush;->m_IsWritable:Z

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/htc/camera/gl/BitmapBrushBase;-><init>()V

    .line 27
    if-nez p1, :cond_0

    .line 29
    const-string v0, "bitmap"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 34
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/gl/BitmapBrush;->m_IsWritable:Z

    .line 35
    invoke-virtual {p0, p1}, Lcom/htc/camera/gl/BitmapBrush;->updateBitmap(Landroid/graphics/Bitmap;)V

    .line 36
    return-void
.end method
