.class final Lcom/htc/camera/base/BaseObject$PropertyInfo;
.super Ljava/lang/Object;
.source "BaseObject.java"


# instance fields
.field public addingChangedCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/base/f",
            "<*>;>;"
        }
    .end annotation
.end field

.field public changedCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/base/f",
            "<*>;>;"
        }
    .end annotation
.end field

.field public isRecursiveValueChange:Z

.field public logFlags:I

.field private m_PropertyValue:Ljava/lang/Object;

.field public propertyField:Ljava/lang/reflect/Field;

.field public final propertyKey:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<*>;"
        }
    .end annotation
.end field

.field public removingChangedCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/base/f",
            "<*>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/camera/base/BaseObject;

.field public valueChangingCounter:I


# direct methods
.method public constructor <init>(Lcom/htc/camera/base/BaseObject;Lcom/htc/camera/base/PropertyKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/base/PropertyKey",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p2, Lcom/htc/camera/base/PropertyKey;->defaultValue:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/camera/base/BaseObject$PropertyInfo;-><init>(Lcom/htc/camera/base/BaseObject;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/base/BaseObject;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/base/PropertyKey",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 86
    iput-object p1, p0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->this$0:Lcom/htc/camera/base/BaseObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p2, p0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->propertyKey:Lcom/htc/camera/base/PropertyKey;

    .line 88
    iput-object p3, p0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->m_PropertyValue:Ljava/lang/Object;

    .line 89
    return-void
.end method


# virtual methods
.method public final getPropertyValue()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->propertyField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->m_PropertyValue:Ljava/lang/Object;

    .line 97
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->propertyField:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->this$0:Lcom/htc/camera/base/BaseObject;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 101
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to get property from field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->propertyField:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final setPropertyValue(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->propertyField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 108
    iput-object p1, p0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->m_PropertyValue:Ljava/lang/Object;

    .line 120
    :goto_0
    return-void

    .line 113
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->propertyField:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->this$0:Lcom/htc/camera/base/BaseObject;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 117
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to set property to field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/base/BaseObject$PropertyInfo;->propertyField:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
