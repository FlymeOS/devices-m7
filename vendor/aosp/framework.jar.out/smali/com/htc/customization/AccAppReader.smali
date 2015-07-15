.class public Lcom/htc/customization/AccAppReader;
.super Lcom/htc/customization/SystemReader;
.source "AccAppReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AccAppReader"


# instance fields
.field private mDefaultReader:Lcom/htc/customization/SystemReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/htc/customization/SystemReader;-><init>()V

    return-void
.end method


# virtual methods
.method public readBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 69
    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mBooleanMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    .local v0, "ret":Ljava/lang/Object;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Lcom/htc/customization/SystemReader;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Lcom/htc/customization/SystemReader;

    invoke-virtual {v1, p1, p2}, Lcom/htc/customization/SystemReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 75
    :goto_0
    return v1

    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/customization/AccAppReader;->determineReturnValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public readByte(Ljava/lang/String;B)B
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # B

    .prologue
    .line 80
    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mByteMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 81
    .local v0, "ret":Ljava/lang/Object;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Lcom/htc/customization/SystemReader;

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Lcom/htc/customization/SystemReader;

    invoke-virtual {v1, p1, p2}, Lcom/htc/customization/SystemReader;->readByte(Ljava/lang/String;B)B

    move-result v1

    .line 86
    :goto_0
    return v1

    :cond_0
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/customization/AccAppReader;->determineReturnValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    goto :goto_0
.end method

.method public readIntArray(Ljava/lang/String;[I)[I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # [I

    .prologue
    .line 91
    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mIntArrayMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 93
    .local v0, "ret":Ljava/lang/Object;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Lcom/htc/customization/SystemReader;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Lcom/htc/customization/SystemReader;

    invoke-virtual {v1, p1, p2}, Lcom/htc/customization/SystemReader;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v1

    .line 98
    .end local v0    # "ret":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 97
    .restart local v0    # "ret":Ljava/lang/Object;
    :cond_0
    check-cast v0, [Ljava/lang/Integer;

    .end local v0    # "ret":Ljava/lang/Object;
    check-cast v0, [Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/htc/customization/AccAppReader;->toPrimitive([Ljava/lang/Integer;)[I

    move-result-object v0

    .line 98
    .local v0, "ret":[I
    invoke-virtual {p0, p1, v0, p2}, Lcom/htc/customization/AccAppReader;->determineReturnValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    goto :goto_0
.end method

.method public readInteger(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 37
    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mIntMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    .local v0, "ret":Ljava/lang/Object;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Lcom/htc/customization/SystemReader;

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Lcom/htc/customization/SystemReader;

    invoke-virtual {v1, p1, p2}, Lcom/htc/customization/SystemReader;->readInteger(Ljava/lang/String;I)I

    move-result v1

    .line 43
    :goto_0
    return v1

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/customization/AccAppReader;->determineReturnValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public readNullableBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Boolean;

    .prologue
    .line 59
    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mBooleanMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    .local v0, "ret":Ljava/lang/Object;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Lcom/htc/customization/SystemReader;

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Lcom/htc/customization/SystemReader;

    invoke-virtual {v1, p1, p2}, Lcom/htc/customization/SystemReader;->readNullableBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    .line 64
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/htc/customization/AccAppReader;->determineReturnValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mStringMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 49
    .local v0, "ret":Ljava/lang/Object;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Lcom/htc/customization/SystemReader;

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Lcom/htc/customization/SystemReader;

    invoke-virtual {v1, p1, p2}, Lcom/htc/customization/SystemReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/htc/customization/AccAppReader;->determineReturnValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public readStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # [Ljava/lang/String;

    .prologue
    .line 103
    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mStringArrayMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 104
    .local v0, "ret":Ljava/lang/Object;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Lcom/htc/customization/SystemReader;

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Lcom/htc/customization/SystemReader;

    invoke-virtual {v1, p1, p2}, Lcom/htc/customization/SystemReader;->readStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 110
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/htc/customization/AccAppReader;->determineReturnValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public setDefaultReader(Lcom/htc/customization/SystemReader;)V
    .locals 0
    .param p1, "defaultReader"    # Lcom/htc/customization/SystemReader;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/htc/customization/AccAppReader;->mDefaultReader:Lcom/htc/customization/SystemReader;

    .line 33
    return-void
.end method
