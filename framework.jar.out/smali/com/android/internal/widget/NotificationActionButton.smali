.class public Lcom/android/internal/widget/NotificationActionButton;
.super Landroid/widget/Button;
.source "NotificationActionButton.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final DEBUG_ITEM_STYLE:Z = false

.field private static final TAG:Ljava/lang/String; = "NotificationActionButton"


# instance fields
.field private mLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionButton;->isInAllCapsLocale()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationActionButton;->setAllCaps(Z)V

    .line 29
    return-void
.end method

.method private isInAllCapsLocale()Z
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/utils/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 51
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 52
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionButton;->getTextSize()F

    move-result v1

    .line 53
    .local v1, "textSize":F
    const/high16 v0, -0x1000000

    .line 54
    .local v0, "textColor":I
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 58
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/NotificationActionButton;->mContext:Landroid/content/Context;

    const v3, 0x203005b

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/NotificationActionButton;->setTextAppearance(Landroid/content/Context;I)V

    .line 59
    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/NotificationActionButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 60
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/widget/NotificationActionButton;->setTextSize(IF)V

    .line 61
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationActionButton;->setTextColor(I)V

    .line 66
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/widget/Button;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 43
    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionButton;->mLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/internal/widget/NotificationActionButton;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    :cond_0
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/internal/widget/NotificationActionButton;->mLocale:Ljava/util/Locale;

    .line 45
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionButton;->isInAllCapsLocale()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationActionButton;->setAllCaps(Z)V

    .line 47
    :cond_1
    return-void
.end method
