.class public interface abstract Lcom/htc/camera/component/IComponent;
.super Ljava/lang/Object;
.source "IComponent.java"

# interfaces
.implements Lcom/htc/camera/base/c;
.implements Lcom/htc/camera/t;


# static fields
.field public static final PROPERTY_STATE:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Lcom/htc/camera/component/IComponent$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 44
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "State"

    const-class v2, Lcom/htc/camera/component/IComponent$State;

    const-class v3, Lcom/htc/camera/component/IComponent;

    sget-object v4, Lcom/htc/camera/component/IComponent$State;->NEW:Lcom/htc/camera/component/IComponent$State;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/component/IComponent;->PROPERTY_STATE:Lcom/htc/camera/base/PropertyKey;

    return-void
.end method
