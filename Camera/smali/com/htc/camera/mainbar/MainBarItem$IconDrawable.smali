.class public abstract Lcom/htc/camera/mainbar/MainBarItem$IconDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MainBarItem.java"


# instance fields
.field protected m_Icon:Landroid/graphics/Bitmap;

.field protected m_Opts:Landroid/graphics/BitmapFactory$Options;

.field protected m_Paint:Landroid/graphics/Paint;

.field protected m_Res:Landroid/content/res/Resources;

.field final synthetic this$0:Lcom/htc/camera/mainbar/MainBarItem;


# direct methods
.method public constructor <init>(Lcom/htc/camera/mainbar/MainBarItem;Landroid/content/res/Resources;)V
    .locals 2

    .prologue
    .line 39
    iput-object p1, p0, Lcom/htc/camera/mainbar/MainBarItem$IconDrawable;->this$0:Lcom/htc/camera/mainbar/MainBarItem;

    .line 40
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/htc/camera/mainbar/MainBarItem$IconDrawable;->m_Res:Landroid/content/res/Resources;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem$IconDrawable;->m_Paint:Landroid/graphics/Paint;

    .line 43
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem$IconDrawable;->m_Opts:Landroid/graphics/BitmapFactory$Options;

    .line 44
    iget-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem$IconDrawable;->m_Opts:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 45
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    iget-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem$IconDrawable;->m_Icon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem$IconDrawable;->m_Icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem$IconDrawable;->m_Icon:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/htc/camera/mainbar/MainBarItem$IconDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 52
    :cond_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem$IconDrawable;->m_Icon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem$IconDrawable;->m_Icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem$IconDrawable;->m_Icon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem$IconDrawable;->m_Icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 87
    return-void
.end method
