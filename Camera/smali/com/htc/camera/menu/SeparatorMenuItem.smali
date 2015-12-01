.class public Lcom/htc/camera/menu/SeparatorMenuItem;
.super Lcom/htc/camera/menu/MenuItem;
.source "SeparatorMenuItem.java"


# instance fields
.field private m_stringResId:I


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/htc/camera/menu/MenuItem;-><init>(Lcom/htc/camera/HTCCamera;)V

    .line 33
    iput p2, p0, Lcom/htc/camera/menu/SeparatorMenuItem;->m_stringResId:I

    .line 34
    return-void
.end method


# virtual methods
.method protected getViewOverride(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;
    .locals 4

    .prologue
    .line 43
    if-nez p4, :cond_0

    .line 45
    new-instance v1, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;

    invoke-direct {v1, p1}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 47
    invoke-virtual {v1, v0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->setBackgroundStyle(I)V

    .line 49
    new-instance v0, Lcom/htc/camera/menu/SeparatorMenuItem$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/menu/SeparatorMenuItem$1;-><init>(Lcom/htc/camera/menu/SeparatorMenuItem;)V

    invoke-virtual {v1, v0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_0
    move-object v0, v1

    .line 60
    check-cast v0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;

    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/camera/menu/SeparatorMenuItem;->m_stringResId:I

    invoke-virtual {v0, v2, v3}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->setText(II)V

    .line 63
    return-object v1

    :cond_0
    move-object v1, p4

    goto :goto_0
.end method

.method public isCustomView()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method
