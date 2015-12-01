.class public abstract Lcom/htc/camera/component/ComponentFactory;
.super Lcom/htc/camera/ThreadDependencyObject;
.source "ComponentFactory.java"


# instance fields
.field public final componentOwner:Lcom/htc/camera/component/au;

.field private m_ComponentBuilders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/component/at",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/htc/camera/component/au;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/htc/camera/ThreadDependencyObject;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/htc/camera/component/ComponentFactory;->componentOwner:Lcom/htc/camera/component/au;

    .line 24
    return-void
.end method

.method private createComponent(Lcom/htc/camera/component/at;[Ljava/lang/Object;[Ljava/lang/Object;)Lcom/htc/camera/component/Component;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/component/at",
            "<*>;[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/htc/camera/component/Component;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/htc/camera/component/ComponentFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating component \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/htc/camera/component/at;->getComponentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-interface {p1, p2}, Lcom/htc/camera/component/at;->isSupported([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/htc/camera/component/ComponentFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Component \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/htc/camera/component/at;->getComponentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not supported in current instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v0, 0x0

    .line 131
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1, p3}, Lcom/htc/camera/component/at;->b([Ljava/lang/Object;)Lcom/htc/camera/component/Component;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final createComponent(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)Lcom/htc/camera/component/Component;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/htc/camera/component/Component;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 77
    if-nez p1, :cond_0

    move-object v0, v1

    .line 116
    :goto_0
    return-object v0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ComponentFactory;->m_ComponentBuilders:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/htc/camera/component/ComponentFactory;->getComponentBuilders()[Lcom/htc/camera/component/at;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/htc/camera/component/ComponentFactory;->m_ComponentBuilders:Ljava/util/ArrayList;

    .line 90
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/ComponentFactory;->m_ComponentBuilders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/at;

    .line 92
    invoke-interface {v0, p1}, Lcom/htc/camera/component/at;->isSupportedComponentType(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 98
    :goto_1
    if-nez v0, :cond_3

    move-object v0, v1

    .line 99
    goto :goto_0

    .line 102
    :cond_3
    invoke-direct {p0, v0, p2, p3}, Lcom/htc/camera/component/ComponentFactory;->createComponent(Lcom/htc/camera/component/at;[Ljava/lang/Object;[Ljava/lang/Object;)Lcom/htc/camera/component/Component;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 103
    if-nez v0, :cond_4

    move-object v0, v1

    .line 104
    goto :goto_0

    .line 107
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/htc/camera/component/ComponentFactory;->componentOwner:Lcom/htc/camera/component/au;

    invoke-interface {v2}, Lcom/htc/camera/component/au;->getComponentManager()Lcom/htc/camera/component/ComponentManager;

    move-result-object v2

    .line 108
    invoke-virtual {v2, v0}, Lcom/htc/camera/component/ComponentManager;->addComponent(Lcom/htc/camera/component/Component;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    .line 113
    :goto_2
    iget-object v3, p0, Lcom/htc/camera/component/ComponentFactory;->TAG:Ljava/lang/String;

    const-string v4, "createComponent() - Error occurs. Deinitialize current component immediately if not null."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    if-eqz v2, :cond_5

    .line 115
    invoke-virtual {v2}, Lcom/htc/camera/component/Component;->release()V

    :cond_5
    move-object v0, v1

    .line 116
    goto :goto_0

    .line 111
    :catch_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method public final createComponent(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)Lcom/htc/camera/component/Component;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 32
    if-nez p1, :cond_0

    move-object v0, v1

    .line 71
    :goto_0
    return-object v0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ComponentFactory;->m_ComponentBuilders:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/htc/camera/component/ComponentFactory;->getComponentBuilders()[Lcom/htc/camera/component/at;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/htc/camera/component/ComponentFactory;->m_ComponentBuilders:Ljava/util/ArrayList;

    .line 45
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/ComponentFactory;->m_ComponentBuilders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/at;

    .line 47
    invoke-interface {v0}, Lcom/htc/camera/component/at;->getComponentName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 53
    :goto_1
    if-nez v0, :cond_3

    move-object v0, v1

    .line 54
    goto :goto_0

    .line 57
    :cond_3
    invoke-direct {p0, v0, p2, p3}, Lcom/htc/camera/component/ComponentFactory;->createComponent(Lcom/htc/camera/component/at;[Ljava/lang/Object;[Ljava/lang/Object;)Lcom/htc/camera/component/Component;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 58
    if-nez v0, :cond_4

    move-object v0, v1

    .line 59
    goto :goto_0

    .line 62
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/htc/camera/component/ComponentFactory;->componentOwner:Lcom/htc/camera/component/au;

    invoke-interface {v2}, Lcom/htc/camera/component/au;->getComponentManager()Lcom/htc/camera/component/ComponentManager;

    move-result-object v2

    .line 63
    invoke-virtual {v2, v0}, Lcom/htc/camera/component/ComponentManager;->addComponent(Lcom/htc/camera/component/Component;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    .line 68
    :goto_2
    iget-object v3, p0, Lcom/htc/camera/component/ComponentFactory;->TAG:Ljava/lang/String;

    const-string v4, "createComponent() - Error occurs. Deinitialize current component immediately if not null."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    if-eqz v2, :cond_5

    .line 70
    invoke-virtual {v2}, Lcom/htc/camera/component/Component;->release()V

    :cond_5
    move-object v0, v1

    .line 71
    goto :goto_0

    .line 66
    :catch_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method public final createComponents(Lcom/htc/camera/component/ComponentCategory;[Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 7

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/camera/component/ComponentFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createComponents("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/htc/camera/component/ComponentFactory;->m_ComponentBuilders:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/htc/camera/component/ComponentFactory;->getComponentBuilders()[Lcom/htc/camera/component/at;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/htc/camera/component/ComponentFactory;->m_ComponentBuilders:Ljava/util/ArrayList;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ComponentFactory;->componentOwner:Lcom/htc/camera/component/au;

    invoke-interface {v0}, Lcom/htc/camera/component/au;->getComponentManager()Lcom/htc/camera/component/ComponentManager;

    move-result-object v3

    .line 149
    const/4 v0, 0x0

    .line 150
    iget-object v1, p0, Lcom/htc/camera/component/ComponentFactory;->m_ComponentBuilders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/at;

    .line 153
    invoke-interface {v0}, Lcom/htc/camera/component/at;->getComponentCategory()Lcom/htc/camera/component/ComponentCategory;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 157
    const/4 v2, 0x0

    .line 160
    :try_start_0
    invoke-direct {p0, v0, p2, p3}, Lcom/htc/camera/component/ComponentFactory;->createComponent(Lcom/htc/camera/component/at;[Ljava/lang/Object;[Ljava/lang/Object;)Lcom/htc/camera/component/Component;

    move-result-object v2

    .line 161
    if-eqz v2, :cond_1

    .line 163
    invoke-virtual {v3, v2}, Lcom/htc/camera/component/ComponentManager;->addComponent(Lcom/htc/camera/component/Component;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    .line 172
    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 168
    iget-object v5, p0, Lcom/htc/camera/component/ComponentFactory;->TAG:Ljava/lang/String;

    const-string v6, "createComponents() - Error creating component"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    if-eqz v2, :cond_2

    .line 170
    invoke-virtual {v2}, Lcom/htc/camera/component/Component;->release()V

    :cond_2
    move v0, v1

    goto :goto_1

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/ComponentFactory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createComponents("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") - end"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return v1
.end method

.method protected abstract getComponentBuilders()[Lcom/htc/camera/component/at;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lcom/htc/camera/component/at",
            "<*>;"
        }
    .end annotation
.end method

.method public final isOnDemandComponent(Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 206
    if-nez p1, :cond_0

    move v0, v1

    .line 219
    :goto_0
    return v0

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ComponentFactory;->m_ComponentBuilders:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/htc/camera/component/ComponentFactory;->getComponentBuilders()[Lcom/htc/camera/component/at;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/htc/camera/component/ComponentFactory;->m_ComponentBuilders:Ljava/util/ArrayList;

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ComponentFactory;->m_ComponentBuilders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/at;

    .line 216
    invoke-interface {v0, p1}, Lcom/htc/camera/component/at;->isSupportedComponentType(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Lcom/htc/camera/component/at;->getComponentCategory()Lcom/htc/camera/component/ComponentCategory;

    move-result-object v0

    sget-object v3, Lcom/htc/camera/component/ComponentCategory;->OnDemand:Lcom/htc/camera/component/ComponentCategory;

    if-ne v0, v3, :cond_2

    .line 217
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 219
    goto :goto_0
.end method

.method public final isOnDemandComponent(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 188
    if-nez p1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v1

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ComponentFactory;->m_ComponentBuilders:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/htc/camera/component/ComponentFactory;->getComponentBuilders()[Lcom/htc/camera/component/at;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/htc/camera/component/ComponentFactory;->m_ComponentBuilders:Ljava/util/ArrayList;

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/ComponentFactory;->m_ComponentBuilders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/at;

    .line 198
    invoke-interface {v0}, Lcom/htc/camera/component/at;->getComponentName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 199
    invoke-interface {v0}, Lcom/htc/camera/component/at;->getComponentCategory()Lcom/htc/camera/component/ComponentCategory;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/component/ComponentCategory;->OnDemand:Lcom/htc/camera/component/ComponentCategory;

    if-ne v0, v2, :cond_4

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method
