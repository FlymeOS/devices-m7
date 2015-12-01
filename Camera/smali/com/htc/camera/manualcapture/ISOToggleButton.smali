.class public final Lcom/htc/camera/manualcapture/ISOToggleButton;
.super Lcom/htc/camera/manualcapture/ToggleSeekBarButton;
.source "ISOToggleButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/camera/manualcapture/ISOToggleButton;->setButtonIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/camera/manualcapture/ISOToggleButton;->a(I)V

    .line 35
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    .prologue
    .line 42
    if-ltz p1, :cond_0

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/camera/manualcapture/ISOToggleButton;->setButtonContentDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/htc/camera/manualcapture/ISOToggleButton;->m_ButtonContentTextSize:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/manualcapture/ISOToggleButton;->setButtonContentText(Ljava/lang/String;I)V

    .line 52
    :goto_0
    return-void

    .line 49
    :cond_0
    const-string v0, ""

    const/16 v1, 0x36

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/manualcapture/ISOToggleButton;->setButtonContentText(Ljava/lang/String;I)V

    .line 50
    const-string v0, "AUTO"

    iget v1, p0, Lcom/htc/camera/manualcapture/ISOToggleButton;->m_ButtonContentTextSize:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/manualcapture/ISOToggleButton;->setButtonContentText(Ljava/lang/String;I)V

    goto :goto_0
.end method
