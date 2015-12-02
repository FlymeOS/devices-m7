.class public Lcom/htc/camera/wrapper/HtcWrapCamera;
.super Ljava/lang/Object;
.source "HtcWrapCamera.java"


# instance fields
.field private mHtcCallbackHandler:Lcom/htc/camera/wrapper/HtcWrapCamera$HtcCallbackHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Lcom/htc/camera/wrapper/HtcWrapCamera$HtcCallbackHandler;

    invoke-direct {v0, p0}, Lcom/htc/camera/wrapper/HtcWrapCamera$HtcCallbackHandler;-><init>(Lcom/htc/camera/wrapper/HtcWrapCamera;)V

    iput-object v0, p0, Lcom/htc/camera/wrapper/HtcWrapCamera;->mHtcCallbackHandler:Lcom/htc/camera/wrapper/HtcWrapCamera$HtcCallbackHandler;

    .line 125
    return-void
.end method


# virtual methods
.method public CastHtcFace(Landroid/hardware/Camera;Landroid/hardware/Camera$Face;)Lcom/htc/camera/wrapper/HtcWrapCamera$HtcFace;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 192
    new-instance v0, Lcom/htc/camera/wrapper/HtcWrapCamera$HtcFace;

    invoke-direct {v0}, Lcom/htc/camera/wrapper/HtcWrapCamera$HtcFace;-><init>()V

    .line 210
    :try_start_0
    const-class v2, Landroid/hardware/Camera$Face;

    const-string v3, "smile_score"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    iput v2, v0, Lcom/htc/camera/wrapper/HtcWrapCamera$HtcFace;->smile_score:I

    .line 211
    const-class v2, Landroid/hardware/Camera$Face;

    const-string v3, "smile_degree"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    iput v2, v0, Lcom/htc/camera/wrapper/HtcWrapCamera$HtcFace;->smile_degree:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    .line 231
    :goto_0
    return-object v0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v0, v1

    .line 229
    goto :goto_0

    .line 215
    :catch_1
    move-exception v0

    .line 216
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move-object v0, v1

    .line 229
    goto :goto_0

    .line 218
    :catch_2
    move-exception v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move-object v0, v1

    .line 229
    goto :goto_0

    .line 221
    :catch_3
    move-exception v0

    .line 222
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    move-object v0, v1

    .line 229
    goto :goto_0

    .line 225
    :catch_4
    move-exception v0

    .line 227
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    .line 228
    goto :goto_0
.end method

.method public setHtcCallback(Landroid/hardware/Camera;Lcom/htc/camera/wrapper/a;)V
    .locals 5

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/camera/wrapper/HtcWrapCamera;->mHtcCallbackHandler:Lcom/htc/camera/wrapper/HtcWrapCamera$HtcCallbackHandler;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/htc/camera/wrapper/HtcWrapCamera;->mHtcCallbackHandler:Lcom/htc/camera/wrapper/HtcWrapCamera$HtcCallbackHandler;

    invoke-virtual {v0, p2}, Lcom/htc/camera/wrapper/HtcWrapCamera$HtcCallbackHandler;->setHtcCallback(Lcom/htc/camera/wrapper/a;)V

    .line 137
    :cond_0
    :try_start_0
    const-string v0, "android.hardware.Camera"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_1

    .line 139
    const-string v1, "setHtcHDKCallback"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 140
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/camera/wrapper/HtcWrapCamera;->mHtcCallbackHandler:Lcom/htc/camera/wrapper/HtcWrapCamera$HtcCallbackHandler;

    invoke-virtual {v3}, Lcom/htc/camera/wrapper/HtcWrapCamera$HtcCallbackHandler;->getInstance()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_6

    .line 157
    :cond_1
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 144
    :catch_1
    move-exception v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 146
    :catch_2
    move-exception v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 148
    :catch_3
    move-exception v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 150
    :catch_4
    move-exception v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 152
    :catch_5
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 154
    :catch_6
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public setPinchZoom(Landroid/hardware/Camera;Ljava/lang/Integer;)V
    .locals 5

    .prologue
    .line 164
    :try_start_0
    const-string v0, "android.hardware.Camera"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_0

    .line 166
    const-string v1, "setPinchZoom"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 167
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_6

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 171
    :catch_1
    move-exception v0

    .line 172
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 173
    :catch_2
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 175
    :catch_3
    move-exception v0

    .line 176
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 177
    :catch_4
    move-exception v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 179
    :catch_5
    move-exception v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 181
    :catch_6
    move-exception v0

    .line 182
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method
