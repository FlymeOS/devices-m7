.class final Lcom/htc/camera/menu/ListPreferenceValueMenuItem;
.super Lcom/htc/camera/menu/RadioButtonMenuItem;
.source "ListPreferenceValueMenuItem.java"


# instance fields
.field private final m_Owner:Lcom/htc/camera/menu/ListPreferenceMenuItem;

.field private final m_Value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/menu/ListPreferenceMenuItem;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/htc/camera/menu/RadioButtonMenuItem;-><init>(Lcom/htc/camera/HTCCamera;)V

    .line 19
    iput-object p2, p0, Lcom/htc/camera/menu/ListPreferenceValueMenuItem;->m_Owner:Lcom/htc/camera/menu/ListPreferenceMenuItem;

    .line 20
    iput-object p3, p0, Lcom/htc/camera/menu/ListPreferenceValueMenuItem;->m_Value:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method protected onClicked()Z
    .locals 2

    .prologue
    .line 29
    invoke-super {p0}, Lcom/htc/camera/menu/RadioButtonMenuItem;->onClicked()Z

    .line 30
    iget-object v0, p0, Lcom/htc/camera/menu/ListPreferenceValueMenuItem;->m_Owner:Lcom/htc/camera/menu/ListPreferenceMenuItem;

    iget-object v1, p0, Lcom/htc/camera/menu/ListPreferenceValueMenuItem;->m_Value:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/menu/ListPreferenceMenuItem;->onSubItemClicked(Lcom/htc/camera/menu/MenuItem;Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x0

    return v0
.end method
