.class public Lcom/htc/camera/base/PropertyChangeEventArgs;
.super Lcom/htc/camera/base/EventArgs;
.source "PropertyChangeEventArgs.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TValue:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/htc/camera/base/EventArgs;"
    }
.end annotation


# instance fields
.field public final newValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTValue;"
        }
    .end annotation
.end field

.field public final oldValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTValue;"
        }
    .end annotation
.end field

.field public final propertyKey:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;TTValue;TTValue;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/htc/camera/base/EventArgs;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/htc/camera/base/PropertyChangeEventArgs;->propertyKey:Lcom/htc/camera/base/PropertyKey;

    .line 31
    iput-object p2, p0, Lcom/htc/camera/base/PropertyChangeEventArgs;->oldValue:Ljava/lang/Object;

    .line 32
    iput-object p3, p0, Lcom/htc/camera/base/PropertyChangeEventArgs;->newValue:Ljava/lang/Object;

    .line 33
    return-void
.end method
