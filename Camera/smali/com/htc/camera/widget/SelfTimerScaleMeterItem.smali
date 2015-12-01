.class public Lcom/htc/camera/widget/SelfTimerScaleMeterItem;
.super Lcom/htc/camera/widget/ScaleMeterItem;
.source "SelfTimerScaleMeterItem.java"


# instance fields
.field private final m_SelfTimerValues:[Lcom/htc/camera/Duration;

.field private m_TextViewValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 37
    invoke-direct {p0, p1, v4, v3}, Lcom/htc/camera/widget/ScaleMeterItem;-><init>(Landroid/content/Context;II)V

    .line 25
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "0  "

    aput-object v1, v0, v3

    const-string v1, " 2"

    aput-object v1, v0, v5

    const-string v1, "   5"

    aput-object v1, v0, v6

    const-string v1, "10"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/htc/camera/widget/SelfTimerScaleMeterItem;->m_TextViewValues:[Ljava/lang/String;

    .line 26
    new-array v0, v2, [Lcom/htc/camera/Duration;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lcom/htc/camera/Duration;->fromSeconds(J)Lcom/htc/camera/Duration;

    move-result-object v1

    aput-object v1, v0, v3

    const-wide/16 v1, 0x2

    invoke-static {v1, v2}, Lcom/htc/camera/Duration;->fromSeconds(J)Lcom/htc/camera/Duration;

    move-result-object v1

    aput-object v1, v0, v5

    const-wide/16 v1, 0x5

    invoke-static {v1, v2}, Lcom/htc/camera/Duration;->fromSeconds(J)Lcom/htc/camera/Duration;

    move-result-object v1

    aput-object v1, v0, v6

    const-wide/16 v1, 0xa

    invoke-static {v1, v2}, Lcom/htc/camera/Duration;->fromSeconds(J)Lcom/htc/camera/Duration;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/htc/camera/widget/SelfTimerScaleMeterItem;->m_SelfTimerValues:[Lcom/htc/camera/Duration;

    .line 39
    invoke-virtual {p0}, Lcom/htc/camera/widget/SelfTimerScaleMeterItem;->getTitleBar()Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 40
    invoke-direct {p0}, Lcom/htc/camera/widget/SelfTimerScaleMeterItem;->setTextViews()V

    .line 41
    return-void
.end method

.method private setSelfTimerValue()V
    .locals 4

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/htc/camera/widget/SelfTimerScaleMeterItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/htc/camera/widget/SelfTimerScaleMeterItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_MAIN_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    iget-object v2, p0, Lcom/htc/camera/widget/SelfTimerScaleMeterItem;->m_SelfTimerValues:[Lcom/htc/camera/Duration;

    invoke-virtual {p0}, Lcom/htc/camera/widget/SelfTimerScaleMeterItem;->getLevel()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/widget/SelfTimerScaleMeterItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_FRONT_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    iget-object v2, p0, Lcom/htc/camera/widget/SelfTimerScaleMeterItem;->m_SelfTimerValues:[Lcom/htc/camera/Duration;

    invoke-virtual {p0}, Lcom/htc/camera/widget/SelfTimerScaleMeterItem;->getLevel()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setTextViews()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v1, 0x0

    const/4 v7, -0x2

    .line 48
    iget-object v0, p0, Lcom/htc/camera/widget/SelfTimerScaleMeterItem;->TAG:Ljava/lang/String;

    const-string v2, "setTextViews() - start"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/htc/camera/widget/SelfTimerScaleMeterItem;->getScaleTextColumn()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v0, v1

    .line 54
    :goto_0
    if-gt v0, v8, :cond_1

    .line 56
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/camera/widget/SelfTimerScaleMeterItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    invoke-direct {v3, v7, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 63
    invoke-virtual {p0}, Lcom/htc/camera/widget/SelfTimerScaleMeterItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0293

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 65
    iget-object v4, p0, Lcom/htc/camera/widget/SelfTimerScaleMeterItem;->m_TextViewValues:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p0}, Lcom/htc/camera/widget/SelfTimerScaleMeterItem;->getScaleTextColumn()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    if-eq v0, v8, :cond_0

    .line 71
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/htc/camera/widget/SelfTimerScaleMeterItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 77
    invoke-virtual {p0}, Lcom/htc/camera/widget/SelfTimerScaleMeterItem;->getScaleTextColumn()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/widget/SelfTimerScaleMeterItem;->TAG:Ljava/lang/String;

    const-string v1, "setTextViews() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method


# virtual methods
.method public onLevelChanged()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/htc/camera/widget/SelfTimerScaleMeterItem;->setSelfTimerValue()V

    .line 90
    invoke-super {p0}, Lcom/htc/camera/widget/ScaleMeterItem;->onLevelChanged()V

    .line 91
    return-void
.end method

.method public updateLevel()I
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/htc/camera/widget/SelfTimerScaleMeterItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/htc/camera/widget/SelfTimerScaleMeterItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_MAIN_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Duration;

    .line 125
    :goto_0
    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v0

    long-to-int v0, v0

    sparse-switch v0, :sswitch_data_0

    .line 137
    const/4 v0, 0x0

    .line 141
    :goto_1
    return v0

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/widget/SelfTimerScaleMeterItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_FRONT_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Duration;

    goto :goto_0

    .line 128
    :sswitch_0
    const/4 v0, 0x1

    .line 129
    goto :goto_1

    .line 131
    :sswitch_1
    const/4 v0, 0x2

    .line 132
    goto :goto_1

    .line 134
    :sswitch_2
    const/4 v0, 0x3

    .line 135
    goto :goto_1

    .line 125
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x5 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method
