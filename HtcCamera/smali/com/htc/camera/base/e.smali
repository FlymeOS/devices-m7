.class public interface abstract Lcom/htc/camera/base/e;
.super Ljava/lang/Object;
.source "IPropertyOwner.java"


# virtual methods
.method public abstract addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;",
            "Lcom/htc/camera/base/f",
            "<-TTValue;>;)V"
        }
    .end annotation
.end method

.method public abstract getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;)TTValue;"
        }
    .end annotation
.end method

.method public abstract removePropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;",
            "Lcom/htc/camera/base/f",
            "<-TTValue;>;)V"
        }
    .end annotation
.end method

.method public abstract setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation
.end method
