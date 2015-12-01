.class public Lcom/htc/lib3/media/HtcMediaRecorderUtils;
.super Ljava/lang/Object;
.source "HtcMediaRecorderUtils.java"


# direct methods
.method public static a(Landroid/media/MediaRecorder;)V
    .locals 2

    .prologue
    .line 237
    sget-object v0, Lcom/htc/lib3/media/HtcMediaRecorderUtils$HtcMediaRecorderMethods;->PRE_STOP_ZOE_RECORDING:Lcom/htc/lib3/media/HtcMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/htc/lib3/media/HtcMethod;->invokeHtcMethod(Ljava/lang/Object;Lcom/htc/lib3/media/HtcMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    return-void
.end method

.method public static a(Landroid/media/MediaRecorder;FF)V
    .locals 4

    .prologue
    .line 224
    sget-object v0, Lcom/htc/lib3/media/HtcMediaRecorderUtils$HtcMediaRecorderMethods;->SET_LOCATION_EX:Lcom/htc/lib3/media/HtcMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/htc/lib3/media/HtcMethod;->invokeHtcMethod(Ljava/lang/Object;Lcom/htc/lib3/media/HtcMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    return-void
.end method

.method public static a(Landroid/media/MediaRecorder;Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 153
    invoke-static {p1}, Lcom/htc/lib0/media/zoe/HtcZoeMetadata;->isMetadataKeyValidForInt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/htc/lib0/media/zoe/HtcZoeMetadata;->isKeyReadOnly(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_1
    sget-object v0, Lcom/htc/lib3/media/HtcMediaRecorderUtils$HtcMediaRecorderMethods;->SET_HTC_PARAMETER_INT:Lcom/htc/lib3/media/HtcMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/htc/lib3/media/HtcMethod;->invokeHtcMethod(Ljava/lang/Object;Lcom/htc/lib3/media/HtcMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    return-void
.end method

.method public static a(Landroid/media/MediaRecorder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 171
    invoke-static {p1}, Lcom/htc/lib0/media/zoe/HtcZoeMetadata;->isMetadataKeyValidForString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/htc/lib0/media/zoe/HtcZoeMetadata;->isKeyReadOnly(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_1
    sget-object v0, Lcom/htc/lib3/media/HtcMediaRecorderUtils$HtcMediaRecorderMethods;->SET_HTC_PARAMETER_STRING:Lcom/htc/lib3/media/HtcMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/htc/lib3/media/HtcMethod;->invokeHtcMethod(Ljava/lang/Object;Lcom/htc/lib3/media/HtcMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    return-void
.end method

.method public static a(Landroid/media/MediaRecorder;Ljava/lang/String;[BIIZ)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 192
    .line 193
    invoke-static {p1}, Lcom/htc/lib0/media/zoe/HtcZoeMetadata;->isKeyReadOnly(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 194
    if-eqz p5, :cond_0

    invoke-static {p1}, Lcom/htc/lib0/media/zoe/HtcZoeMetadata;->isDataKeyValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 199
    :goto_0
    if-nez v0, :cond_2

    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    if-nez p5, :cond_3

    invoke-static {p1}, Lcom/htc/lib0/media/zoe/HtcZoeMetadata;->isMetadataKeyValidForInt(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/htc/lib0/media/zoe/HtcZoeMetadata;->isMetadataKeyValidForString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v1

    .line 197
    goto :goto_0

    .line 202
    :cond_2
    sget-object v0, Lcom/htc/lib3/media/HtcMediaRecorderUtils$HtcMediaRecorderMethods;->SET_HTC_PARAMETER_BYTE_ARRAY:Lcom/htc/lib3/media/HtcMethod;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object p2, v3, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v1, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v1, 0x4

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {p0, v0, v3}, Lcom/htc/lib3/media/HtcMethod;->invokeHtcMethod(Ljava/lang/Object;Lcom/htc/lib3/media/HtcMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    return-void

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public static b(Landroid/media/MediaRecorder;)V
    .locals 2

    .prologue
    .line 247
    sget-object v0, Lcom/htc/lib3/media/HtcMediaRecorderUtils$HtcMediaRecorderMethods;->PAUSE_EX:Lcom/htc/lib3/media/HtcMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/htc/lib3/media/HtcMethod;->invokeHtcMethod(Ljava/lang/Object;Lcom/htc/lib3/media/HtcMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    return-void
.end method

.method public static c(Landroid/media/MediaRecorder;)V
    .locals 2

    .prologue
    .line 257
    sget-object v0, Lcom/htc/lib3/media/HtcMediaRecorderUtils$HtcMediaRecorderMethods;->RESUME_EX:Lcom/htc/lib3/media/HtcMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/htc/lib3/media/HtcMethod;->invokeHtcMethod(Ljava/lang/Object;Lcom/htc/lib3/media/HtcMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    return-void
.end method
