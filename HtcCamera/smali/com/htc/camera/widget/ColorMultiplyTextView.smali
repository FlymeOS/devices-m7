.class public Lcom/htc/camera/widget/ColorMultiplyTextView;
.super Landroid/widget/TextView;
.source "ColorMultiplyTextView.java"


# instance fields
.field private m_ApplyColorMultiplication:Z

.field private m_OriginalColors:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method


# virtual methods
.method public final applyColorMultiplication(Z)V
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/htc/camera/widget/ColorMultiplyTextView;->m_ApplyColorMultiplication:Z

    if-eq v0, p1, :cond_1

    .line 31
    if-eqz p1, :cond_2

    .line 33
    invoke-virtual {p0}, Lcom/htc/camera/widget/ColorMultiplyTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/widget/ColorMultiplyTextView;->m_OriginalColors:Landroid/content/res/ColorStateList;

    .line 34
    invoke-virtual {p0}, Lcom/htc/camera/widget/ColorMultiplyTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/camera/widget/ColorMultiplyRenderer;->getMultiplyColor(Landroid/content/Context;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/htc/camera/widget/ColorMultiplyTextView;->m_ApplyColorMultiplication:Z

    .line 40
    :cond_1
    return-void

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/widget/ColorMultiplyTextView;->m_OriginalColors:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/htc/camera/widget/ColorMultiplyTextView;->m_OriginalColors:Landroid/content/res/ColorStateList;

    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/camera/widget/ColorMultiplyTextView;->m_ApplyColorMultiplication:Z

    if-nez v0, :cond_0

    .line 57
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    invoke-virtual {p0}, Lcom/htc/camera/widget/ColorMultiplyTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/widget/ColorMultiplyTextView;->m_OriginalColors:Landroid/content/res/ColorStateList;

    .line 62
    invoke-virtual {p0}, Lcom/htc/camera/widget/ColorMultiplyTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/camera/widget/ColorMultiplyRenderer;->getMultiplyColor(Landroid/content/Context;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/htc/camera/widget/ColorMultiplyTextView;->m_ApplyColorMultiplication:Z

    if-nez v0, :cond_0

    .line 49
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    iput-object p1, p0, Lcom/htc/camera/widget/ColorMultiplyTextView;->m_OriginalColors:Landroid/content/res/ColorStateList;

    goto :goto_0
.end method
