.class public Lcom/htc/camera/widget/MakeUpScaleMeterItem;
.super Lcom/htc/camera/widget/ScaleMeterItem;
.source "MakeUpScaleMeterItem.java"


# instance fields
.field private m_TextViewValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0, v2}, Lcom/htc/camera/widget/ScaleMeterItem;-><init>(Landroid/content/Context;II)V

    .line 24
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0  "

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "2  "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "4  "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, " 6 "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "  8"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "10"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/camera/widget/MakeUpScaleMeterItem;->m_TextViewValues:[Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Lcom/htc/camera/widget/MakeUpScaleMeterItem;->getTitleBar()Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 33
    invoke-direct {p0}, Lcom/htc/camera/widget/MakeUpScaleMeterItem;->setTextViews()V

    .line 34
    return-void
.end method

.method public static mapFromLevel(I)F
    .locals 2

    .prologue
    .line 94
    int-to-float v0, p0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static mapToLevel(F)I
    .locals 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 84
    cmpg-float v2, p0, v0

    if-gez v2, :cond_1

    move p0, v0

    .line 89
    :cond_0
    :goto_0
    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    .line 86
    :cond_1
    cmpl-float v0, p0, v1

    if-lez v0, :cond_0

    move p0, v1

    .line 87
    goto :goto_0
.end method

.method private setMakeUpValue()V
    .locals 4

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/htc/camera/widget/MakeUpScaleMeterItem;->getLevel()I

    move-result v0

    invoke-static {v0}, Lcom/htc/camera/widget/MakeUpScaleMeterItem;->mapFromLevel(I)F

    move-result v1

    .line 114
    iget-object v0, p0, Lcom/htc/camera/widget/MakeUpScaleMeterItem;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",getLevel():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/camera/widget/MakeUpScaleMeterItem;->getLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/htc/camera/widget/MakeUpScaleMeterItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/htc/camera/widget/MakeUpScaleMeterItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    sget-object v2, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v2, Lcom/htc/camera/CameraSettings;->PROPERTY_MAIN_FACE_BEAUTIFIER_LEVEL:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/widget/MakeUpScaleMeterItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    sget-object v2, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v2, Lcom/htc/camera/CameraSettings;->PROPERTY_FRONT_FACE_BEAUTIFIER_LEVEL:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setTextViews()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, -0x2

    .line 41
    iget-object v0, p0, Lcom/htc/camera/widget/MakeUpScaleMeterItem;->TAG:Ljava/lang/String;

    const-string v2, "setTextViews() - start"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/htc/camera/widget/MakeUpScaleMeterItem;->getScaleTextColumn()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v0, v1

    .line 47
    :goto_0
    iget-object v2, p0, Lcom/htc/camera/widget/MakeUpScaleMeterItem;->m_TextViewValues:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 49
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/camera/widget/MakeUpScaleMeterItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    invoke-direct {v3, v7, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 56
    invoke-virtual {p0}, Lcom/htc/camera/widget/MakeUpScaleMeterItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0293

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 58
    iget-object v4, p0, Lcom/htc/camera/widget/MakeUpScaleMeterItem;->m_TextViewValues:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p0}, Lcom/htc/camera/widget/MakeUpScaleMeterItem;->getScaleTextColumn()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    iget-object v2, p0, Lcom/htc/camera/widget/MakeUpScaleMeterItem;->m_TextViewValues:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_0

    .line 65
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/htc/camera/widget/MakeUpScaleMeterItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 66
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 72
    invoke-virtual {p0}, Lcom/htc/camera/widget/MakeUpScaleMeterItem;->getScaleTextColumn()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/widget/MakeUpScaleMeterItem;->TAG:Ljava/lang/String;

    const-string v1, "setTextViews() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method


# virtual methods
.method public onLevelChanged()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/htc/camera/widget/MakeUpScaleMeterItem;->setMakeUpValue()V

    .line 103
    invoke-super {p0}, Lcom/htc/camera/widget/ScaleMeterItem;->onLevelChanged()V

    .line 104
    return-void
.end method

.method public updateLevel()I
    .locals 2

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/htc/camera/widget/MakeUpScaleMeterItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/htc/camera/widget/MakeUpScaleMeterItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_MAIN_FACE_BEAUTIFIER_LEVEL:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 141
    :goto_0
    invoke-static {v0}, Lcom/htc/camera/widget/MakeUpScaleMeterItem;->mapToLevel(F)I

    move-result v0

    return v0

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/widget/MakeUpScaleMeterItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_FRONT_FACE_BEAUTIFIER_LEVEL:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0
.end method
