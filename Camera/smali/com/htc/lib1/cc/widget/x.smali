.class Lcom/htc/lib1/cc/widget/x;
.super Landroid/widget/TextView;
.source "HtcFadingEdgeTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method


# virtual methods
.method a(I)V
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/x;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 42
    invoke-virtual {p0, v0, p1}, Lcom/htc/lib1/cc/widget/x;->setTextAppearance(Landroid/content/Context;I)V

    .line 57
    return-void
.end method

.method a(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 60
    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/x;->setSingleLine(Z)V

    .line 62
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/x;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 63
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/x;->setMarqueeRepeatLimit(I)V

    .line 64
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/x;->setHorizontalFadingEdgeEnabled(Z)V

    .line 70
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/x;->setSingleLine(Z)V

    .line 67
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/x;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/x;->setHorizontalFadingEdgeEnabled(Z)V

    goto :goto_0
.end method
