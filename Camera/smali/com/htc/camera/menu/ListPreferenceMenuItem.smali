.class public Lcom/htc/camera/menu/ListPreferenceMenuItem;
.super Lcom/htc/camera/menu/MenuItem;
.source "ListPreferenceMenuItem.java"


# instance fields
.field private final m_DefaultValue:Ljava/lang/String;

.field private final m_DisplayValues:I

.field private final m_Items:[Lcom/htc/camera/menu/MenuItem;

.field private final m_PreferenceKey:Ljava/lang/String;

.field private final m_Resources:Landroid/content/res/Resources;

.field private final m_Values:[Ljava/lang/String;

.field private final m_showSummary:Z


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 4

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/htc/camera/menu/MenuItem;-><init>(Lcom/htc/camera/HTCCamera;II)V

    .line 27
    iput-object p2, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_PreferenceKey:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_Resources:Landroid/content/res/Resources;

    .line 29
    iget-object v0, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_Resources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_Values:[Ljava/lang/String;

    .line 30
    iput p5, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_DisplayValues:I

    .line 31
    iput-object p6, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_DefaultValue:Ljava/lang/String;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_showSummary:Z

    .line 35
    iget-object v0, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_Values:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Lcom/htc/camera/menu/MenuItem;

    iput-object v0, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_Items:[Lcom/htc/camera/menu/MenuItem;

    .line 36
    iget-object v0, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_Items:[Lcom/htc/camera/menu/MenuItem;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 37
    iget-object v1, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_Items:[Lcom/htc/camera/menu/MenuItem;

    new-instance v2, Lcom/htc/camera/menu/ListPreferenceValueMenuItem;

    iget-object v3, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_Values:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-direct {v2, p1, p0, v3}, Lcom/htc/camera/menu/ListPreferenceValueMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/menu/ListPreferenceMenuItem;Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 36
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_Items:[Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {p0, v0}, Lcom/htc/camera/menu/ListPreferenceMenuItem;->setItems([Lcom/htc/camera/menu/MenuItem;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;IIILjava/lang/String;Z)V
    .locals 4

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/htc/camera/menu/MenuItem;-><init>(Lcom/htc/camera/HTCCamera;II)V

    .line 44
    iput-object p2, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_PreferenceKey:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_Resources:Landroid/content/res/Resources;

    .line 46
    iget-object v0, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_Resources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_Values:[Ljava/lang/String;

    .line 47
    iput p5, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_DisplayValues:I

    .line 48
    iput-object p6, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_DefaultValue:Ljava/lang/String;

    .line 49
    iput-boolean p7, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_showSummary:Z

    .line 52
    iget-object v0, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_Values:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Lcom/htc/camera/menu/MenuItem;

    iput-object v0, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_Items:[Lcom/htc/camera/menu/MenuItem;

    .line 53
    iget-object v0, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_Items:[Lcom/htc/camera/menu/MenuItem;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 54
    iget-object v1, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_Items:[Lcom/htc/camera/menu/MenuItem;

    new-instance v2, Lcom/htc/camera/menu/ListPreferenceValueMenuItem;

    iget-object v3, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_Values:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-direct {v2, p1, p0, v3}, Lcom/htc/camera/menu/ListPreferenceValueMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/menu/ListPreferenceMenuItem;Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 53
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_Items:[Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {p0, v0}, Lcom/htc/camera/menu/ListPreferenceMenuItem;->setItems([Lcom/htc/camera/menu/MenuItem;)V

    .line 57
    return-void
.end method


# virtual methods
.method protected checkSubItemVisibility(Lcom/htc/camera/menu/MenuItem;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method protected onSubItemClicked(Lcom/htc/camera/menu/MenuItem;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/htc/camera/menu/ListPreferenceMenuItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    iget-object v1, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_PreferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {p0}, Lcom/htc/camera/menu/ListPreferenceMenuItem;->updateContent()V

    .line 73
    return-void
.end method

.method public updateContent()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 82
    iget-object v0, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_Resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_DisplayValues:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-virtual {p0}, Lcom/htc/camera/menu/ListPreferenceMenuItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    iget-object v1, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_PreferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 88
    const/4 v0, -0x1

    .line 89
    iget-object v1, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_Values:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 91
    iget-object v5, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_Items:[Lcom/htc/camera/menu/MenuItem;

    aget-object v5, v5, v1

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Lcom/htc/camera/menu/MenuItem;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v5, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_Items:[Lcom/htc/camera/menu/MenuItem;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_Values:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {p0, v5, v6}, Lcom/htc/camera/menu/ListPreferenceMenuItem;->checkSubItemVisibility(Lcom/htc/camera/menu/MenuItem;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 94
    iget-object v5, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_Values:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 96
    iget-object v0, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_Items:[Lcom/htc/camera/menu/MenuItem;

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Lcom/htc/camera/menu/MenuItem;->setChecked(Z)V

    move v0, v1

    .line 101
    :goto_1
    iget-object v5, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_Items:[Lcom/htc/camera/menu/MenuItem;

    aget-object v5, v5, v1

    invoke-virtual {v5, v7}, Lcom/htc/camera/menu/MenuItem;->setVisibility(Z)V

    .line 89
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 100
    :cond_0
    iget-object v5, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_Items:[Lcom/htc/camera/menu/MenuItem;

    aget-object v5, v5, v1

    invoke-virtual {v5, v2}, Lcom/htc/camera/menu/MenuItem;->setChecked(Z)V

    goto :goto_1

    .line 105
    :cond_1
    iget-object v5, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_Items:[Lcom/htc/camera/menu/MenuItem;

    aget-object v5, v5, v1

    invoke-virtual {v5, v2}, Lcom/htc/camera/menu/MenuItem;->setChecked(Z)V

    .line 106
    iget-object v5, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_Items:[Lcom/htc/camera/menu/MenuItem;

    aget-object v5, v5, v1

    invoke-virtual {v5, v2}, Lcom/htc/camera/menu/MenuItem;->setVisibility(Z)V

    goto :goto_2

    .line 110
    :cond_2
    iget-boolean v1, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_showSummary:Z

    if-eqz v1, :cond_3

    .line 113
    if-ltz v0, :cond_4

    .line 114
    aget-object v0, v3, v0

    invoke-virtual {p0, v0}, Lcom/htc/camera/menu/ListPreferenceMenuItem;->setSummary(Ljava/lang/String;)V

    .line 130
    :cond_3
    :goto_3
    invoke-super {p0}, Lcom/htc/camera/menu/MenuItem;->updateContent()V

    .line 131
    return-void

    :cond_4
    move v0, v2

    .line 117
    :goto_4
    iget-object v1, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_Items:[Lcom/htc/camera/menu/MenuItem;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 119
    iget-object v1, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_Items:[Lcom/htc/camera/menu/MenuItem;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/camera/menu/MenuItem;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 121
    aget-object v1, v3, v0

    invoke-virtual {p0, v1}, Lcom/htc/camera/menu/ListPreferenceMenuItem;->setSummary(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/htc/camera/menu/ListPreferenceMenuItem;->m_Items:[Lcom/htc/camera/menu/MenuItem;

    aget-object v0, v1, v0

    invoke-virtual {v0, v7}, Lcom/htc/camera/menu/MenuItem;->setChecked(Z)V

    goto :goto_3

    .line 117
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method
