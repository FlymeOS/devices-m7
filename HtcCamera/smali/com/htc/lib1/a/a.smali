.class public Lcom/htc/lib1/a/a;
.super Ljava/lang/Object;
.source "ContactsUtil.java"


# direct methods
.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const-string v0, ""

    .line 100
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    packed-switch p1, :pswitch_data_0

    .line 94
    :goto_1
    if-lez v0, :cond_1

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 32
    :pswitch_0
    sget v0, Lcom/htc/lib1/a/c;->phone_type_home_short:I

    goto :goto_1

    .line 37
    :pswitch_1
    sget v0, Lcom/htc/lib1/a/c;->phone_type_mobile_short:I

    goto :goto_1

    .line 42
    :pswitch_2
    sget v0, Lcom/htc/lib1/a/c;->phone_type_work_short:I

    goto :goto_1

    .line 48
    :pswitch_3
    sget v0, Lcom/htc/lib1/a/c;->phone_type_fax_short:I

    goto :goto_1

    .line 53
    :pswitch_4
    sget v0, Lcom/htc/lib1/a/c;->phone_type_pager_short:I

    goto :goto_1

    .line 57
    :pswitch_5
    sget v0, Lcom/htc/lib1/a/c;->phone_type_other_short:I

    goto :goto_1

    .line 60
    :pswitch_6
    sget v0, Lcom/htc/lib1/a/c;->phone_type_callback_short:I

    goto :goto_1

    .line 63
    :pswitch_7
    sget v0, Lcom/htc/lib1/a/c;->phone_type_car_short:I

    goto :goto_1

    .line 66
    :pswitch_8
    sget v0, Lcom/htc/lib1/a/c;->phone_type_isdn_short:I

    goto :goto_1

    .line 69
    :pswitch_9
    sget v0, Lcom/htc/lib1/a/c;->phone_type_main_short:I

    goto :goto_1

    .line 72
    :pswitch_a
    sget v0, Lcom/htc/lib1/a/c;->phone_type_radio_short:I

    goto :goto_1

    .line 75
    :pswitch_b
    sget v0, Lcom/htc/lib1/a/c;->phone_type_telex_short:I

    goto :goto_1

    .line 78
    :pswitch_c
    sget v0, Lcom/htc/lib1/a/c;->phone_type_tty_tdd_short:I

    goto :goto_1

    .line 81
    :pswitch_d
    sget v0, Lcom/htc/lib1/a/c;->phone_type_assistant_short:I

    goto :goto_1

    .line 84
    :pswitch_e
    sget v0, Lcom/htc/lib1/a/c;->phone_type_mms_short:I

    goto :goto_1

    .line 88
    :pswitch_f
    sget v0, Lcom/htc/lib1/a/c;->phone_type_custom_short:I

    goto :goto_1

    .line 98
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_1
        :pswitch_4
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
