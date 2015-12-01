.class public Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BubbleDrawable.java"


# instance fields
.field mBody:Landroid/graphics/drawable/Drawable;

.field mBodyBounds:Landroid/graphics/Rect;

.field mGravity:I

.field mMargin:I

.field mOffset:I

.field mShift:I

.field mTriangle:Landroid/graphics/drawable/Drawable;

.field mTriangleBounds:Landroid/graphics/Rect;

.field mTrianglePadding:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    .prologue
    const/4 v0, 0x6

    .line 42
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 39
    iput v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mShift:I

    .line 40
    iput v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mMargin:I

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mBodyBounds:Landroid/graphics/Rect;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mTriangleBounds:Landroid/graphics/Rect;

    .line 45
    const/16 v0, 0x30

    iput v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mGravity:I

    .line 47
    if-nez p1, :cond_0

    .line 54
    :cond_0
    return-void
.end method

.method private setBodyDrawableGravity(I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 250
    iput p1, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mGravity:I

    .line 252
    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 254
    iget-object v3, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mBodyBounds:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->top:I

    const/16 v0, 0x30

    and-int/lit8 v5, p1, 0x30

    if-ne v0, v5, :cond_2

    iget v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mTrianglePadding:I

    :goto_0
    add-int/2addr v0, v4

    iput v0, v3, Landroid/graphics/Rect;->top:I

    .line 255
    iget-object v3, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mBodyBounds:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    const/16 v0, 0x50

    and-int/lit8 v5, p1, 0x50

    if-ne v0, v5, :cond_3

    iget v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mTrianglePadding:I

    :goto_1
    sub-int v0, v4, v0

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 256
    iget-object v3, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mBodyBounds:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    const/4 v0, 0x3

    and-int/lit8 v5, p1, 0x3

    if-ne v0, v5, :cond_4

    iget v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mTrianglePadding:I

    :goto_2
    add-int/2addr v0, v4

    iput v0, v3, Landroid/graphics/Rect;->left:I

    .line 257
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mBodyBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    const/4 v3, 0x5

    and-int/lit8 v4, p1, 0x5

    if-ne v3, v4, :cond_0

    iget v1, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mTrianglePadding:I

    :cond_0
    sub-int v1, v2, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 258
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mBody:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mBody:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mBodyBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 260
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 254
    goto :goto_0

    :cond_3
    move v0, v1

    .line 255
    goto :goto_1

    :cond_4
    move v0, v1

    .line 256
    goto :goto_2
.end method

.method private setTriangleBounds()V
    .locals 5

    .prologue
    const/16 v4, 0x30

    .line 263
    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 265
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mTriangleBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 266
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mTriangleBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mTriangleBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 267
    iget-object v2, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mTriangleBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mGravity:I

    and-int/lit8 v0, v0, 0x30

    if-ne v4, v0, :cond_1

    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->getOffset()I

    move-result v0

    neg-int v0, v0

    :goto_0
    add-int/2addr v0, v3

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 268
    iget-object v2, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mTriangleBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mGravity:I

    and-int/lit8 v0, v0, 0x30

    if-ne v4, v0, :cond_2

    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->getOffset()I

    move-result v0

    neg-int v0, v0

    :goto_1
    add-int/2addr v0, v3

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 269
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mTriangleBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 270
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mTriangleBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 272
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mTriangle:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mTriangle:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mTriangleBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 274
    :cond_0
    return-void

    .line 267
    :cond_1
    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->getOffset()I

    move-result v0

    goto :goto_0

    .line 268
    :cond_2
    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->getOffset()I

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 120
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mBody:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 122
    const/16 v0, 0x50

    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->getGravity()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 123
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 131
    :cond_0
    :goto_0
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 134
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 135
    return-void

    .line 124
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->getGravity()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 125
    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_0

    .line 126
    :cond_2
    const/4 v0, 0x5

    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->getGravity()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 127
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mGravity:I

    return v0
.end method

.method final getMinScreenMargin(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 310
    if-nez p1, :cond_0

    .line 320
    :goto_0
    return-void

    .line 313
    :cond_0
    invoke-virtual {p0, p1}, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 314
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    .line 315
    iget v1, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mMargin:I

    add-int/2addr v0, v1

    .line 316
    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 317
    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 318
    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 319
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mOffset:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 4

    .prologue
    .line 205
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mBody:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 206
    const/4 v0, 0x0

    .line 219
    :goto_0
    return v0

    .line 208
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 210
    iget-object v1, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mBody:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 211
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 212
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 214
    const/16 v0, 0x30

    iget v3, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mGravity:I

    and-int/lit8 v3, v3, 0x30

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_1
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 215
    const/16 v0, 0x50

    iget v3, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mGravity:I

    and-int/lit8 v3, v3, 0x50

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_2
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 216
    const/4 v0, 0x3

    iget v3, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mGravity:I

    and-int/lit8 v3, v3, 0x3

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_3
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 217
    const/4 v0, 0x5

    iget v3, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mGravity:I

    and-int/lit8 v3, v3, 0x5

    if-ne v0, v3, :cond_4

    :goto_4
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 219
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 214
    goto :goto_1

    :cond_2
    move v0, v2

    .line 215
    goto :goto_2

    :cond_3
    move v0, v2

    .line 216
    goto :goto_3

    :cond_4
    move v1, v2

    .line 217
    goto :goto_4
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    const/4 v3, 0x6

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 72
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 74
    const-string v0, "BubbleDrawable"

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 83
    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 84
    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mBody:Landroid/graphics/drawable/Drawable;

    .line 85
    invoke-virtual {v7, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mShift:I

    .line 86
    const/4 v0, 0x2

    invoke-virtual {v7, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mMargin:I

    .line 88
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 89
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 90
    const v0, 0x7f02014d

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 92
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mTriangle:Landroid/graphics/drawable/Drawable;

    .line 93
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mTriangle:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 94
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    iget v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mShift:I

    invoke-virtual {p0, v0}, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->setShift(I)V

    goto :goto_0

    .line 77
    nop

    :array_0
    .array-data 4
        0x10100d4
        0x10100d5
        0x10100f6
        0x1010199
    .end array-data
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 188
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 190
    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->getGravity()I

    move-result v0

    invoke-direct {p0, v0}, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->setBodyDrawableGravity(I)V

    .line 191
    invoke-direct {p0}, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->setTriangleBounds()V

    .line 192
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mBody:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 162
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mBody:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 175
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 176
    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .prologue
    .line 241
    iput p1, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mGravity:I

    .line 242
    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->getGravity()I

    move-result v0

    invoke-direct {p0, v0}, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->setBodyDrawableGravity(I)V

    .line 243
    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->invalidateSelf()V

    .line 244
    return-void
.end method

.method final setMargin(I)V
    .locals 0

    .prologue
    .line 349
    iput p1, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mMargin:I

    .line 350
    return-void
.end method

.method public setOffset(I)V
    .locals 0

    .prologue
    .line 298
    iput p1, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mOffset:I

    .line 300
    invoke-direct {p0}, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->setTriangleBounds()V

    .line 301
    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->invalidateSelf()V

    .line 302
    return-void
.end method

.method final setShift(I)V
    .locals 2

    .prologue
    .line 333
    iput p1, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mShift:I

    .line 335
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mShift:I

    sub-int/2addr v0, v1

    iput v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->mTrianglePadding:I

    .line 336
    return-void
.end method
