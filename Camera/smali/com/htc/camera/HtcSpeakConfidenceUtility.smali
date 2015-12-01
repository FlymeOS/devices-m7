.class public Lcom/htc/camera/HtcSpeakConfidenceUtility;
.super Ljava/lang/Object;
.source "HtcSpeakConfidenceUtility.java"


# static fields
.field private static DEFAULT_CONFIDENCE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/16 v0, 0x23

    sput v0, Lcom/htc/camera/HtcSpeakConfidenceUtility;->DEFAULT_CONFIDENCE:I

    return-void
.end method

.method public static getConfidence(Ljava/util/Locale;)I
    .locals 4

    .prologue
    .line 41
    if-nez p0, :cond_0

    .line 43
    const-string v0, "HtcSpeakConfidenceUtility"

    const-string v1, "getConfidence fail. locale is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    sget v0, Lcom/htc/camera/HtcSpeakConfidenceUtility;->DEFAULT_CONFIDENCE:I

    .line 98
    :goto_0
    return v0

    .line 47
    :cond_0
    sget v0, Lcom/htc/camera/HtcSpeakConfidenceUtility;->DEFAULT_CONFIDENCE:I

    .line 48
    invoke-static {p0}, Lcom/htc/camera/HtcSpeakConfidenceUtility;->getLanguageFromLocale(Ljava/util/Locale;)I

    move-result v0

    .line 49
    const-string v1, "HtcSpeakConfidenceUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfidence: nLanguage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    packed-switch v0, :pswitch_data_0

    .line 93
    sget v0, Lcom/htc/camera/HtcSpeakConfidenceUtility;->DEFAULT_CONFIDENCE:I

    .line 97
    :goto_1
    const-string v1, "HtcSpeakConfidenceUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfidence: confidence = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 56
    :pswitch_0
    const/16 v0, 0x23

    .line 57
    goto :goto_1

    .line 60
    :pswitch_1
    const/16 v0, 0x29

    .line 61
    goto :goto_1

    .line 65
    :pswitch_2
    const/16 v0, 0x20

    .line 66
    goto :goto_1

    .line 69
    :pswitch_3
    const/16 v0, 0x28

    .line 70
    goto :goto_1

    .line 89
    :pswitch_4
    sget v0, Lcom/htc/camera/HtcSpeakConfidenceUtility;->DEFAULT_CONFIDENCE:I

    goto :goto_1

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private static getLanguageFromLocale(Ljava/util/Locale;)I
    .locals 8

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 104
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 105
    const-string v5, "HtcSpeakConfidenceUtility"

    const-string v6, "getLanguageFromLocale: language:%s  country:%s"

    new-array v7, v0, [Ljava/lang/Object;

    aput-object v3, v7, v2

    aput-object v4, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const-string v5, "zh"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 111
    const-string v0, "cn"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    const/4 v0, 0x5

    .line 225
    :cond_0
    :goto_0
    return v0

    .line 115
    :cond_1
    const-string v0, "hk"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    const/16 v0, 0x17

    goto :goto_0

    .line 121
    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    .line 124
    :cond_3
    const-string v5, "en"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 126
    const-string v2, "gb"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    const-string v0, "au"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 132
    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    move v0, v1

    .line 136
    goto :goto_0

    .line 139
    :cond_5
    const-string v0, "es"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 141
    const-string v0, "us"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "mx"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 143
    :cond_6
    const/4 v0, 0x7

    goto :goto_0

    .line 147
    :cond_7
    const/4 v0, 0x6

    goto :goto_0

    .line 150
    :cond_8
    const-string v0, "pt"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 152
    const-string v0, "br"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 154
    const/16 v0, 0x9

    goto :goto_0

    .line 158
    :cond_9
    const/16 v0, 0x8

    goto :goto_0

    .line 161
    :cond_a
    const-string v0, "de"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 163
    const/16 v0, 0xf

    goto :goto_0

    .line 165
    :cond_b
    const-string v0, "fr"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 167
    const-string v0, "ca"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 169
    const/16 v0, 0xb

    goto :goto_0

    .line 173
    :cond_c
    const/16 v0, 0xa

    goto :goto_0

    .line 176
    :cond_d
    const-string v0, "el"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 178
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 180
    :cond_e
    const-string v0, "it"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 182
    const/16 v0, 0x11

    goto/16 :goto_0

    .line 184
    :cond_f
    const-string v0, "fi"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 186
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 188
    :cond_10
    const-string v0, "ja"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 190
    const/16 v0, 0x12

    goto/16 :goto_0

    .line 192
    :cond_11
    const-string v0, "nl"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 194
    const/16 v0, 0xd

    goto/16 :goto_0

    .line 196
    :cond_12
    const-string v0, "da"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 198
    const/16 v0, 0xc

    goto/16 :goto_0

    .line 200
    :cond_13
    const-string v0, "pl"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 202
    const/16 v0, 0x13

    goto/16 :goto_0

    .line 204
    :cond_14
    const-string v0, "ru"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 206
    const/16 v0, 0x14

    goto/16 :goto_0

    .line 208
    :cond_15
    const-string v0, "sv"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 210
    const/16 v0, 0x15

    goto/16 :goto_0

    .line 212
    :cond_16
    const-string v0, "nb"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 214
    const/16 v0, 0x16

    goto/16 :goto_0

    .line 216
    :cond_17
    const-string v0, "tr"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 218
    const/16 v0, 0x18

    goto/16 :goto_0

    :cond_18
    move v0, v2

    .line 222
    goto/16 :goto_0
.end method
