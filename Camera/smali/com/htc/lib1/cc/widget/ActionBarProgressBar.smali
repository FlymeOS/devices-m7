.class final Lcom/htc/lib1/cc/widget/ActionBarProgressBar;
.super Landroid/widget/ProgressBar;
.source "ActionBarProgressBar.java"

# interfaces
.implements Lcom/htc/lib1/cc/widget/f;


# instance fields
.field private mBaseLine:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "CommonControl"
        prefix = "actionbar"
    .end annotation
.end field

.field private mDrawableHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "CommonControl"
        prefix = "actionbar"
    .end annotation
.end field

.field private mDrawableWidth:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "CommonControl"
        prefix = "actionbar"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/lib1/cc/widget/ActionBarProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 38
    const v0, 0x1010077

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/lib1/cc/widget/ActionBarProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method


# virtual methods
.method public getBaseline()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/htc/lib1/cc/widget/ActionBarProgressBar;->mBaseLine:I

    if-gez v0, :cond_0

    .line 28
    invoke-super {p0}, Landroid/widget/ProgressBar;->getBaseline()I

    move-result v0

    .line 30
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/lib1/cc/widget/ActionBarProgressBar;->mBaseLine:I

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/htc/lib1/cc/widget/ActionBarProgressBar;->mDrawableHeight:I

    return v0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 71
    invoke-super {p0}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/htc/lib1/cc/widget/ActionBarProgressBar;->mDrawableWidth:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/htc/lib1/cc/widget/ActionBarProgressBar;->mDrawableHeight:I

    if-lez v1, :cond_0

    .line 73
    iget v1, p0, Lcom/htc/lib1/cc/widget/ActionBarProgressBar;->mDrawableWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 74
    iget v1, p0, Lcom/htc/lib1/cc/widget/ActionBarProgressBar;->mDrawableHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 76
    :cond_0
    return-object v0
.end method

.method public getReferenceStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-string v0, "U"

    return-object v0
.end method

.method public keepAlignBaseline()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public setBaseline(I)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lcom/htc/lib1/cc/widget/ActionBarProgressBar;->mBaseLine:I

    .line 82
    return-void
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/ActionBarProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/ActionBarProgressBar;->mDrawableWidth:I

    .line 55
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/ActionBarProgressBar;->mDrawableHeight:I

    .line 56
    iget v0, p0, Lcom/htc/lib1/cc/widget/ActionBarProgressBar;->mDrawableHeight:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/ActionBarProgressBar;->setBaseline(I)V

    .line 58
    :cond_0
    return-void
.end method
