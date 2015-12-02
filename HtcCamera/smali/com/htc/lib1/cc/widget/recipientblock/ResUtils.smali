.class public Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;
.super Ljava/lang/Object;
.source "ResUtils.java"


# static fields
.field private static sCompoundDrawablePadding:I

.field private static sDevicePortraitWidth:I

.field private static sHtcFooterBarHeight:I

.field private static sHtcFooterBarLandWidth:I

.field private static sListItemHeight:I

.field private static sMarginLInPixel:I

.field private static sMarginMInPixel:I

.field private static sMarginSInPixel:I

.field private static sMarginSpacingInPixel:I

.field private static sMarginXSInPixel:I

.field private static sRecipientContainerPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/high16 v0, -0x80000000

    .line 11
    sput v0, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->sMarginXSInPixel:I

    .line 12
    sput v0, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->sMarginSInPixel:I

    .line 13
    sput v0, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->sMarginMInPixel:I

    .line 14
    sput v0, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->sMarginLInPixel:I

    .line 15
    sput v0, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->sMarginSpacingInPixel:I

    .line 16
    sput v0, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->sHtcFooterBarLandWidth:I

    .line 17
    sput v0, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->sHtcFooterBarHeight:I

    .line 18
    sput v0, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->sDevicePortraitWidth:I

    .line 19
    sput v0, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->sListItemHeight:I

    .line 20
    sput v0, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->sCompoundDrawablePadding:I

    .line 30
    sput v0, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->sRecipientContainerPadding:I

    return-void
.end method

.method protected static getCompoundDrawablePadding(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 40
    sget v0, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->sCompoundDrawablePadding:I

    if-gtz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/d;->margin_xs:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->sCompoundDrawablePadding:I

    .line 43
    :cond_0
    sget v0, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->sCompoundDrawablePadding:I

    return v0
.end method

.method protected static getDimenHtcFooterBarHeight(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 90
    sget v0, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->sHtcFooterBarLandWidth:I

    if-gtz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/d;->htc_footer_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->sHtcFooterBarLandWidth:I

    .line 93
    :cond_0
    sget v0, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->sHtcFooterBarLandWidth:I

    .line 98
    :goto_0
    return v0

    .line 95
    :cond_1
    sget v0, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->sHtcFooterBarHeight:I

    if-gtz v0, :cond_2

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/d;->htc_footer_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->sHtcFooterBarHeight:I

    .line 98
    :cond_2
    sget v0, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->sHtcFooterBarHeight:I

    goto :goto_0
.end method

.method protected static getDimenMarginM1(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 54
    sget v0, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->sMarginLInPixel:I

    if-gtz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/d;->margin_l:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->sMarginLInPixel:I

    .line 57
    :cond_0
    sget v0, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->sMarginLInPixel:I

    return v0
.end method

.method protected static getDimenMarginM2(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 61
    sget v0, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->sMarginMInPixel:I

    if-gtz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/d;->margin_m:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->sMarginMInPixel:I

    .line 64
    :cond_0
    sget v0, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->sMarginMInPixel:I

    return v0
.end method

.method protected static getRecipientContainerPadding(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 47
    sget v0, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->sRecipientContainerPadding:I

    if-gtz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/d;->margin_l:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->sRecipientContainerPadding:I

    .line 50
    :cond_0
    sget v0, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->sRecipientContainerPadding:I

    return v0
.end method
