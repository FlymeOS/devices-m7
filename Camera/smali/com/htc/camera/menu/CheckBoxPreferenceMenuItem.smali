.class public Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;
.super Lcom/htc/camera/menu/CheckBoxMenuItem;
.source "CheckBoxPreferenceMenuItem.java"


# instance fields
.field private final m_PreferenceKey:Ljava/lang/String;

.field private final m_SummaryOff:I

.field private final m_SummaryOn:I


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 24
    const v4, 0x7f0801a3

    const v5, 0x7f0801a4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;III)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;III)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/htc/camera/menu/CheckBoxMenuItem;-><init>(Lcom/htc/camera/HTCCamera;II)V

    .line 29
    iput-object p2, p0, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;->m_PreferenceKey:Ljava/lang/String;

    .line 30
    iput p4, p0, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;->m_SummaryOn:I

    .line 31
    iput p5, p0, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;->m_SummaryOff:I

    .line 32
    return-void
.end method


# virtual methods
.method protected getViewOverride(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;
    .locals 4

    .prologue
    .line 41
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/camera/menu/CheckBoxMenuItem;->getViewOverride(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 44
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/menu/CheckBoxMenuItem$ItemViewInfo;

    .line 45
    iget-object v1, v0, Lcom/htc/camera/menu/CheckBoxMenuItem$ItemViewInfo;->textViews:Lcom/htc/lib1/cc/widget/HtcListItem2LineText;

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;->m_SummaryOn:I

    .line 48
    :goto_0
    if-eqz v1, :cond_2

    .line 50
    iget-object v0, v0, Lcom/htc/camera/menu/CheckBoxMenuItem$ItemViewInfo;->textViews:Lcom/htc/lib1/cc/widget/HtcListItem2LineText;

    invoke-virtual {p0}, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;->getTitle()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-super {p0, v0, v3, v1}, Lcom/htc/camera/menu/CheckBoxMenuItem;->setText(Lcom/htc/lib1/cc/widget/HtcListItem2LineText;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    :cond_0
    :goto_1
    return-object v2

    .line 47
    :cond_1
    iget v1, p0, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;->m_SummaryOff:I

    goto :goto_0

    .line 53
    :cond_2
    iget-object v0, v0, Lcom/htc/camera/menu/CheckBoxMenuItem$ItemViewInfo;->textViews:Lcom/htc/lib1/cc/widget/HtcListItem2LineText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onClicked()Z
    .locals 3

    .prologue
    .line 66
    invoke-super {p0}, Lcom/htc/camera/menu/CheckBoxMenuItem;->onClicked()Z

    .line 67
    invoke-virtual {p0}, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    iget-object v1, p0, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;->m_PreferenceKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public updateContent()V
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    iget-object v1, p0, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;->m_PreferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;->setChecked(Z)V

    .line 78
    invoke-super {p0}, Lcom/htc/camera/menu/CheckBoxMenuItem;->updateContent()V

    .line 79
    return-void
.end method
