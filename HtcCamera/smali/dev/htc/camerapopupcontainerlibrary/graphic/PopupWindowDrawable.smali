.class public Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;
.super Landroid/graphics/drawable/StateListDrawable;
.source "PopupWindowDrawable.java"


# static fields
.field private static final ABOVE_ANCHOR_STATE_SET:[I

.field private static final ZERO_STATE_SET:[I


# instance fields
.field mAbove:Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;

.field mBlow:Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;

.field mPadding:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100aa

    aput v1, v0, v2

    sput-object v0, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->ABOVE_ANCHOR_STATE_SET:[I

    .line 34
    new-array v0, v2, [I

    sput-object v0, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->ZERO_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->mPadding:Landroid/graphics/Rect;

    .line 43
    return-void
.end method

.method public static parseXML2Drawable(Landroid/content/res/Resources;Ljava/lang/String;ILandroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 53
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    if-nez p3, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 61
    :cond_2
    :try_start_0
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 63
    :cond_3
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 67
    invoke-virtual {p3, p0, v0, v1}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    .line 70
    :catch_1
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getMinScreenMargin(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 179
    if-nez p1, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->mAbove:Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->mAbove:Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;

    invoke-virtual {v0, p1}, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->getMinScreenMargin(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 185
    :cond_2
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->mBlow:Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->mAbove:Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;

    invoke-virtual {v0, p1}, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->getMinScreenMargin(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->mAbove:Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->mAbove:Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;

    invoke-virtual {v0}, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->getOffset()I

    move-result v0

    .line 138
    :goto_0
    return v0

    .line 136
    :cond_0
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->mBlow:Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->mBlow:Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;

    invoke-virtual {v0}, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->getOffset()I

    move-result v0

    goto :goto_0

    .line 138
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 2

    .prologue
    .line 166
    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->mAbove:Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;

    if-ne v0, v1, :cond_0

    .line 167
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->mAbove:Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;

    invoke-virtual {v0, p1}, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    .line 170
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->mBlow:Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;

    invoke-virtual {v0, p1}, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 81
    new-array v1, v9, [I

    fill-array-data v1, :array_0

    .line 88
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    .line 91
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v8, :cond_4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ge v3, v2, :cond_1

    if-eq v0, v9, :cond_4

    .line 93
    :cond_1
    if-gt v3, v2, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "BubbleDrawable"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v3

    .line 99
    if-lez v3, :cond_0

    .line 103
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 104
    invoke-virtual {v3, v7, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->ABOVE_ANCHOR_STATE_SET:[I

    .line 105
    :goto_1
    const/16 v4, 0x30

    invoke-virtual {v3, v8, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    .line 106
    const/4 v5, 0x2

    invoke-virtual {v3, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 107
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 110
    new-instance v3, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;

    invoke-direct {v3, p1}, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;-><init>(Landroid/content/res/Resources;)V

    .line 111
    const-string v6, "BubbleDrawable"

    invoke-static {p1, v6, v5, v3}, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->parseXML2Drawable(Landroid/content/res/Resources;Ljava/lang/String;ILandroid/graphics/drawable/Drawable;)V

    .line 112
    invoke-virtual {v3, v4}, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->setGravity(I)V

    .line 113
    invoke-virtual {p0, v0, v3}, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 115
    sget-object v4, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->ABOVE_ANCHOR_STATE_SET:[I

    invoke-static {v4, v0}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 116
    iput-object v3, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->mBlow:Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;

    .line 117
    :cond_2
    sget-object v4, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->ZERO_STATE_SET:[I

    invoke-static {v4, v0}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iput-object v3, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->mAbove:Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;

    goto :goto_0

    .line 104
    :cond_3
    sget-object v0, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->ZERO_STATE_SET:[I

    goto :goto_1

    .line 120
    :cond_4
    return-void

    .line 81
    nop

    :array_0
    .array-data 4
        0x10100aa
        0x10100af
        0x1010199
    .end array-data
.end method

.method public final setMargin(I)V
    .locals 2

    .prologue
    .line 240
    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 241
    if-eqz v0, :cond_0

    instance-of v1, v0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;

    if-eqz v1, :cond_0

    .line 242
    check-cast v0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;

    invoke-virtual {v0, p1}, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->setMargin(I)V

    .line 243
    :cond_0
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->mAbove:Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->mAbove:Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;

    invoke-virtual {v0, p1}, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->setMargin(I)V

    .line 245
    :cond_1
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->mBlow:Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->mBlow:Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;

    invoke-virtual {v0, p1}, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->setMargin(I)V

    .line 247
    :cond_2
    return-void
.end method

.method public setOffset(I)V
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->getOffset()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 147
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->mAbove:Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->mAbove:Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;

    invoke-virtual {v0, p1}, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->setOffset(I)V

    .line 149
    :cond_0
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->mBlow:Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->mBlow:Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;

    invoke-virtual {v0, p1}, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->setOffset(I)V

    .line 151
    :cond_1
    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->invalidateSelf()V

    .line 153
    :cond_2
    return-void
.end method

.method public final setShift(I)V
    .locals 2

    .prologue
    .line 211
    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_0

    instance-of v1, v0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;

    if-eqz v1, :cond_0

    .line 213
    check-cast v0, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;

    invoke-virtual {v0, p1}, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->setShift(I)V

    .line 214
    :cond_0
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->mAbove:Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->mAbove:Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;

    invoke-virtual {v0, p1}, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->setShift(I)V

    .line 216
    :cond_1
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->mBlow:Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->mBlow:Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;

    invoke-virtual {v0, p1}, Ldev/htc/camerapopupcontainerlibrary/graphic/BubbleDrawable;->setShift(I)V

    .line 218
    :cond_2
    return-void
.end method
