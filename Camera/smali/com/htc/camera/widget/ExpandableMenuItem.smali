.class public Lcom/htc/camera/widget/ExpandableMenuItem;
.super Lcom/htc/camera/widget/ItemBase;
.source "ExpandableMenuItem.java"


# instance fields
.field iconButton:Lcom/htc/camera/widget/ExpandableMenuItem$IconButtonWrapper;

.field iconContainer:Landroid/widget/RelativeLayout;

.field iconMenu:Lcom/htc/camera/widget/ExpandableMenu;

.field private m_Icon:Landroid/graphics/drawable/Drawable;

.field private m_IsChecked:Z


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/htc/camera/widget/ItemBase;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/widget/ExpandableMenuItem;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/htc/camera/widget/ExpandableMenuItem;->onIconButtonTouched(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private final onIconButtonTouched(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenuItem;->iconMenu:Lcom/htc/camera/widget/ExpandableMenu;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenuItem;->iconMenu:Lcom/htc/camera/widget/ExpandableMenu;

    invoke-virtual {v0, p0, p1}, Lcom/htc/camera/widget/ExpandableMenu;->notifyItemTouched(Lcom/htc/camera/widget/ExpandableMenuItem;Landroid/view/MotionEvent;)V

    .line 108
    :cond_0
    return-void
.end method


# virtual methods
.method public final getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenuItem;->m_Icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getIconViewContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenuItem;->iconContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public final invalidate()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenuItem;->iconButton:Lcom/htc/camera/widget/ExpandableMenuItem$IconButtonWrapper;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenuItem;->iconButton:Lcom/htc/camera/widget/ExpandableMenuItem$IconButtonWrapper;

    invoke-virtual {v0}, Lcom/htc/camera/widget/ExpandableMenuItem$IconButtonWrapper;->invalidate()V

    .line 102
    :cond_0
    return-void
.end method

.method public final isChecked()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/htc/camera/widget/ExpandableMenuItem;->m_IsChecked:Z

    return v0
.end method

.method protected onEnabledChanged(Z)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenuItem;->iconButton:Lcom/htc/camera/widget/ExpandableMenuItem$IconButtonWrapper;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenuItem;->iconButton:Lcom/htc/camera/widget/ExpandableMenuItem$IconButtonWrapper;

    invoke-virtual {v0, p1}, Lcom/htc/camera/widget/ExpandableMenuItem$IconButtonWrapper;->setEnabled(Z)V

    .line 86
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Z)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenuItem;->iconContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 114
    iget-object v1, p0, Lcom/htc/camera/widget/ExpandableMenuItem;->iconContainer:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenuItem;->iconMenu:Lcom/htc/camera/widget/ExpandableMenu;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenuItem;->iconMenu:Lcom/htc/camera/widget/ExpandableMenu;

    invoke-virtual {v0}, Lcom/htc/camera/widget/ExpandableMenu;->requestLayout()V

    .line 118
    :cond_0
    return-void

    .line 114
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public final setIconColorOn(Z)V
    .locals 1

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/htc/camera/widget/ExpandableMenuItem;->m_IsChecked:Z

    .line 123
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenuItem;->iconButton:Lcom/htc/camera/widget/ExpandableMenuItem$IconButtonWrapper;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenuItem;->iconButton:Lcom/htc/camera/widget/ExpandableMenuItem$IconButtonWrapper;

    invoke-virtual {v0, p1}, Lcom/htc/camera/widget/ExpandableMenuItem$IconButtonWrapper;->setColorOn(Z)V

    .line 125
    :cond_0
    return-void
.end method

.method public final setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 132
    iput-object p1, p0, Lcom/htc/camera/widget/ExpandableMenuItem;->m_Icon:Landroid/graphics/drawable/Drawable;

    .line 133
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenuItem;->iconButton:Lcom/htc/camera/widget/ExpandableMenuItem$IconButtonWrapper;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenuItem;->iconButton:Lcom/htc/camera/widget/ExpandableMenuItem$IconButtonWrapper;

    invoke-virtual {v0, p1}, Lcom/htc/camera/widget/ExpandableMenuItem$IconButtonWrapper;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    :cond_0
    return-void
.end method
