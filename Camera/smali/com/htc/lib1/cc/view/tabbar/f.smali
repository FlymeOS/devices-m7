.class public Lcom/htc/lib1/cc/view/tabbar/f;
.super Ljava/lang/Object;
.source "TabBarUtils.java"


# direct methods
.method public static a(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/d;->margin_m:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Z)I
    .locals 6

    .prologue
    const/16 v0, 0x64

    const/16 v2, 0x3a

    const/16 v3, 0x2d

    const/16 v4, 0x26

    const/16 v1, 0x54

    .line 204
    # invokes: Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->checkScreen(Landroid/content/Context;)Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;
    invoke-static {p0}, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->access$200(Landroid/content/Context;)Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;

    move-result-object v5

    iget v5, v5, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;->resolution:I

    sparse-switch v5, :sswitch_data_0

    .line 220
    if-eqz p1, :cond_e

    const/16 v0, 0x80

    :cond_0
    :goto_0
    return v0

    .line 206
    :sswitch_0
    if-eqz p1, :cond_1

    const/16 v0, 0x80

    goto :goto_0

    :cond_1
    # getter for: Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->screenInfo:Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;
    invoke-static {}, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->access$300()Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;

    move-result-object v2

    iget-boolean v2, v2, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;->portrait:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 208
    :sswitch_1
    if-eqz p1, :cond_3

    const/16 v1, 0x6a

    :cond_2
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    # getter for: Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->screenInfo:Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;
    invoke-static {}, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->access$300()Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;->portrait:Z

    if-nez v0, :cond_2

    const/16 v1, 0x46

    goto :goto_1

    .line 210
    :sswitch_2
    if-eqz p1, :cond_4

    const/16 v0, 0x5b

    goto :goto_0

    :cond_4
    # getter for: Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->screenInfo:Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;
    invoke-static {}, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->access$300()Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;->portrait:Z

    if-eqz v0, :cond_5

    const/16 v0, 0x47

    goto :goto_0

    :cond_5
    const/16 v0, 0x3c

    goto :goto_0

    .line 212
    :sswitch_3
    if-eqz p1, :cond_6

    const/16 v0, 0x48

    goto :goto_0

    :cond_6
    # getter for: Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->screenInfo:Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;
    invoke-static {}, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->access$300()Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;->portrait:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x38

    goto :goto_0

    :cond_7
    const/16 v0, 0x2f

    goto :goto_0

    .line 214
    :sswitch_4
    if-eqz p1, :cond_8

    move v0, v2

    goto :goto_0

    :cond_8
    # getter for: Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->screenInfo:Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;
    invoke-static {}, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->access$300()Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;->portrait:Z

    if-eqz v0, :cond_9

    move v0, v3

    goto :goto_0

    :cond_9
    move v0, v4

    goto :goto_0

    .line 216
    :sswitch_5
    if-eqz p1, :cond_a

    const/16 v0, 0x3f

    goto :goto_0

    :cond_a
    # getter for: Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->screenInfo:Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;
    invoke-static {}, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->access$300()Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;->portrait:Z

    if-eqz v0, :cond_b

    const/16 v0, 0x31

    goto :goto_0

    :cond_b
    const/16 v0, 0x29

    goto :goto_0

    .line 218
    :sswitch_6
    if-eqz p1, :cond_c

    :goto_2
    move v0, v2

    goto :goto_0

    :cond_c
    # getter for: Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->screenInfo:Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;
    invoke-static {}, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->access$300()Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;->portrait:Z

    if-eqz v0, :cond_d

    move v2, v3

    goto :goto_2

    :cond_d
    move v2, v4

    goto :goto_2

    .line 220
    :cond_e
    # getter for: Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->screenInfo:Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;
    invoke-static {}, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->access$300()Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;

    move-result-object v2

    iget-boolean v2, v2, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;->portrait:Z

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 204
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_5
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x5 -> :sswitch_0
        0x12 -> :sswitch_6
        0x13 -> :sswitch_4
        0x15 -> :sswitch_1
    .end sparse-switch
.end method
