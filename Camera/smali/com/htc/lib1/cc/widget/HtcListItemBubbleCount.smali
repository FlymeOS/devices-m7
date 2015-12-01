.class public Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;
.super Landroid/view/View;
.source "HtcListItemBubbleCount.java"


# static fields
.field private static fontHeight:F

.field private static fontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private static isTextPaintInited:Z

.field private static sObserver:Ljava/util/Observer;

.field private static sPaint:Landroid/text/TextPaint;


# instance fields
.field private mBubbleWidth:I

.field private mContext:Landroid/content/Context;

.field private mText:Ljava/lang/String;

.field private mUpperBound:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->sPaint:Landroid/text/TextPaint;

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 26
    const/4 v0, 0x0

    sput v0, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->fontHeight:F

    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->isTextPaintInited:Z

    .line 29
    new-instance v0, Lcom/htc/lib1/cc/widget/aa;

    invoke-direct {v0}, Lcom/htc/lib1/cc/widget/aa;-><init>()V

    sput-object v0, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->sObserver:Ljava/util/Observer;

    .line 38
    const/4 v0, 0x6

    sget-object v1, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->sObserver:Ljava/util/Observer;

    invoke-static {v0, v1}, Lcom/htc/lib1/cc/util/HtcCommonUtil;->addObserver(ILjava/util/Observer;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->mContext:Landroid/content/Context;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->mBubbleWidth:I

    .line 129
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->mUpperBound:I

    .line 67
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->init(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .prologue
    .line 21
    sput-boolean p0, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->isTextPaintInited:Z

    return p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 43
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->setVisibility(I)V

    .line 45
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->mContext:Landroid/content/Context;

    .line 47
    sget-boolean v0, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->isTextPaintInited:Z

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->mContext:Landroid/content/Context;

    sget v1, Lcom/htc/lib1/cc/k;->fixed_notification_info_m:I

    sget-object v2, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->sPaint:Landroid/text/TextPaint;

    invoke-static {v0, v1, v2}, Lcom/htc/lib1/cc/util/res/HtcResUtil;->setTextAppearance(Landroid/content/Context;ILandroid/text/TextPaint;)V

    .line 50
    sget-object v0, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->sPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 51
    sget-object v0, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 52
    sget-object v0, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->sPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    sput-object v0, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 53
    sget-object v0, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sget-object v1, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, v1

    sput v0, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->fontHeight:F

    .line 55
    sput-boolean v3, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->isTextPaintInited:Z

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->mText:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    sget v3, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->fontHeight:F

    sub-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    sget-object v1, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float v5, v0, v1

    .line 203
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->mText:Ljava/lang/String;

    if-nez v0, :cond_1

    move v3, v2

    .line 205
    :goto_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->mText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 206
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->mText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    sget-object v6, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->sPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 210
    :cond_0
    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 186
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->mBubbleWidth:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sget v1, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->fontHeight:F

    float-to-int v1, v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->setMeasuredDimension(II)V

    .line 188
    return-void
.end method

.method public setBubbleCount(I)V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->mText:Ljava/lang/String;

    .line 136
    if-gtz p1, :cond_1

    .line 137
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->mText:Ljava/lang/String;

    .line 143
    :goto_0
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->mText:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    sget-object v0, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->sPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->mBubbleWidth:I

    .line 145
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->mText:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->setVisibility(I)V

    .line 146
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->requestLayout()V

    .line 147
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->invalidate()V

    .line 149
    :cond_0
    return-void

    .line 138
    :cond_1
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->mUpperBound:I

    if-ge p1, v1, :cond_2

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->mText:Ljava/lang/String;

    goto :goto_0

    .line 141
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->mUpperBound:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "+)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->mText:Ljava/lang/String;

    goto :goto_0

    .line 145
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setBubbleCount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 175
    invoke-static {p0, p1}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->setViewOpacity(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public setPadding(IIII)V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public setUpperBound(I)V
    .locals 1

    .prologue
    .line 156
    if-lez p1, :cond_0

    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_0

    .line 157
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->mUpperBound:I

    .line 158
    :cond_0
    return-void
.end method
