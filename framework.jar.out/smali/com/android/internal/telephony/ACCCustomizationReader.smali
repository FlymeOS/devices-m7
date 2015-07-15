.class public Lcom/android/internal/telephony/ACCCustomizationReader;
.super Ljava/lang/Object;
.source "ACCCustomizationReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z
    .locals 0
    .param p0, "reader"    # Lcom/htc/customization/HtcCustomizationReader;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 58
    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .end local p2    # "defaultValue":Z
    :cond_0
    return p2
.end method

.method public static readByte(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;B)B
    .locals 0
    .param p0, "reader"    # Lcom/htc/customization/HtcCustomizationReader;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # B

    .prologue
    .line 69
    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/htc/customization/HtcCustomizationReader;->readByte(Ljava/lang/String;B)B

    move-result p2

    .end local p2    # "defaultValue":B
    :cond_0
    return p2
.end method

.method public static readIntArray(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;[I)[I
    .locals 0
    .param p0, "reader"    # Lcom/htc/customization/HtcCustomizationReader;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # [I

    .prologue
    .line 80
    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/htc/customization/HtcCustomizationReader;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object p2

    .end local p2    # "defaultValue":[I
    :cond_0
    return-object p2
.end method

.method public static readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I
    .locals 0
    .param p0, "reader"    # Lcom/htc/customization/HtcCustomizationReader;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 36
    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result p2

    .end local p2    # "defaultValue":I
    :cond_0
    return p2
.end method

.method public static readString(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "reader"    # Lcom/htc/customization/HtcCustomizationReader;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 47
    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method public static readStringArray(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "reader"    # Lcom/htc/customization/HtcCustomizationReader;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # [Ljava/lang/String;

    .prologue
    .line 91
    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/htc/customization/HtcCustomizationReader;->readStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .end local p2    # "defaultValue":[Ljava/lang/String;
    :cond_0
    return-object p2
.end method
