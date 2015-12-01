.class public final Lcom/htc/camera/manualcapture/WBToggleButton;
.super Lcom/htc/camera/manualcapture/ToggleSeekBarButton;
.source "WBToggleButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/camera/manualcapture/WBToggleButton;->setButtonIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    const-string v0, "-1"

    invoke-virtual {p0, v0}, Lcom/htc/camera/manualcapture/WBToggleButton;->a(Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 42
    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget v0, p0, Lcom/htc/camera/manualcapture/WBToggleButton;->m_ButtonContentTextSize:I

    invoke-virtual {p0, p1, v0}, Lcom/htc/camera/manualcapture/WBToggleButton;->setButtonContentText(Ljava/lang/String;I)V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    const-string v0, "AUTO"

    iget v1, p0, Lcom/htc/camera/manualcapture/WBToggleButton;->m_ButtonContentTextSize:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/manualcapture/WBToggleButton;->setButtonContentText(Ljava/lang/String;I)V

    goto :goto_0
.end method
