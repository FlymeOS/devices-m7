.class public Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;
.super Ljava/lang/Object;
.source "ReflectionUtil.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "ReflectionUtil"

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->mClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->mClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->mClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 38
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClassObject()Ljava/lang/Class;
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->mClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->mClass:Ljava/lang/Class;

    .line 54
    :goto_0
    return-object v0

    .line 51
    :cond_0
    const-string v0, "ReflectionUtil"

    const-string v1, "[getClassObject] no class load."

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFieldInt(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 155
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->mClass:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 156
    const-string v1, "ReflectionUtil"

    const-string v2, "[getFieldInt]There is no class loaded"

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :goto_0
    return v0

    .line 161
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->mClass:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 162
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v1

    .line 164
    const-string v2, "ReflectionUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getFieldInt]no "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " field"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 166
    :catch_1
    move-exception v1

    .line 167
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public getFieldObject(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 128
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->mClass:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 129
    const-string v1, "ReflectionUtil"

    const-string v2, "[getFieldObject] There is no class loaded"

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :goto_0
    return-object v0

    .line 134
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->mClass:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 135
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v1

    .line 137
    const-string v2, "ReflectionUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getFieldObject] no "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " field"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 139
    :catch_1
    move-exception v1

    .line 140
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public varargs invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 90
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->mClass:Ljava/lang/Class;

    if-nez v1, :cond_1

    .line 91
    const-string v1, "ReflectionUtil"

    const-string v2, "[invokeMethod] There is no class loaded"

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    :goto_0
    return-object v0

    .line 97
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->mClass:Ljava/lang/Class;

    invoke-virtual {v1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 103
    :goto_1
    if-eqz v1, :cond_0

    .line 106
    :try_start_1
    invoke-virtual {v1, p1, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v1

    .line 99
    const-string v2, "ReflectionUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " class"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move-object v1, v0

    goto :goto_1

    .line 108
    :catch_1
    move-exception v1

    .line 109
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 110
    :catch_2
    move-exception v1

    .line 111
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public loadClass(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 65
    if-eqz p1, :cond_0

    .line 68
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->mClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->mClass:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 77
    const-string v0, "ReflectionUtil"

    const-string v1, "[loadClass] Load class failed."

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :goto_1
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    const-string v1, "ReflectionUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[loadClass] no "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 79
    :cond_1
    const-string v0, "ReflectionUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[loadClass] Load class result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->mClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public release()V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/ReflectionUtil;->mClass:Ljava/lang/Class;

    .line 179
    return-void
.end method
