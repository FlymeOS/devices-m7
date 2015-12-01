.class public Lcom/htc/camera/widget/AppListItem;
.super Landroid/widget/RelativeLayout;
.source "AppListItem.java"


# instance fields
.field private final m_ColorIcon:Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;

.field private final m_TextView:Lcom/htc/lib1/cc/widget/HtcListItem2LineText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 42
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/htc/camera/widget/AppListItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    const v0, 0x7f0e0063

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;

    iput-object v0, p0, Lcom/htc/camera/widget/AppListItem;->m_ColorIcon:Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;

    .line 50
    const v0, 0x7f0e0080

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;

    iput-object v0, p0, Lcom/htc/camera/widget/AppListItem;->m_TextView:Lcom/htc/lib1/cc/widget/HtcListItem2LineText;

    .line 52
    const v0, 0x7f0e0081

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    return-void
.end method


# virtual methods
.method public final setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/camera/widget/AppListItem;->m_ColorIcon:Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/camera/widget/AppListItem;->m_TextView:Lcom/htc/lib1/cc/widget/HtcListItem2LineText;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/htc/camera/widget/AppListItem;->m_TextView:Lcom/htc/lib1/cc/widget/HtcListItem2LineText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 70
    return-void
.end method
