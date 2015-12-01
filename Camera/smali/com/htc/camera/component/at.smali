.class public interface abstract Lcom/htc/camera/component/at;
.super Ljava/lang/Object;
.source "IComponentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TComponent:",
        "Lcom/htc/camera/component/Component;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public varargs abstract b([Ljava/lang/Object;)Lcom/htc/camera/component/Component;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TTComponent;"
        }
    .end annotation
.end method

.method public abstract getComponentCategory()Lcom/htc/camera/component/ComponentCategory;
.end method

.method public abstract getComponentName()Ljava/lang/String;
.end method

.method public varargs abstract isSupported([Ljava/lang/Object;)Z
.end method

.method public abstract isSupportedComponentType(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation
.end method
