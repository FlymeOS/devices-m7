.class public final Lcom/htc/camera/manualcapture/FocusToggleButton;
.super Lcom/htc/camera/manualcapture/ToggleSeekBarButton;
.source "FocusToggleButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/camera/manualcapture/FocusToggleButton;->setButtonIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/camera/manualcapture/FocusToggleButton;->a(I)V

    .line 32
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 39
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 41
    const-string v0, "AUTO"

    iget v1, p0, Lcom/htc/camera/manualcapture/FocusToggleButton;->m_ButtonContentTextSize:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/manualcapture/FocusToggleButton;->setButtonContentText(Ljava/lang/String;I)V

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    const-string v0, "M"

    iget v1, p0, Lcom/htc/camera/manualcapture/FocusToggleButton;->m_ButtonContentTextSize:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/manualcapture/FocusToggleButton;->setButtonContentText(Ljava/lang/String;I)V

    goto :goto_0
.end method
