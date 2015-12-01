.class public Lcom/htc/camera/menu/a;
.super Lcom/htc/camera/menu/ListPreferenceMenuItem;
.source "CameraStorageLocationMenuItem.java"


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;I)V
    .locals 7

    .prologue
    .line 18
    const-string v2, "pref_camera_storage_location"

    const v4, 0x7f0c0075

    const v5, 0x7f0c0074

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/menu/ListPreferenceMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;IIILjava/lang/String;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected checkSubItemVisibility(Lcom/htc/camera/menu/MenuItem;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method
