.class public final Lcom/htc/camera/manualcapture/ExposureToggleButton;
.super Lcom/htc/camera/manualcapture/ToggleSeekBarButton;
.source "ExposureToggleButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/camera/manualcapture/ExposureToggleButton;->setButtonIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/htc/camera/manualcapture/ExposureToggleButton;->a(Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 42
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/manualcapture/ExposureToggleButton;->m_SeekBar:Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->isLightOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/camera/manualcapture/ExposureToggleButton;->setButtonContentDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    iget v0, p0, Lcom/htc/camera/manualcapture/ExposureToggleButton;->m_ButtonContentTextSize:I

    invoke-virtual {p0, p1, v0}, Lcom/htc/camera/manualcapture/ExposureToggleButton;->setButtonContentText(Ljava/lang/String;I)V

    .line 52
    :goto_0
    return-void

    .line 49
    :cond_1
    const-string v0, ""

    iget v1, p0, Lcom/htc/camera/manualcapture/ExposureToggleButton;->m_ButtonContentTextSize:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/manualcapture/ExposureToggleButton;->setButtonContentText(Ljava/lang/String;I)V

    .line 50
    const-string v0, "AUTO"

    iget v1, p0, Lcom/htc/camera/manualcapture/ExposureToggleButton;->m_ButtonContentTextSize:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/manualcapture/ExposureToggleButton;->setButtonContentText(Ljava/lang/String;I)V

    goto :goto_0
.end method
